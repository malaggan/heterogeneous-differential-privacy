// Implementing: Voulgaris, S., & Van Steen, M. (2005). Epidemic-style management of semantic overlays for content-based searching. In Euro-Par 2005 Parallel Processing (pp. 1143-1152). Springer Berlin Heidelberg. (DOI: 10.1007/11549468_125)
#include "vicinity.hh"
#include "privacy.hh" // TODO: a better name is "similarity"
#include "priority_queue.hh"

#define UNUSED(x)
void vicinity::receive_gossip(
	view_t to_be_received,
	view_t UNUSED(was_sent)) {
#undef UNUSED
	// this is items to keep after receive
	// Keep the viewSize items of nodes that are semantically closest, out of items in its current view, items received, and items in the local CYCLON view.
	// In case of multiple items from the same node, keep the one with the most recent timestamp

	// 6. Discard entries pointing at me and entries already contained in my view (discarded automatically by `set').

	// keep only top `viewSize' (in terms of similarity to *this).
	view.clear_and_assign(
		priority_queue<ventry, viewSize, semantic_comp<vicinity,ventry>>{view, this}
		.push_all(cyclon::view)
		.push_all(to_be_received.remove(id)));
	// duplicates are removed, keeping oldest timestamp.

	print_view();
}

void vicinity::do_gossip() {
		cyclon::do_gossip();
	view_t to_send;
	vicinity *target;
	std::tie(target, to_send) = send_gossip();

	view_t to_receive;
	std::tie(std::ignore, to_receive) = target->send_gossip(some(id));

	receive_gossip(to_receive, to_send);
	target->receive_gossip(to_send, to_receive);
}

auto vicinity::send_gossip(maybe<user_id_t> dest_opt) const -> std::tuple<vicinity*, view_t> {
	// send to peer with oldest time stamp
	// AGGRESSIVELY BIASED:
	// Select the viewSize/2 items of nodes semantically closest to the selected peer
	//   from the VICINITY view and the CYCLON view

	return std::make_tuple(
		dynamic_cast<vicinity*>(
			all_peers[
				dest_opt
				.value_or(
					view.get_oldest_peer()
					.self_or(
						cyclon::view.get_oldest_peer()/*fixme: wasted cycles as not lazy*/)
					.value()->id)]),
		view_t{}
		.clear_and_assign(
			priority_queue<ventry, viewSize/2, semantic_comp<vicinity,ventry>>{view, this}
			.push_all(cyclon::view)));
}
