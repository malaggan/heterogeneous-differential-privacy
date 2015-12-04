# gossple
Implementation of the Gossple protocol.

## Acknowledgments
This is an implementation of the Gossple protocol due to Bertier, M., Frey, D., Guerraoui, R., Kermarrec, A-.M., Leroy, V., [The Gossple Anonymous Social Network](http://dx.doi.org/10.1007/978-3-642-16955-7_10), Middleware 2010, Volume 6452 of the series Lecture Notes in Computer Science pp 191--211.

## Specifics
However, this implementation is specific to the application of [Heterogeneous Differential Privacy](http://arxiv.org/abs/1504.06998) and thus may not implement features specific to Gossple, such as tag expansion.

In particular, we implement Cyclon and Vicinty as an overlay peer-to-peer network:

  * Voulgaris, S., Gavidia, D., & Van Steen, M. (2005). [Cyclon: Inexpensive membership management for unstructured p2p overlays](http://dx.doi.org/10.1007/s10922-005-4441-x). Journal of Network and Systems Management, 13(2), 197--217.
  * Voulgaris, S., & Van Steen, M. (2005). [Epidemic-style management of semantic overlays for content-based searching](http://dx.doi.org/10.1007/11549468_125). In Euro-Par 2005 Parallel Processing (pp. 1143--1152). Springer Berlin Heidelberg.

## Be careful!
We simulate a cycle-based peer-to-peer network, for experimental evaluation purposes, rather than for deployment purposes. For this implementation to provide differential privacy as intended, a cryptographic protocol must be put in place as the third chapter of my PhD [thesis](http://www.theses.fr/2013REN1S154) explains.
