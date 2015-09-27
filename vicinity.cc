// Implementing: Voulgaris, S., & Van Steen, M. (2005). Epidemic-style management of semantic overlays for content-based searching. In Euro-Par 2005 Parallel Processing (pp. 1143-1152). Springer Berlin Heidelberg. (DOI: 10.1007/11549468_125)
#include "vicinity.hh"
#include "privacy.hh" // TODO: a better name is "similarity"
#include "priority_queue.hh"

#define UNUSED(x)
template<typename RPS>
void vicinity<RPS>::receive_gossip(
	view_t to_be_received,
	view_t UNUSED(was_sent)) {
#undef UNUSED
	// this is items to keep after receive
	// Keep the viewSize items of nodes that are semantically closest, out of items in its current view, items received, and items in the local CYCLON view.
	// In case of multiple items from the same node, keep the one with the most recent timestamp

	// 6. Discard entries pointing at me and entries already contained in my view (discarded automatically by `set').

	// keep only top `viewSize' (in terms of similarity to *this).
	view.clear_and_assign(
		priority_queue<ventry_t, viewSize, semantic_comp<vicinity<RPS>,ventry_t>>{view, this}
		.push_all(RPS::view)
		.push_all(to_be_received.remove(RPS::id)));

	// TODO: FIXME: should have removed duplicates, keeping oldest timestamp.
}

template <typename RPS>
void vicinity<RPS>::do_gossip() {
	view_t to_send;
	vicinity<RPS> *target;
	std::tie(target, to_send) = send_gossip();

	view_t to_receive;
	std::tie(std::ignore, to_receive) = target->send_gossip(some(RPS::id));

	receive_gossip(to_receive, to_send);
	target->receive_gossip(to_send, to_receive);
}

template<typename RPS>
auto vicinity<RPS>::send_gossip(option<user_id_t> dest_opt) const -> std::tuple<vicinity<RPS>*, view_t> {
	// send to peer with oldest time stamp
	// AGGRESSIVELY BIASED:
	// Select the viewSize/2 items of nodes semantically closest to the selected peer
	//   from the VICINITY view and the CYCLON view

	return std::make_tuple(
		dynamic_cast<vicinity<RPS>*>(
			RPS::all_peers[
				dest_opt
				.value_or(
					view.get_oldest_peer()
					.self_or(
						RPS::view.get_oldest_peer()/*fixme: wasted cycles as not lazy*/)
					.value()->id)]),
		view_t{}
		.clear_and_assign(
			priority_queue<ventry_t, viewSize/2, semantic_comp<vicinity<RPS>,ventry_t>>{view, this}
			.push_all(RPS::view)));
}



// explicit instantiation
#include "cyclon.hh"
template void vicinity<cyclon>::do_gossip();
