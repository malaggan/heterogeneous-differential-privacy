// Implementing: Voulgaris, S., & Van Steen, M. (2005). Epidemic-style management of semantic overlays for content-based searching. In Euro-Par 2005 Parallel Processing (pp. 1143-1152). Springer Berlin Heidelberg. (DOI: 10.1007/11549468_125)
#include "abstract_user.hh"
#include "privacy.hh" // TODO: a better name is "similarity"
#include "priority_queue.hh"

#define UNUSED(x)
void user::vicinity_receive_gossip (
	view_t to_be_received,
	view_t UNUSED(was_sent)) {
#undef UNUSED
	// this is items to keep after receive
	// Keep the viewSize items of nodes that are semantically closest, out of items in its current view, items received, and items in the local CYCLON view.
	// In case of multiple items from the same node, keep the one with the most recent timestamp

	// 6. Discard entries pointing at me and entries already contained in my view (discarded automatically by `set').

	// keep only top `viewSize' (in terms of similarity to *this).
	vicinity_view.clear_and_assign(
		priority_queue<ventry, viewSize, semantic_comp>{vicinity_view, this}
		.push_all(cyclon_view)
		.push_all(to_be_received.remove(id)));
	// duplicates are removed, keeping oldest timestamp.

	//vicinity_print_view();
}

void user::vicinity_do_gossip() {
	cyclon_do_gossip();
	view_t to_send;
	user *target;
	std::tie(target, to_send) = vicinity_send_gossip();

	view_t to_receive;
	std::tie(std::ignore, to_receive) = target->vicinity_send_gossip(some(id));

	vicinity_receive_gossip(to_receive, to_send);
	target->vicinity_receive_gossip(to_send, to_receive);
}

auto user::vicinity_send_gossip(maybe<user_id_t> dest_opt) -> std::tuple<user*, view_t> {
	// send to peer with oldest time stamp
	// AGGRESSIVELY BIASED:
	// Select the viewSize/2 items of nodes semantically closest to the selected peer
	//   from the VICINITY view and the CYCLON view
	user_id_t p;
	if(dest_opt) p = dest_opt.value();
	else {
		auto oldest_vicinity_peer = vicinity_view.get_oldest_peer();
		if(oldest_vicinity_peer) p = oldest_vicinity_peer.value()->id;
		else {
			auto oldest_cyclon_peer = cyclon_view.get_oldest_peer();
			if(oldest_cyclon_peer) p = oldest_cyclon_peer.value()->id;
			else assert(false);
		}
	}
//	all_peers[
//		dest_opt
//		.value_or(
//			vicinity_view.get_oldest_peer()
//			.self_or(
//				cyclon_view.get_oldest_peer()/*fixme: wasted cycles as not lazy*/)
//			.value()->id)],
	return std::make_tuple(
		all_peers[p],
		view_t{}
		.clear_and_assign(
			priority_queue<ventry, viewSize/2, semantic_comp>{vicinity_view,  this}
			.push_all(cyclon_view)));
}


std::string user::cls() const {
	switch(prv_cls) {
	case privacy_class::BLIND:            return "BLIND";
	case privacy_class::CONCERNED:					 return "CONCERNED";
	case privacy_class::NORMAL:							 return "NORMAL";
	case privacy_class::NAIVE:               return "NAIVE";
	case privacy_class::UNCONCERNED:				 return "UNCONCERNED";
	case privacy_class::SLICES:              return "SLICES";
	case privacy_class::BASELINE:            return "BASELINE";
	default : assert(false);
	}
}
