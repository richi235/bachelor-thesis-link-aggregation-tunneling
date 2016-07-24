# My Bachelor Thesis on Link Aggregation Tunneling
 * [Full Sources](main_thesis.tm)
 * [the official pdf](https://github.com/richi235/bachelor-thesis-link-aggregation-tunneling/raw/master/main_thesis.pdf) (with complete xref table of content bookmarks for navigation)
 * a [html version](https://richi235.github.io/bachelor-thesis-link-aggregation-tunneling/)
 * [Experiment Results](Anhang_CD_Daten/Experimente)
 * And [instructions for reproducing the experiments](Anhang_CD_Daten/Experimente)


## Abstract

This work covers the following two subjects:

### Focus 1: Link Aggregation Tunneling: Concept, Implementation and Evaluation

 * In short and colloquial terms this is a technology for better internet.
 * More precisely we evaluate, test and explain a concept and an implementation of a software which aims to provide a more reliable and faster internet connection. 
 * The concept is called "OSI Layer 3 Link Aggregation Tunneling" (OL3LAT).
 * The implementation we are testing and explaining is called "Multipath VPN". 
 * OL3LAT means aggregating several maybe slow or unreliable internet connections together to one fast reliable virtual internet connection.

### Focus 2: TCP and Packet Reordering

 * Since Link Aggregation Tunneling caused heavy packet reordering in all Experiments, we gave this a closer look.
 * Packet reordering is quite hazardous for TCP throughput and connection smoothness. 
 * As part of the second topic we found answers to:
   * Why does "Multipath VPN" create such heavy packet reordering
   * Is it avoidable?
   * Why is TCP so vulnerable to packet reordering?
   * What are the possibilities to make TCP more resistant to packet reordering and how effective are they (most of the experiments of the second experiment series.


## Aftermath

I used some of the findings of this work to create an improved fork of the examined implementation "Multipath VPN".
This includes:
 * More performance (since CPU time was the throughput-bottleneck in most experiments)
 * Code cleanup and documentation
 * A possibility to partially reduce the packet reordering, by changing the uplink selection algorithm. Now an admin has more control over the how subsequent packets are distributed over the different uplinks.
   

You can find my fork at: https://github.com/richi235/Reinhard-VPN/tree/master
