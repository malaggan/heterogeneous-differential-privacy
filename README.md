# gossple
Implementation of the Gossple protocol.

This is an implementation of the Gossple protocol due to Anne-Marie Kermarrec at al. http://dx.doi.org/10.1007/978-3-642-05118-0_1 .

However, this implementation is specific to the application of differential privacy and thus may not implement features specific to Gossple, such as tag expansion. 

In particular, we implement Cyclon and Vicinty as an overlay peer-to-peer network:
1- Voulgaris, S., Gavidia, D., & Van Steen, M. (2005). Cyclon: Inexpensive membership management for unstructured p2p overlays. Journal of Network and Systems Management, 13(2), 197-217. (DOI: 10.1007/s10922-005-4441-x)
2- Voulgaris, S., & Van Steen, M. (2005). Epidemic-style management of semantic overlays for content-based searching. In Euro-Par 2005 Parallel Processing (pp. 1143-1152). Springer Berlin Heidelberg. (DOI: 10.1007/11549468_125)

We simulate a cycle-based peer-to-peer network, for experimental evaluation purposes, rather than for deployment purposes. For this implementation to provide differential privacy as intended, a cryptographic protocol must be put in place as the first chapter of my PhD thesis explains (http://www.theses.fr/2013REN1S154).

