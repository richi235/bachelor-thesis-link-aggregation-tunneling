<TeXmacs|1.99.3>

<style|<tuple|book|british|hanging-theorems>>

<\body>
  <\hide-preamble>
    \;

    <assign|framed|<\macro|body>
      <padded|<wide-std-framed|<arg|body>>>
    </macro>>\ 

    \;

    <assign|definition|<\macro|body>
      <surround|<compound|next-definition>||<compound|render-theorem|<with|color|blue|<compound|definition-numbered|<compound|definition-text>|<compound|the-definition>>>|<arg|body>>>
    </macro>>

    <assign|example|<\macro|body>
      <surround|<compound|next-example>||<compound|render-remark|<with|color|green|<compound|example-numbered|<compound|example-text>|<compound|the-example>>>|<arg|body>>>
    </macro>>

    <assign|bib-list|<\macro|largest|body>
      <\with|bibitem-width|<minimum|<box-info|<transform-bibitem|<arg|largest>
      >|w.>|3em>|item-hsep|<value|bibitem-hsep>|bibitem-nr|0|par-flexibility|2.0>
        <\description>
          <arg|body>
        </description>
      </with>
    </macro>>

    <assign|std-env-group|<tuple|theorem-env|exercise-env|algorithm-env|figure-env|equation|footnote>>

    <assign|remark-sep|<macro|<enunciation-sep>>>

    <assign|note-text|<macro|<with|color|red|<localize|Note>>>>

    <assign|remark-text|<macro|<localize|Remark>>>

    <assign|remark|<\macro|body>
      <surround|<compound|next-remark>||<compound|render-remark|<with|color|red|<compound|remark-numbered|<compound|remark-text>|<compound|the-remark>>>|<arg|body>>>
    </macro>>
  </hide-preamble>

  <\doc-data|<doc-title|Evaluation of an Approach for OSI Layer 3 Link
  Aggregation Tunneling>|<\doc-subtitle>
    \;

    Discussion of Design, an Implementation\ 

    and the Results of several Experiments\ 

    in different Network Environments

    \;
  </doc-subtitle>|<doc-author|<\author-data|<author-name|Richard Sailer>>
    \;
  <|author-data>
    \;
  </author-data>>|<\doc-misc>
    Universität Augsburg

    Lehrstuhl für Organic Computing

    Bachelorarbeit im Studiengang Informatik

    \;

    \;

    \;

    \;

    \;

    \;

    \;

    Copyright <copyright> 2016 Richard Sailer

    Permission is granted to copy, distribute and/or modify this document
    under the terms of the <em|GNU Free Documentation License> (GFDL),\ 

    Version 1.3
  </doc-misc>>
    \;
  <|doc-data>
    \;

    \;
  <|doc-data>
    \;
  </doc-data>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Introduction>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>OSI
    Layer 3 Link Aggregation Tunneling> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    A Description of a OSI Layer 3 Link Aggregation Tunneling Network Setup
    and its Purpose <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>

    <with|par-left|1tab|1<space|2spc>OSI Layer 3 Link Aggregation Tunneling
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|2tab|1.1<space|2spc>Mechanics
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|2<space|2spc>Purpose
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    Implementations <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>

    <with|par-left|1tab|1<space|2spc>Multipath VPN
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|2<space|2spc>MLVPN
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|3<space|2spc>Viprinet Bonding
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|2tab|3.1<space|2spc>Network Architecture (Fig. 1)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>>

    <with|par-left|2tab|3.2<space|2spc>Encapsulation (Fig. 2)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14>>

    Related technologies <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15>

    <with|par-left|1tab|1<space|2spc>Multipath TCP
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16>>

    <with|par-left|1tab|2<space|2spc>SCTP Multihoming
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-18>>

    <with|par-left|2tab|2.1<space|2spc>SCTP Problems and Drawbacks
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-19>>

    <with|par-left|2tab|2.2<space|2spc>Conclusion
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-20>>

    <with|par-left|1tab|3<space|2spc>Internet-Connection-Load-balancing
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-21>>

    <with|par-left|2tab|3.1<space|2spc>Comparison to OSI Layer 3 Link
    Aggregation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-22>>

    <with|par-left|4tab|Advantages <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-23><vspace|0.15fn>>

    <with|par-left|4tab|Disadvantages <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-24><vspace|0.15fn>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc>First
    Explorative Experiments> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-25><vspace|0.5fn>

    3.1<space|2spc>The Testing Network <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-26>

    <with|par-left|1tab|3.1.1<space|2spc>Network Architecture and Overview
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-27>>

    <with|par-left|1tab|3.1.2<space|2spc>Used Hardware
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-29>>

    <with|par-left|1tab|3.1.3<space|2spc>Software Configurations
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-31>>

    <with|par-left|2tab|3.1.3.1<space|2spc>Artificial Latency
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-32>>

    <with|par-left|2tab|3.1.3.2<space|2spc>Setup of the Multipath VPN
    Software <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-34>>

    3.2<space|2spc>Results <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-35>

    <with|par-left|1tab|3.2.1<space|2spc>Default Linux Congestion Control:
    Same Latency <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-36>>

    <with|par-left|1tab|3.2.2<space|2spc> Default Linux Congestion Control,
    100ms and 200ms Latency <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-40>>

    <with|par-left|2tab|3.2.2.1<space|2spc>Throughput Analysis
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-42>>

    <with|par-left|2tab|3.2.2.2<space|2spc>Reordering Analysis
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-43>>

    <with|par-left|1tab|3.2.3<space|2spc>Summary and Next Steps
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-44>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4<space|2spc>The
    TCP Protocol and its Vulnerability to Packet Reordering>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-45><vspace|0.5fn>

    4.1<space|2spc>A Short Description of the TCP Protocol
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-46>

    <with|par-left|1tab|4.1.1<space|2spc>Reliability
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-48>>

    <with|par-left|1tab|4.1.2<space|2spc>Flow Control and Congestion Control
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-49>>

    <with|par-left|2tab|4.1.2.1<space|2spc>The Sliding Window
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-50>>

    <with|par-left|2tab|4.1.2.2<space|2spc>The Size of the Sliding Windows
    (Congestion Control and Flow Control)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-52>>

    <with|par-left|1tab|4.1.3<space|2spc>TCP Extensions: Fast Retransmit
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-53>>

    <with|par-left|2tab|4.1.3.1<space|2spc>Changes on Receiver Site
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-54>>

    <with|par-left|2tab|4.1.3.2<space|2spc>Changes on Sender Site
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-55>>

    <with|par-left|2tab|4.1.3.3<space|2spc>Discussion of Advantages and
    Disadvantages <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-58>>

    4.2<space|2spc>Ways to Make the Linux TCP Implementation Less Vulnerable
    to Packet Reordering <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-59>

    <with|par-left|1tab|4.2.1<space|2spc>Configuration via
    <with|font-family|tt|language|verbatim|/proc/sys/net/> Switches
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-60>>

    <with|par-left|1tab|4.2.2<space|2spc>A New TCP for Persistent Packet
    Reordering <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-61>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5<space|2spc>A
    Closer Analysis of the Multipath VPN Implementation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-62><vspace|0.5fn>

    5.1<space|2spc>Involved Networking Resources
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-63>

    5.2<space|2spc>The Event Driven Design
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-69>

    <with|par-left|1tab|5.2.1<space|2spc>The Perl POE Framework
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-70>>

    5.3<space|2spc>Working <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-71>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6<space|2spc>Seeking
    the Cause of Reordering> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-72><vspace|0.5fn>

    6.1<space|2spc>Multipath VPN Implementation
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-73>

    6.2<space|2spc>Linux IO Buffering and Scheduling
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-74>

    <with|par-left|1tab|6.2.1<space|2spc>Avoidability of Operating System
    Buffering induced Reordering <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-75>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7<space|2spc>Refined
    Experiments> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-76><vspace|0.5fn>

    7.1<space|2spc>Test Setup and Hardware
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-77>

    <with|par-left|1tab|7.1.1<space|2spc>Differences to First Explorative
    Experiments <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-80>>

    <with|par-left|2tab|7.1.1.1<space|2spc>Omitted \PInternet\Q Gateway
    Routers IG0 and IG1 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-81>>

    <with|par-left|2tab|7.1.1.2<space|2spc>VLANs Instead of Physical Networks
    and Ethernet Cards <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-82>>

    <with|par-left|4tab|Tagged VLANs Explanation and Configuration Details
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-83><vspace|0.15fn>>

    <with|par-left|4tab|Throughput or Performance Impacts
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-84><vspace|0.15fn>>

    <with|par-left|2tab|7.1.1.3<space|2spc>More Capable Hardware for MTC and
    MTS <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-85>>

    <with|par-left|1tab|7.1.2<space|2spc>About the Traffic Used to Measure
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-86>>

    7.2<space|2spc>Pre Measurements <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-87>

    <with|par-left|1tab|7.2.1<space|2spc>Pre-Measurement without Tunneling
    Daemon, 1 Link <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-88>>

    <with|par-left|1tab|7.2.2<space|2spc>Pre-Measurement without Tunneling
    Daemon, 2 Links <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-90>>

    <with|par-left|1tab|7.2.3<space|2spc>Pre-Measurement Multipath-vpn, 2
    Links, without tcpdump <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-92>>

    7.3<space|2spc>Results on CPU Performance (I)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-94>

    <with|par-left|1tab|7.3.1<space|2spc>Comparison of CPU Time Usage on MTC
    and on MTS (I) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-95>>

    <with|par-left|2tab|7.3.1.1<space|2spc>Goals
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-96>>

    <with|par-left|2tab|7.3.1.2<space|2spc>What we Did
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-97>>

    <with|par-left|2tab|7.3.1.3<space|2spc>Results and Interpretation
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-98>>

    <with|par-left|1tab|7.3.2<space|2spc>Correlation between Throughput and
    CPU Time (II) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-100>>

    <with|par-left|2tab|7.3.2.1<space|2spc>Goals
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-101>>

    <with|par-left|2tab|7.3.2.2<space|2spc>What we Did
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-102>>

    <with|par-left|2tab|7.3.2.3<space|2spc>Results and Interpretation
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-103>>

    <with|par-left|1tab|7.3.3<space|2spc>Differentiated CPU Usage Analysis
    (III) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-105>>

    <with|par-left|2tab|7.3.3.1<space|2spc>Goals
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-106>>

    <with|par-left|2tab|7.3.3.2<space|2spc>What we Did
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-107>>

    <with|par-left|2tab|7.3.3.3<space|2spc>Results and Interpretation
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-108>>

    7.4<space|2spc>Results on Connection Stability (II)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-110>

    <with|par-left|1tab|7.4.1<space|2spc>Goals
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-111>>

    <with|par-left|1tab|7.4.2<space|2spc>What we did
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-112>>

    <with|par-left|1tab|7.4.3<space|2spc>Results
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-113>>

    <with|par-left|1tab|7.4.4<space|2spc>Evaluation and Interpretation
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-115>>

    7.5<space|2spc>Results of Changing Linux Internal TCP Options (III)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-116>

    <with|par-left|1tab|7.5.1<space|2spc>Goals
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-117>>

    <with|par-left|1tab|7.5.2<space|2spc>What we did
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-118>>

    <with|par-left|2tab|7.5.2.1<space|2spc>Series 1: Only Changing Sender TCP
    Configuration <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-119>>

    <with|par-left|2tab|7.5.2.2<space|2spc>Series 2: Changing Sender and
    Receiver Configuration <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-120>>

    <with|par-left|1tab|7.5.3<space|2spc>Results and Interpretation
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-121>>

    <with|par-left|2tab|7.5.3.1<space|2spc>Explanation
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-126>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|8<space|2spc>Conclusion>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-127><vspace|0.5fn>

    8.1<space|2spc>Evaluation Summary and Optimisation Possibilities
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-128>

    8.2<space|2spc>About the Application Domain
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-129>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendix
    A<space|2spc>Detailed Performance Measurement Results>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-130><vspace|0.5fn>

    A.1<space|2spc>MTS: 100ms_200ms latency
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-131>

    A.2<space|2spc>MTC: 100ms_200ms latency
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-132>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendix
    B<space|2spc>Perl POE Framework Example>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-133><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendix
    C<space|2spc>Content of the Accompanying Disk>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-134><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendix
    D<space|2spc>Acknowledgements> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-135><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Bibliography>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-136><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|List of
    figures> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-137><vspace|0.5fn>
  </table-of-contents>

  <chapter|Introduction>

  In short and colloquial terms this work is about better internet. More
  precisely we evaluate, test and explain a concept and an implementation of
  a software which aims to provide a more reliable and faster internet
  connection. The concept is called \POSI Layer 3 Link Aggregation
  Tunneling\Q(OL3LAT) . The implementation we are testing and explaining is
  called \PMultipath VPN\Q. OL3LAT works by aggregating several maybe slow or
  unreliable internet connections together to one fast reliable virtual
  internet connection.

  This work begins with a concept chapter, describing the general concept of
  OL3LAT and how it works in general. We explain a example network
  architecture which (in slightly changed form) will be used for all
  experiments in the later chapters. Following we will propose several
  implementations, two open source ones and one commercial. In a last part we
  will explain related technologies like load balancing and Multipath TCP and
  what distinguishes them from OL3LAT.

  The next chapter contains two Explorative experiments carried out with
  Multipath VPN to get a survey and feeling for it's performance, it's
  working and issues. Here we see that it's quite CPU time consuming and
  produces heavy packet reordering which makes congestion controlling
  difficult for TCP.

  In the following TCP background chapter we explain how TCP works and why
  packet reordering is critical for its performance. Also we present two ways
  to make Linux TCP less vulnerable to packet reordering, which will be
  tested in a later chapter.

  The next chapter will describe the implementation of Multipath VPN more
  closely. We explain the networking resources it uses: a TUN interface and
  UDP sockets and what they do. Also a more detailed description of the
  packet processing mechanics is provided.

  In the next chapter we get to the nub of the observed packet reordering. In
  the explorative experiments chapter we had eliminated different latencies
  as the cause of reordering. In the Multipath VPN implementation chapter we
  had eliminated Multipath VPN as guiltier. So there remains: the operating
  systems. With the help of several Linux kernel development books we will
  prove that the kernel does packet buffering before sending in a way a user
  space process can not control. So finally a user space process has no
  definitive control over the point in time when a packet gets set on the
  medium. That means that the buffer of one uplink interface can decide to
  buffer several packets whereas the other has buffered (let's say ten)
  packets and now send all of them at once. This causes reordering. In a last
  section we look for ways to force the immediate sending of a packet. The
  answer of a Linux kernel developer and maintainer to exactly this question
  then gives the underwhelming result: it's almost impossible. Avoiding
  operating system buffering induced reordering would mean intricately
  additional software development work in kernel space.

  In the penultimate chapter we present several refined experiments, whose
  design and structure contains the findings (and new questions) of the
  previous chapters. After a description of the hardware used and the design
  of the experiments we show the results of some pretests. The next sections
  belong to the results of the main experiments. Several experiments are done
  on performance, among others the connection between throughput and CPU time
  usage and a closer observation of the ratio between <em|system-time> and
  <em|user-time> of the needed CPU time. Surprisingly very much time is spent
  in user space. The next block of experiments will cover the connection
  failure tolerance of Multipath VPN. \PWhat happens if one of the internet
  connections goes down?\Q. The result is less impressive then hoped the
  throughput stagnates to zero for 5 seconds until it (at least fast)
  regenerates. We offer supposition for the reason of this and in the
  conclusion also propose a solution.\ 

  The last block of refined experiments evaluates the efficiency of the two
  TCP option changes explained in the TCP chapter to make TCP less vulnerable
  to packet reordering. Again with not so impressive results. The throughput
  graphs do not look that different. The block ends with some research
  results and assumptions, why these options were net very effective in the
  case of Multipath VPN induced reordering.

  The conclusion shortly summarises the findings of the previous chapters. In
  general Multipath VPN works and provides link aggregation which increases
  network throughput. Nevertheless this implementation is still in its child
  shoes, the reliability feature works suboptimal and the high CPU time
  consumption as well as the induced reordering are problematic. Fortunately
  for almost all of these issues a solution or optimisation is possible. We
  shortly explain those possibilities and their advantages as well as their
  disadvantages. We end with a short discussion analysis of the application
  domain of OL3LAT technologies in general, using the distinction of network
  traffic categories provided in <cite|Stevens:1993:TIP>. While OL3LAT is
  perfectly fitting for bulk data traffic applications, for interactive
  traffic it's still good but not perfectly suitable since the packet
  processing also introduce a little additional latency (throughout our
  experiments about 3-4 milliseconds).

  <chapter|OSI Layer 3 Link Aggregation Tunneling>

  \;

  <section*|A Description of a OSI Layer 3 Link Aggregation Tunneling Network
  Setup and its Purpose>

  This chapter will give a short description of the Multipath VPN network
  setup which this work centres around. An implementation of this setup will
  be used for the experiments in Chapter <reference|chapter-experiments>. The
  main purpose of Multipath VPN is making it possible to use multiple
  internet up-links and therefore improving network performance and
  reliability. After the technical description a short comparison of the
  Multipath VPN approach to other similar technologies will complete the
  chapter.

  <subsection|OSI Layer 3 Link Aggregation Tunneling>

  Although using <math|1> to <math|n> internet gateways is possible for
  simplicity, in this example and for the experiments a 2-gateway setup will
  be used, built in the following structure:

  <big-figure|<image|Diagramme/Multipath_vpn_szenario_en.png|780px|311px||>|Example
  of a 2-gateway Multipath Tunneling network setup.>

  <subsubsection|Mechanics>

  The <strong|Clients> <strong|C0>,<strong|C1>... in the local network use
  the Multipath-VPN \PClient\Q <strong|MTC> as their standard-gateway unaware
  of any tunnelling happening after this hop.

  The <strong|Multipath-VPN Client MTC> wraps the received segments in a
  custom packet-format and sends them (in default configuration via UDP) via
  <strong|IG0> and <strong|IG1> to <strong|MTS>. The following splitting
  policies are possible:

  <\itemize>
    <item>Static ( 1 packet via IG0 ,1 via IG1, etc. see attached .conf file
    used in the experiment)

    <item>By destination port, destination ip, source port/ip etc.\ 

    Anything what can be used for a iptables rule for marking packets.
  </itemize>

  The <strong|Internet Gateways IG0 and IG1> know nothing of the
  Multipath-VPN setup. They only forward the UDP datagrams to their
  destination like any other unrelated UDP datagrams. Likewise work all the
  other routers on the path to <strong|MTS>. It is a intended design decision
  that these nodes don't need any configuration or specific behaviour,
  because the network administrator of the Multipath VPN solution usually
  only has control over the nodes <strong|MTC> and <strong|MTS>.

  The <strong|Multipath VPN Server MTS> unwraps the packets and enqueues them
  into his <verbatim|incoming> chain. Doing this, he behaves like any
  NAT-Router, substituting the source address on any packet with his address
  and forwarding it according to his routing table.

  The <strong|destination Server ZS> gets the packets, generated by the
  <strong|Client>, like <strong|MTS> has been his NAT internet-gateway,
  without noticing anything of the tunnelling.

  The <strong|Way back> works similar: If <strong|MTS> receives a packet on a
  port corresponding to an established connection which has been created from
  the Multipath-VPN, he forwards this packet to <strong|MTC> via <strong|IG0>
  and <strong|IG1>. Thereto he does the usual NAT answer procedure (replacing
  the current destination IP(his) with the IP of the original sender) and
  routes the packet to the tun interface. The tun interface is created by the
  MTS software, which takes the packet, wraps it and settles the delivery to
  <strong|MTC>. After <strong|MTC> got the packets he unwraps them and
  forwards them in the local net.

  <subsection|Purpose>

  The main purpose of this technology the usage of multiple internet
  connections as <strong|one> internet-gateway for a local network to
  maximise throughput and reliability. Furthermore Multipath VPN has the
  following purposes:

  <\itemize>
    <item>Possibility of Encryption for network traffic (from <strong|MTC> to
    <strong|MTS>)

    <item>all other benefits of tunnelling

    (i.e.: the internet-gateway doing NAT (<strong|MTS>) and therefore the IP
    address our packets have to the outside world is chose-able, which
    enables some anonymity and source-deception).

    <item>Possibility of setting priorities for specific protocols. The free
    configurability of iptables gives the possibility to define very
    precisely which packets have to be delivered how.
  </itemize>

  \;

  <section*|Implementations>

  <subsection|Multipath VPN>

  Multipath VPN is a Open Source multipath tunneling solution implemented by
  Markus Schräder.<\footnote>
    See: https://github.com/pRiVi/multipath-vpn , The full source code is
    also supplied together with this work in the directory: code.
  </footnote> It's written in Perl, but uses the Linux specific network
  configuration utility <strong|iptables> and therefore currently only runs
  on GNU/Linux systems.

  Real world application experience with this software and some of its issues
  were the reason for the author for this bachelor thesis. Multipath VPN will
  be used for the experiments in the next chapters, as well as for a more
  detailed description of the implementation.

  Since the Multipath VPN source Code is quite condensed, undocumented and
  difficult to understand a restructured, refactored,commented
  fork<\footnote>
    See: https://github.com/richi235/multipath-vpn , The full source code is
    also supplied together with this work in the directory: code.
  </footnote> has been created for usage in this thesis. All code examples
  used in later chapters will be taken from this fork.

  <subsection|MLVPN>

  MLVPN (MultiLink Virtual Public Network)<\footnote>
    See: https://github.com/zehome/MLVPN , \ The full source code is also
    supplied together with this work in the directory: code.
  </footnote> is an open source implementation quite similar to Multipath
  VPN. While it basically uses the same basic principle of operation (running
  in user space, using tun/tap devices etc.<\footnote>
    See the implementation section of the next chapter for details on this.
  </footnote>) it seems quite more mature and rounded off.\ 

  Since it's written in C it runs on GNU/Linux and Free- and Open-BSD. There
  exist Debian packets and User documentation. It also supports privilege
  separation of the running binaries for security and
  encryption+authentication. Multipath VPN currently runs entirely as root
  and uses no encryption. So for actual use MLVPN is recommended whereas for
  studying and analysing Multipath VPN will be chosen, since for this a
  smaller less complicated code base is of advantage and security concerns
  are no central topic of this work.

  <subsection|Viprinet Bonding>

  Viprinet is a german company which sells multipath tunneling (or bonding as
  they call it) solutions to business customers. In this context \PSolution\Q
  solution means:

  <\itemize>
    <item>Their hardware (own branded router boxes)

    <item>Software

    <item>Running and maintaining the remote server (end of the tunnel, MTS
    in previous diagrams)
  </itemize>

  Since this is a proprietary closed source product, closer research and
  description is not possible. Anyway there exists a german software
  patent<cite|2013anordnung> called \PAnordnung\n zum Übermitteln eines
  Datenstroms über gebündelte \nNetzwerkzugangsleitungen, sowie Sende- und
  Empfangshilfsvorrichtung \ndafür\Q.

  It describes the structure and mechanics of their product quite accurate
  and contains the following (hand drawn) diagram of their network
  architecture and encapsulation concept:

  \ <big-figure|<image|Diagramme/Viprinet_architecture_diagramm_(from_patent).png|650px|||>|Diagram
  of the viprinet network(Fig.1) and encapsulation(Fig.2) concepts from the
  patent. >

  <subsubsection|Network Architecture (Fig. 1)>

  In <strong|Fig.>1 of Figure 2 element 5 is called \PSendehilfsvorrichtung\Q
  (german for auxiliary sending appliance) and does roughly the same thing as
  MTC described below, which is: encapsulating packets and choosing
  transmission lines.

  The same applies for the \PEmpfangshilfsvorrichtung\Q (element 6) which is
  therefore comparable to MTS. The big round circle in the middle (element 3)
  symbolises the internet.\ 

  <subsubsection|Encapsulation (Fig. 2)>

  As visible and described in <cite|2013anordnung> viprinet also uses
  encapsulation and tunneling of whole IP packets. The f() function visible
  symbolises encryption. In the patent text they recommend SSL/TLS but don't
  specify which encryption their product actually uses.

  <section*|Related technologies>

  <subsection|Multipath TCP>

  While Multipath TCP achieves roughly the same (sending data over multiple
  physical carriers), the network architecture and realisation differ,
  because the points <em|where> the multipath \Ptunnel\Q starts and ends
  differ. Using Multipath TCP the Hosts establishing the connection already
  use several internet connections, as visible in the following simplified
  diagram, taken from the official Multipath TCP presentation
  foils<cite|mptcp-slides> :

  <big-figure|<image|Diagramme/Multipath-TCP-diagramm.png|750px|||>|Multipath
  TCP Network Layout>

  The fact that the connection-end points manage the multiple internet
  connections has several practical implications:

  <\enumerate>
    <item>The clients or connection end points have to implement the new
    Multipath TCP protocol in their operating systems network stack.

    This implementation is currently not very widespread, at the time of this
    writing<\footnote>
      13.06.2015
    </footnote>:

    <\enumerate>
      <item> Microsoft Windows does not ship one per default and also no one
      seems to exist.

      <item>There is a implementation for the Linux kernel, but it has not
      been merged into the mainline kernel<\footnote>
        The multipath TCP project offers own prebuild Linux kernels including
        the implementation for Debian GNU/Linux, Ubuntu, Gentoo and several
        other popular distributions. Also they offer patches for people who
        build their own kernels.
      </footnote> and still seems to have some childhood diseases.<\footnote>
        A short and informal test has shown that multipath TCP often doesn't
        use the full bandwidth of all existing internet connections. Also
        their seem to be problems with NAT or OpenVPN tunnels visible from
        several github issues.
      </footnote> <flag|Quellen? wie belegen?|red>
    </enumerate>

    <item>The connection end point needs access to all the internet uplinks
    available. While this makes sense for a mobile device containing Wifi and
    UMTS access technology for a office computer at a company this is
    impractical. Giving all computers direct access to all internet uplinks
    means additional wiring or at least additional configuration for using
    several virtual networks over one wire.\ 
  </enumerate>

  <subsection|SCTP Multihoming>

  The SCTP protocol provides a feature called Multihoming which is comparable
  to the multipath functionalities of Multipath TCP. <cite|beckecomparison>
  contains an extensive comparison of these two protocol and their multipath
  performance in an intercontinental test-bed between Germany and china.\ 

  SCTP is a reliable in-order OSI Layer 4 protocol comparable to TCP but
  message boundaries are preserved like in UDP. Also SCTP provides some other
  additional features, but they are out of scope for this work, for
  additional details on SCTP see: <cite|RFC4960> on <\footnote>
    https://tools.ietf.org/html/rfc4960
  </footnote>

  \;

  <subsubsection|SCTP Problems and Drawbacks>\ 

  Contrary to it's progressive features there are some issues which make
  using SCTP for real world application difficult:

  <\itemize>
    <item>OSI Layer 4 protocol support in most cases has to be part of the
    operating system, Microsoft Windows<\footnote>
      The official microsoft answer to this is: \PWe have not seen sufficient
      customer demand to add SCTP support to Windows\Q, see:
      https://connect.microsoft.com/VisualStudio/feedback/details/651980/sctp-support
    </footnote> and Mac OS X, two of the most wide spread operating systems
    for consumer computing have no built-in support for SCTP.

    <item>For usage of SCTP with NAT, the Nat router has to understand SCTP,
    while support for UDP and TCP is built into most routers for SCTP this
    feature is missing in most hardware<cite|sctp-nat>. Since Nat is a very
    widely used feature this is a huge blocker for SCTP.

    <item>To benefit from the advantages of SCTP userspace applications have
    to be rewritten to use the SCTP networking API of the operating system,
    which is a big effort for rewriting existing TCP software.
  </itemize>

  <subsubsection|Conclusion>

  Like Multipath TCP SCTP requires another network architecture than OSI
  Layer 3 Link Aggregation to work, so a direct comparison is not useful,
  since the fields of applications are different. And like Multipath TCP SCTP
  currently suffers from the low spread on desktop and consumer devices since
  every client has to support it for the multiple features to work. This is a
  point where (currently) link aggregation and the next technology
  \PInternet-connection-load-balancing\Q have their advantages because using
  these, only the router of the local net has to know and use the several
  internet connections to make the bandwidth available to all.

  <subsection|Internet-Connection-Load-balancing>

  Another possibility to use multiple internet connections together is
  <strong|Internet-Connection-Load-balancing>. It <strong|differs> from
  Multipath-VPN in the following properties:

  <\itemize>
    <item>The Router decides for every to-be-established connection
    separately which network interface (for example DSL, DOCSIS etc.) shall
    be used. Once established all packets of this connection are sent and
    received through this interface.

    <item>The packets are sent directly to their destination, their is no
    additional Gateway node (no <strong|MTS>)

    <item>Tunnelling using a specific container format does not happen.
  </itemize>

  Though these 2 network setups have <strong|one thing> <strong|in common>,
  which the previously presented Multipath-TCP does not share:

  In both configurations, the router(s) have full control over the packet
  delivery. In both scenarios it's possible to define protocol and address
  specific rules.<\footnote>
    This property is widely used in real world applications. For example to
    swap high priority traffic on a dedicated internet connection. Often this
    is internet telephony or a separate line for ssh connections.
  </footnote>

  After the description of the Internet-Connection-Load-balancing technology
  the next section will give a discussion and comparison of these 2
  technologies.

  <subsubsection|Comparison to OSI Layer 3 Link Aggregation>

  <paragraph|Advantages>

  <\itemize>
    <item><strong|Lower complexity>

    There is no tunnelling software running on client(MTC) or server(MTS),
    which has to wrap the packets in a own container-format. Therefore two
    sources of error are omitted.

    <item>The <strong|CPU Load> for the involved router(s) is much
    <strong|lower>

    Like most other VPN daemons,the Multipath-VPN-Software is implemented as
    a user space process on Windows and UNIX. So for every single packet,
    which is put into the tun0 interface by the kernel, a context switch to
    the user space is necessary. Especially smaller ARM Routers with clock
    frequencies below 1 GHz this has proven as a network performance limiting
    fact in real world applications.

    This load disintegrates completely when using I.C.-Load-balancing the
    previously described separate routing of single connections can be taken
    out completely by the kernel, with no context switches necessary.

    <item><strong|No> separate <strong|server> as internet gateway
    (<strong|MTS>) needed.\ 

    Which saves upkeep and maintenance effort.
  </itemize>

  So altogether I.C.-Load-balancing is less complex and therefore holds fewer
  sources of errors but has the following disadvantages:\ 

  <paragraph|Disadvantages>

  <\itemize>
    <item><strong|Less dynamic>

    Once A TCP or UDP Connection has been established via DSL or DOCSIS
    up-link <math|\<alpha\>> it can not be moved to up-link <math|\<beta\>>.\ 

    Therefore an optimal distribution of the traffic on all the internet
    uplinks is not always possible. Especially because at the point in time
    when the connection is established and the router has to decide which
    up-link to use, he does not \Pknow\Q how much up- and downstream traffic
    this connection will need.

    Multipath VPN doesn't know this problem because the distribution happens
    \Pdeeper\Q in the network stack. <strong|MTS> anyway gets all the traffic
    and sends them out with his address, no matter via which <strong|IGx> he
    got it.

    <item><strong|No dedicated encryption or anonymisation> possible

    Also all the other advantages of tunnelling vanish

    <item><strong|Lower failure safety>

    If a internet up-link breaks down, all the the TCP and UDP connections
    which used this up-link are affected and broken. This does not happen
    when using Multipath VPN and a internet up-link breaks down, here all the
    packets of an TCP or UDP connection can still be routed over the other
    uplinks, although they are now under a heavier load of course.
  </itemize>

  The extensive possibilities of configuration, which traffic goes through
  internet up-link, is a property both technologies share. Although with
  Multipath VPN being a bit more dynamic and flexible in that aspect.

  Finally, there must be said, that none technology is really superior.
  Depending on purpose, available hardware, and experience of the staff the
  right technology has to be chosen individually.

  <chapter|First Explorative Experiments>

  <label|chapter-experiments>

  <section|The Testing Network>

  The whole network was designed with the goal of recreating the real world
  application of multipath vpn as closely as possible, to make it possible to
  reproduce and analyse the throughput breakdowns noticed in application.
  This may explain some of the following design decisions.

  <subsection|Network Architecture and Overview>

  For the experiment an architecture similar to the previously presented
  generic network architecture has been chosen:

  <big-figure|<image|Diagramme/test_network_architecture.png|713px|263px||>|<label|experiment-architecture>The
  Network architecture of the Experiment>

  <\description-aligned>
    <item*|Measuring point>On these hosts <verbatim|tcpdump> was executed, to
    save and store the relevant network traffic network traffic.

    <item*|Delay Control>On these nodes it was possible to add additional
    transmission delay for every Frame on OSI Layer 2. See
    <reference|Creation_of_artificial_latency> for details how this is
    realised.

    <item*|Network segments>The IP-addresses, sub-nets and routing were
    configured in a way, to achieve that every connected node-to-node pair
    (MTC\<less\>-\<gtr\>IG1, IG1\<less\>-\<gtr\>MTS, etc.) has a own
    IP-sub-net.

    This was done to make sure all involved nodes really <strong|route> the
    datagrams through the network instead of only relaying Ethernet frames.

    The Linux network stacks treats these two cases differently in several
    ways (See figure <reference|fig8> for a diagram of the decisions during
    the processing of incoming packets.)

    Because in actual real world application case routing happens in these
    nodes, several sub-nets and routing was chosen to the Linux kernel
    networking behaviour more close to that.

    <item*|Multipath VPN>The Multipath VPN daemon was installed and running
    on MTC and MTS.

    <item*|The Traffic>Was directed from the Client notebook (left) to ZS and
    consisting only of binary zeros ( <verbatim|cat /dev/zero>)

    <item*|NAT>MTS will Nat all the packets it forwards to ZS. Although it
    has absolutely no effect on TCP flow and congestion control at all, it
    was enabled to get this experiment more close to any application case.
    NAT is needed to ensure the Answer Packets of ZS chose the correct way
    back. It is intended they use the Multipath VPN for the back way.
  </description-aligned>

  <subsection|Used Hardware>

  All nodes (except for the testers client notebook) were <name|PC Engines>
  <verbatim|Alix2d2> router boards running a <verbatim|Debian> wheezy
  GNU/Linux Operating System with a slightly modified Linux Kernel. A short
  overview over the hardware specs used in the test:\ 

  <\description>
    <item*|CPU>500 MHz AMD Geode LX800 (AMDs Intel-Atom counterpart with
    comparable low power and Head losses)

    <item*|RAM>256 MB DDR DRAM

    <item*|Network connectivity>2-3 \ Fast Ethernet Cards (depending on
    specific sub-model)
  </description>

  For more detailed info's, see the <em|vendor's product page>
  <cite|alix-boxes-doc><\footnote>
    <hlink|http://www.pcengines.ch/alix2d2.htm|>
  </footnote>.

  The following picture is a photography of the actual testing network and
  hardware during the experiment:

  <\big-figure|<image|Anhang_CD_Daten/Bilder/Versuch_centered.jpg|700px|||>>
    Photography of the Breadboard construction. (A concrete realisation of
    the testing network architecture in Figure
    <reference|experiment-architecture>)
  </big-figure>

  <subsection|Software Configurations>

  <subsubsection|Artificial Latency><label|Creation_of_artificial_latency>

  For the creation of the artificial Latency the Linux tool <verbatim|tc> was
  used, together with the sub-module <verbatim|netem>. As a concrete example
  the \ command:

  <verbatim|tc qdisc add dev eth0 root netem delay 100ms>

  would add an additional delay of 100ms to every frame <em|going out>
  through the network interface eth0. So to add a realistic delay to IG0 and
  IG1 it was needed to set tc disciplines on both interfaces so every packet
  going through (in any direction) gets the same delay.

  <em|How tc and netem work> can be better understood with a little knowledge
  of how the Linux kernel handles packets. This simplified<\footnote>
    The diagram had to be simplified, because it was much to big to layout.
    Mainly details about the iptables ad ebtables rooting chain were removed
    and infos how and when packets can jump from the link layer to the
    network layer processing. The <em|full image> is accessible via
    <hlink|netfilter.org|http://ebtables.netfilter.org/br_fw_ia/br_fw_ia.html>
    (Section 11 detailed picture) <cite|linux-packet-processing>
    <cite|linux-packet-processing-img>.
  </footnote> diagram may help:

  \;

  <big-figure|<image|Diagramme/Iptables-PacketFlow_vereinfacht.png|700px|295px||>|<label|fig8>Processing
  of Packets in the Linux Kernel (simplified) <cite|linux-packet-processing>
  <cite|linux-packet-processing-img>>

  As recognisable the evaluation of the Qdiscs (all red boxes) happens before
  and after anything else in the Linux kernel. Since the <verbatim|netem
  delay> module only affects outgoing packets, only the two last red
  \Pboxes\Q are relevant, directly prior to passing the frames to the NIC.
  Every packet passing the 2nd red box will be held back for the specified
  time until it will be forwarded. While this method of delay creation is not
  completely similar to the real world application with several routers on
  the way to the MTS, all with their own buffering, it's quite comparable.
  With the delay happening outside the routing process it's more comparable
  to happening \Psomewhere outside on the line or in an other router\Q than
  some manipulation with iptables.

  <subsubsection|Setup of the Multipath VPN Software>

  Both Multipath VPN instances (MTC and MTS) were configured to use the two
  network interfaces belonging to the two different connecting NICs and
  ethernet wires with a ratio of 1:1. The concrete configuration files used
  can be found on the accompanying disk in the folder
  <rigid|<verbatim|"multipath-vpn_conf">>.

  <section|Results>

  <subsection|Default Linux Congestion Control: Same Latency>

  During the 82,6 seconds almost exactly 75.0 MByte of payload<\footnote>
    Obtained this info from the ACK value of the last transmitted segment
    from ZS to MTS
  </footnote> have been transferred from the testers notebook (called Client
  0 = C0 in the following text) to ZS with an average goodput of about 908
  kbyte/s. The CPU time usage during this experiment was continuous
  staggering between 99 and 100%. This is a graph of the complete I/O over
  time:

  <big-figure|<image|Anhang_CD_Daten/Experimente/first_experiment_series/Exp0__ig0+0ms__ig1+0ms/ZS_full_IOGraph_zentriert.png|540px|200px||>|<label|explorative-experiment-1>Explorative
  Experiment 1: full bidirectional Network I/O Graph, Y-Axis in Bytes I/O
  (payload) per second>

  The worst traffic collapse happens around 20s so let's look more precisely
  what happens around this time:

  <big-figure|<image|Anhang_CD_Daten/Experimente/first_experiment_series/Exp0__ig0+0ms__ig1+0ms/ZS_full_IOGraph_0.1s_zoomed_in_zentriert.png|706px|200px||>|Explorative
  Experiment 1: bidirectional I/O Graph zoomed time-range : Second 16 to 28>

  Here <strong|2 facts> attract attention:

  <\enumerate>
    <item>The throughput is permanently staggering.

    <item>Shortly before second 20 the throughput vanishes completely for
    about 0.4 seconds.

    To diagnose more precisely what happens in this time-span a closer look
    at the single packets and their attributes is needed:
  </enumerate>

  <big-figure|<image|Anhang_CD_Daten/Experimente/first_experiment_series/Exp0__ig0+0ms__ig1+0ms/wireshark_screenshot_resized.png|698px|367px||>|Wireshark
  screenshot: packet details in previously discussed time-range.>

  Here several facts get visible:

  <\enumerate>
    <item>Packet reordering is happening.

    Wireshark marks all Packets he recognises as reordering-affected with
    black background and red font. As visible here this applies for the major
    part of packets in this little time span. Actually, this is true for the
    major part of packets of the whole transmission.

    This case is in particular interesting and extreme because here MTS gets
    66 DUP-ACKs for frame 28592 <\footnote>
      Wireshark counts all frames of a recorded transmission autonomous,
      28592 is the wireshark-intern frame-number of the packet for which ZS
      sends DUP-ACKs
    </footnote> sequence, before he stops for a very long time and then
    re-transmits the queried next packet.\ 

    It should be mentioned, that the wireshark detection and marking of TCP
    Re-transmissions has (in contrast to the marking of the DUP-ACKs) some
    uncertainty. Every Time wireshark sees a packet containing a Sequence
    number lower than another previously seen packet of the same sender,
    wireshark marks it as Re-transmission. While the having-a-lower-sequence
    number fact can be a consequence of re-transmission, it can also be a
    consequence of reordering, which very likely is the case in this
    experiment in most cases.

    <item>After second 19.47 (marked packet) the sender is not sending for
    about 0.5 seconds.

    Compared to all the other packet sending intervals in this transmission
    and as visible in the throughput diagrams this is a alarming huge
    time-span.
  </enumerate>

  In this experiment we observed intensive packet reordering, although both
  link have the same, very low latency. For comparison the next section will
  show the throughput over time for a network using different latencies on
  the two links.

  <subsection| Default Linux Congestion Control, 100ms and 200ms Latency>

  During the next experiment, with a artificial delay of 100ms on one link
  and 200ms on the other link, we measured the throughput illustrated in
  figure <reference|explor-exp-2>.

  \ <big-figure|<image|Anhang_CD_Daten/Experimente/first_experiment_series/Exp1__ig0+200ms__ig1+100ms/exp_01_zs_diagramm_no_title.ps|700px|||>|<label|explor-exp-2>Explorative
  Experiment 2: Bidirectional I/O Graph>

  <subsubsection|Throughput Analysis>

  In 87 seconds 48.229 Mbytes of payload were transferred, so the average
  goodput was 554 Kbyte/s.\ 

  This lower throughput is a consequence of the higher latency, to explain
  this a short excurse on TCP window sizes and and latencies is helpful:

  <\remark>
    <em|About TCP window sizes, Latency and Throughput>

    The maximal possible througput in a TCP connection depends on the maximal
    receive window size and the network latency in the following correlation:

    <\equation*>
      <text|Maximal throughput in KBytes per second>=<frac|<text|TCP window
      Size in KBytes>|Latency in Seconds>
    </equation*>

    <em|Reason:>

    The maximal possible amount of data a TCP host can send at a point in
    time is the size of the Receiver's receive window. After he has sent this
    data (this can be several packets) he has to wait for one complete round
    trip time before he gets an ACK an can send new data.
    <cite|tanenbaum2003computer> <cite|isi_793rfc81>\ 
  </remark>

  \;

  If we want to calculate the estimated maximum possible throughput in this
  experiment according to this formula, we need to know the TCP window size.
  Fortunately this can be obtained from the traffic dump file it's about
  98000 Bytes for over 98% percent of the packets, for the estimation we will
  use these values. For latency we will take the arithmetical median of the
  two links which is 150ms, remember this is just an raw estimation.\ 

  <\equation*>
    Throughput<rsub|max>=<frac|98.000 <space|0.2spc>KBytes|0.150 s>=653.33
    KByte/s
  </equation*>

  653.33 KByte/s is a good estimation for the maximum throughput phases
  observed in the diagram, which occur several times but often get
  interrupted by reordering induced spikes.

  <subsubsection|Reordering Analysis>

  In general the relative throughput spread range in figure
  <reference|explor-exp-2> is comparable to that in figure
  <reference|explorative-experiment-1> (consider that the two diagrams do not
  use the same y-axis Byte/s resolution). There is one exception, the big
  spike in the first experiment at second 20. Since we do not know how
  reproducible this one is and if it could or could net happen in the second
  experiment as well we decided to ignore this difference.

  <subsection|Summary and Next Steps>

  Through this experiments we learned several facts about this OSI Layer 3
  Link Aggregation Tunneling implementation:

  <\enumerate>
    <item>Massive Packet reordering even happens in a network with two
    uplinks of same latency so different latencies are <strong|not> the only
    reason for packet reordering. Since the reordering induced jitter in a
    different-latencies network is comparable to that in a equal-latencies
    network, we even assume that different latencies only play a secondary
    rule as reordering cause.

    We will explain the results of further research on packet reordering in
    chapter <reference|seeking-cause-of-reordering>.

    <item>For low latencies and moderate receive window sizes Multipath VPN's
    throughput is CPU bound. For the hardware used the boundary in our
    experiment was at about 910 KByte/s. Several experiments and analyses on
    CPU performance will be presented in chapter
    <reference|refined-experiments>
  </enumerate>

  These explorative experiments gave us a good overview and clear direction
  what to examine next.

  \;

  \;

  <chapter|The TCP Protocol and its Vulnerability to Packet Reordering>

  <section|A Short Description of the TCP Protocol>

  A TCP-Connection guarantees a reliable, ordered and error-checked
  connection between to sockets on two computers. In the OSI networking layer
  model TCP implements layer 4, the transport layer, in most cases TCP
  segments are contained in IP packets, and contain the data of the
  application layer. This chapter will give a short overview how TCP achieves
  this reliable and error-checked end-to-end connection, but at first a few
  terms.

  <\itemize>
    <item>Sockets are the endpoints of TCP connections

    <item>Each connection between 2 computers is uniquely identified by the
    following four-tuple:

    (source-ip-address, source-port, destination-ip-address,
    destination-port)<\footnote>
      For a practical example, on Linux Systems the command <verbatim|netstat
      -t -n> lists all the currently established TCP connections together
      with this 4-tuple of information. <verbatim|netstat -l -t -n> lists all
      the listening, not-yet-connection-established sockets.
    </footnote><cite|isi_793rfc81>

    <item>A TCP connection is bi-directional, therefore sending and receiving
    data is possible for both hosts.
  </itemize>

  For the following explanations let's assume this example:\ 

  <small-figure|<image|Diagramme/simple_tcp_connection.png|381px|112px||>|Example
  of a simple TCP Connection>

  For the simplicity we will only examine one direction, these of
  <with|color|red|B> sending data to <with|color|red|A>.

  <subsection|Reliability>

  So, how does a TCP implementation assure, all parts of the data-stream get
  delivered correctly? This is done using 2 mechanisms:

  <\description>
    <item*|Ack info>The receiver sends TCP segments containing an ACK flag
    and an ACK number telling how mach data and <em|until-which> byte of the
    data-stream he has received data.<\footnote>
      These ``Ack-Segments'' of course can contain Payload data themselves,
      and so serve a double purpose: transport Data of
      <name|<with|color|red|A>> and acknowledging successfully received Data
      of <with|color|red|B>. In most connections, this is the case.\ 
    </footnote><math|<rsup|,>><\footnote>
      Whether for every received segment from the sender an ACK segment is
      sent or for every second, third etc. depends on the implementation, TCP
      extensions and the fact how many segments have just been received.
    </footnote>

    The sender starts a Timer for every sent segment.If this timer exceeds a
    certain timeout (the <em|RTO> Re-transmission Timeout) the segment is
    re-sent.<cite|isi_793rfc81>

    <item*|Check-sums>Each TCP segment sent contains a check-sum calculated
    over the following information:

    <\itemize>
      <item>The \PControl\Q-Data of a Pseudo-header containing the
      information of the TCP and the IP Header

      <item>The Payload data
    </itemize>

    Therefore, if a TCP segment is received, its integrity can be checked and
    corresponding ACK info can be sent or not.<cite|isi_793rfc81>
  </description>

  The next questions of relevance for the following chapters are: \PHow much
  data (or how many segments) does <with|color|red|B> send without getting an
  ACK and how does he keep track of all the ACKed and non-ACKed data?\Q.
  These questions will be answered in the next chapter.

  <subsection|Flow Control and Congestion Control>

  <subsubsection|The Sliding Window>

  The sliding window algorithm is a concept for the <strong|sender> to keep
  track of the <em|sent> segments and which of them are or are <em|not
  ACKed>. It contains all the segments, which are sent but not yet ACKed.
  Like the following figure illustrates:

  \ <big-figure|<image|Diagramme/sliding-window.jpg|444px|336px||>|Illustration
  of the sliding window principle<cite|sliding_window_webdoc>>

  Here with every ACK message the window moves from left to right over the
  data stream, leaving behind successfully processed data. On every move of
  the sliding window, the sender sends the new segments which just came into
  the window.

  Using a sliding window brings the following benefits over simpler positive
  acknowledgement protocols:\ 

  <\enumerate>
    <item>The sender can send several segments at once and doesn't have to
    wait for acknowledgements of every segment.

    <item>The receiver can ACK several segments an once.
  </enumerate>

  For these reasons TCP uses a sliding window concept for the senders.

  <subsubsection|The Size of the Sliding Windows (Congestion Control and Flow
  Control)>

  The size of the senders sliding window (in the following called
  <strong|snd.wnd>) is <strong|not fixed> but merely changing on almost every
  ACKed segment or timeout. The value of snd.wnd is calculated as the minimum
  of the following two values:

  <\description>
    <item*|rwin>The amount of bytes the receiver is currently willing to
    receive. This value is part of the TCP Header and is sent with every
    segment the receiver sends to the sender. The <strong|Flow Control> part
    of TCP is done using this value.

    <strong|Example:> If the application on receiver site, processing the
    data is quite slow and the data buffer of his operating system
    corresponding to the TCP socket get's near or on it's limit, the receiver
    can send a smaller rwin value to ensure he won't get \Pto much\Q data.

    <item*|cwnd>A value maintained and used by the sender to do
    <strong|Congestion Control> i.e. adjust the amount of sent data to the
    capacity of the network. A TCP Connection starts with a quite small value
    and increases it over time (details on this see slow start). For example
    if a packet loss is detected through timeout this value is set to it's
    initial (or halved depending on the implementation). This value is
    internally maintained by the Operating system TCP implementation and
    therefore not as easily visible in a network dump as rwin.<\footnote>
      For interested readers: On Linux based operating systems since v2.6 the
      TCP implementation contains the get_info() method to read out such
      values. The command line tool ss uses this call. Using <verbatim|ss -t
      -i> one can read out the current sender-cwnd values of all currently
      established TCP connection, the values are displayed as ``number of
      segments possible to send'' and therefore have to be multiplied with
      the (also displayed) value of <math|MSS+\<approx\>20Byte<around*|(|Size
      of TCP Header|)>>.
    </footnote>
  </description>

  <subsection|TCP Extensions: Fast Retransmit>

  The following Chapters explained the working of the plain TCP protocol as
  defined in RFC 793 in 1981. Since then many extensions and improvements
  have been discussed and implemented.

  One extension of significance for this work is <strong|Fast Retransmit>:

  Fast Retransmit makes it possible to detect and correct packet loss much
  faster than only using the traditional re-transmission-timeout(RTO) method.
  This is achieved using the following mechanism:

  <subsubsection|Changes on Receiver Site>\ 

  Let's assume the sender has just send 5 Segments with the (simplified)
  sequence numbers: 2,3,4,5,6 and segment 3 gets lost on the way to the
  receiver,so after a short time, the receiver get's the segments 2,4,5 and
  6. As a result, the receiver will at first send an ACK for segment 2, and
  then an further <strong|duplicate-ACK> (short DUPACK) for every further
  arriving segment being not the immediate following one of segment 2
  <cite|allman.paxson.stevens_2581rfc99>.

  <subsubsection|Changes on Sender Site>

  If the sender gets 4 ACK segments which fulfil one of the following
  requirements:

  <\enumerate-Alpha>
    <item>They all acknowledge the same Byte-stream position (ACK number)

    <item>the 2nd, 3rd... acknowledge a Byte-stream position prior to the
    first one.
  </enumerate-Alpha>

  he immediately re-sends the segment directly following the first one and
  decreases <verbatim|cwnd> to the half of its size
  <cite|allman.paxson.stevens_2581rfc99>(a timeout in the old RTO mechanism
  would mean a resetting of <verbatim|cwnd> to its start value which would
  have a much worse impact on the connection's bandwidth).

  The following diagram illustrates the described mechanics on Sender and
  receiver site:

  <big-figure|<image|<tuple|<#47494638376177029A01E70000FCFEFCF7F5EEE9E9EAE5DED8D7D7D8CCD3CCCACCC9C4C4C3AFB3B5ACADACA5A4A4A49E9C9C9C9A959597948E8CBEBBBCA89785B4997DC09C76C9A986D4AD82DBB487E7BB8E8B8B8A747677F4C694F8CB997D7D827C8284B8A38AEBC295C9A578F7D5AE977B5E4A443E2A2620352D25836C54A48664B4926C5F4E3E6F5B475F5A561914149C8264AB8D6E7C654C201C18463C358C74593A3730A68A64363421110C0FB4AEAB4D4C40BFAE9FC8B473C3B452D1BA44C8C443C3AB5FC6B48EDAD63DF4EE44F7F343EAE43FC9BBA9ECEA42CCCA40FAEDE7CCB95DF4B5B3DC4641EEA7A4B2AC34948E2C817C2C6F6621615921514518DC2320EC9896C9CAB072713309050AABA534F5DDC7F4D4CF89852CE4DD3CD5CCC3463A15604F15BAA775AEA248CCBC75CCC494D9D5C8F4C4C3E46A64F3BCB5B4A35CCCB245F6DB54DCD267DBCD6DD2C46EC9C5A8D9C63841442BCCB05BD5CBADCCBE86AA995CE9DA91F4EAB1FCEAABE7DAABDAD3AFDC3935DAC64CE4C947E8D04FEBD753F4DD69FAE472F9E68BFAEA94FAECD3F7E5CFFBF3D6B4B2AC9B9636C09D5CBE9C45C1A743EAD96BBAB534E8DAC654534F69645EF9EEB7D6C6936E6B69FAE25BDCD296F2D43AE6C834DCBE1CD9BC2ED1B42BB3930BE4615DAB8C0DC3A308CCAC2BDC2E2ACC9E74F8EC71F2CBC8EC8782E355509BB66B95AC6994A475919D738C9478ADCC74BCE27CBCDE84B4D579A4BD6F949A8BB4C2B0BCDB7CA7C472ACBC8BBFE484E6E8D68AA4635B663F5158386470447D92546D7B4C809C64E477747F966174844FC8EE867C8D54A9B656646942BFBD46ACBB588DAE8C72A56B559D4D5495497C752CA9BCA597B6938BB48788AD8271BB6AA79932ADCEA4BCDEB3BFE2B4B1DAA99CD294E7F2DADBEED0D6E9CAC9E6BFA3D49E9FC9998CBC8781A478729A6B73946680C57D93CE905CAB515FB65792C58F9CA2A0738A555FA357EACBA8D8BC8BBC9B26D7BEA1C3A52DAE9944C3B4A6F9F55EB4AC4C918C51DCC664DCB305E6B904D5AC04EAC20BF6C704FCD404856C0C7C640CBF9B076F5A0F9C820C977A0CCCA504A4840C8C730C2C0000000077029A010008FE0001081C48B0A0C18308132A5CC8B0A1C38710234A9C48B1A2C58B18336ADCC8B1A3C78F20438A1C49B2A4C9932853AA5CC9B2A5CB973063CA9C49B3A6CD9B3873EADCC9B3A7CF9F40830A1D4AB4A8D1A348932A5DCAB4A9D3A75093FAC084AEAAD5AB58B36ADDCAB5AB57AF66A28A7DC886EAD7B368D3AACDBA2EC0D8B7705182A967AF9EDDBB78F3EADDCBB7AFDFBF7ECFC41D5C300CBDBA80132B5ECC18AF3D4E6E094B9E8C110CBDC698336BBE2B9872DC30F2368B1EFD17B2E7D3A81B5A26CDBAB5DDCEA9A382764D5BB4E9D8B873AFAECDBB31ECDC4D67F71E9EF836F0E39477135FCEF737F2A4C2994BC76BFCB9F5B7CAF9DAAB7B793B6FC4AD9DFE5F2F1A5DBBF7E9ACAB8F5FDF34FBDE7CFAB8708182AF1F78D6FBBAF0732D9E7DD0F2F2E823E01302EAC3CF3CBDC523603FB4A9E7DF8346B99717262FD450C30A168E900F6D5D54D1057F101255DE3C155A6861153590C0606DF3D45005260D4616E28C434978173D5CAC0005269BEC33420D5C5C66D776E70D591791F7D145A43E357C781791792199645EFDD1A85379F18CB0823EFEECB30F3E153A6964914F42E99899F5C8E3653C682A091E92672A69978356D699938D7665B9C23E44F2430314F1DC950F3FFC6C7817269AD0330FA1861EFACF3E013639643CFBFCE30F9B76CDA3493F8BFA23E45E554225C0008461A9A53F48EAB30209DDD1A3C9A3FEF63D198F3FFFF0B3095EF46052EB8AF5D0934F3EF2C4A309269FE6A3C986F6C8F3EA3EF320266C3EF1F003693D74DA692D4D78A649C3AAFFE47318AEAA5651C59697D143C20BFAFC58C30BFFD8454FB835D090E387F6E443828B29227B4F0D50D050C50B813637D803308C70C160A6AE80AA775DAC40C361F14081EF0BFBD985C9BDE2B26B973C0D67DC6E3D24AE904F3F2FAC80495DF2D050C33FF6F4C3858923F843973F0E73316E3E8FC978EDCED87EBA973F25BEC0853E38DBF54F0D23487B2FCBE6AEF0023E9A40B1C2086CEEE334D40DAFF0613CF776A189AA24B079CF0AAB76714F60710920C2852B3CF0596877E9D9C53F7437BCB25D5D00E9CFFE3D2FBC80F33C3F76E10F93359CCC240D9596AC893D24BE0063DEFAD0A5C9D4814ACC853F60BEB0893D344FDD853E9755CBF3E82B656B3114255B48B1B62BF0B3DDE44136ADCF7614BEC0A0D4F4CA33AF3D56B35A578E7C8EEDF79454A62D03D92BD8F0365E595628EE8524DC73D8267DE36C0F3E35CCCECFAAF2D4854F7DCD9F6CCFD11F367EF2E461D70379BD4EDB670F93F870EE34AA77894EFAFD26650BE53CFBA4DB3EE02F8082801AF6827934CD75F5C847DFFA7140C430E943602BD0BD66B7AF870126544E6180961AA133B1246C6E527B019F66E6B4CFC50748F5786099EC513B13BE8C55F1E8DBC952A6B0F0D9637B2328D0CBA0508FC915903AFE1DC49F10F3E7B3BC6CE21EED229202F704401270415E5080820149B0A7BA50CF760DB48B0A55358227CE070A2CDB57902E4818033C2088B2815B9E4E650F7A486D04E2B3DA0BE40545D0A9B04C9AE81B1DE7D38560C9D02EFBD2CF0A82343EA7C9EB8B919B1CD58038C4469E044F9CBBD0E2B6D30F2D418A8AF493473F42D3B4115E91412F9B5D5D70670F310A8953873125191D199384F1A9655A0A1B0BDB579779CC2334637BD876EE4134050EAF1EF1D824C8FE588F4ACEB17575A119D56A794BF991408DD442232BA7A9916CA52C45FCC0C43E72643BF501E996FA78C1873A69C505961269FE98C7D8B496C0BEF12357242001CEF6058522828A9A2FFE71E591ACB625D6E9431EF3E002BBEA55B2FAECE30555D8CFCBBA108F88BDE06CE6BB4BD64680206052111F9AE4C208F844B36732129F20ADA63DF1820975996875205359DFD6B5387A8C20A175C907D970A63B0B19D24380C490969A74187C54618C7FC160484532A215C054A21642551ED755211A54746C17B250170E938F1FAD94049B9B07866024391789A91E40632A90D8E48F7541D37E434DEB424CC7B87B74010A5DC047A380E956011A8A1EBC34543CBE17B078DC03AEBFD2C73EEEA28927C0F59D1633506284AA568F00081F44C3CB3C203BD87AE9238AF708985DBE765821B50C1F51C44745E5F1BD8AA629AF79810F66E1B6097D48EFA38D8DFEAD6A461A2723D5B64864CAED90E4B4DBDEDA7695B2254979785B5BDEEAD6B7C67D5392C8F4DBFB3017ADC195ADE9D0531BC62E6500185081DB9647DDE94037BA8D9D6E77C3139700A8204304E0EE7897F35DF0A655BCEB1D8D759322002A562801EA8D6F6FDAEBDE90C257BF9A996F5230E02219900A2EC305B06BF8DB5F7CFE57C1BE194C0018C081F47E86B610B68D341BDCD81CC4431E200EB188474CE2129BF8C4284E718A11C1E18F84E1962A8EB18C674C6312A363C32D1E2A01D8C0E31EFBF8C7400EB290874CE4221B590C39EEC8008CCCE4263BF9C942864392A74CE52A5BF9CA58CEB296B7EC920078F9CB5FE6F264C04C66319BF924011847FE03D6CCE60B6C777409688000EE170005B0F9CE6F3EB39E411280066CE0CF80C6007E4777010CDD60CEA3EB33A0033DE83D3BBA237DE680A427BD01043CC4CBD7A9AFD356D0E89D457AD292DE40A71F4D6A851C200138FE34A82BED902DE8E008600043181E010731886100021000A629130046A8CE00A45335A5475DEA62178400231041030E6C106187DAD20D994222FCD0073EEC410F79C8C30EB67D846E83210EB4BEC3AD73BD6BA810A0113750009D1B00EA5013DBD8F006C07953B4016017C4D91C6075430C308B4104C21100AF431D00F1873FF881DA7BB836B6DBB0ED339C01D6B286031CB6200672E338DE976677BB458D71520BE0000F0879C8FE0FA0824DAF4B0536403400F0AD6F861840108388B9CC651E8840F81BE08E103820087EF06A27FCDA94B084C31F1EEB3884810DB59E85C53BBE1096BF9BE95B2644DFA64EF5A91B750518308240580EEDA6B3810E60A743CDC75E7323C4DCEC33F777CCFF0D70B00F9CE77DF039D085EE706F1B9DD6B7C6B5AE3BEE74A8EF99102350C001063FF892A76E048D2084CAB9DE9000802112072FF81F761EF6B00B02EC640F04DAD39EF69A079C0E6F0744CFD1606D3DB441DBDCF6F6AC6B3D6E5D5F9CCA7DF7FB99016FE1819CD761F56EB6C657DD75850420070EBF84252C41094AEC611268483EE4FD50F09D03A2F295CF7CD9394FF3B1E35CE73CA776E94FFE6F89D4C31ADC13170301963EE5D8CB5ECCB42708B245C00066DF7BF794EEBDEF733D8B0188010E61080318BA1D7CE117DFF87BA07C91377994077D98277D9BC77964777D0357703D676DD796070CB7037557746C300514477EB1657EE7177523507B00700036906AF0F76C19E165B9667F70C006FAB77F43377CFF677C7C8006CBE707CEF77C06287608387301407D6C9773A0977D72377743077146877462A074AEC74A1CD88159967E10C1782411002928065B00078F1007B176040EB703C367096D607C34B87C9F708339A883999780D477736D178470D7076890707A4009145877DFB77A79476ED7D2844E7865509871ED966FF2B712282800621001FE86600887B088E8A00E8EC809C217860138869167866798866B38739E17706F6770D41687D7D606DDE77DB28677ADF77AA9C1877D58657FE8105238133EA001B298011E60011650011440011F90888A78088DD8889CC00960088002F8099F4080056880D2A7799958736C98733BE7807E008A7AB0700D6777B4060777307E4B881AAAB88A53D68A8D578282481302300119908E19208BECD88E1A408BB65801F2A88B89B888BED888EA0089FFB707334886C88883CAB8836B68739B98730DE88972578D135881DF768119D88D62F18DE09863E2C810AF1813E7F88EEAB8911C998EEED88EB4E801B5788B1F2001F5688FF80889C3288634787036E87C9728FE906AA889D717840E586D10388774F7707788847A576E45219113C96115D974E4D8721849011AD9914CD9941BF991B3988E23590113F001BBD88BBEF888C2378C93E88F306980972790CDF8838EE086061777D4388114687778788A3D219443D95F45E97B4739882E410015E0947AB9974E0995EC088FB7A88B5789928E988F91288302C87C969883983893D5370838078D42088A94707ADBB603DDF67DE1E69631019771095E7399101709135B60017CE99120799AAAA98E7E0902B23895B9789558A90E29497C00D88F7E608CFF1893983890D66790D1E889D4688D750871D978073F89635EE003EE57119EF999C1159A08319A2F3105A6B9971AE00115FE609514609A4BB99AE029951560011E900120E09A1F1992B7288F567992F7F888B689985EF99501D99B3EE86F3FA873D29890C5578744F76D4707077A270698207C6070072A3711CF099DB1259D07419D2EC106D7A99714A0033CF0035AF003C2D00379199EE1A90111300223400222E0021FF09D4FE997213995EDE99E29799862180990778C8B097DCBE8989AF8836E178D9F0881FDE97088E00C6BF0097DA00671C006CD09881BF7740C0A9A1F181110DA124330A14CE9016FF0034010045AAAA542C00314E0A1E0A90126B002308002C733021280A2AC499E4DE9971AC9A22D4A988679985D7970349A8C8C49766687A3F8199966E9076B1006652970FE73F0086C5071507A944CDAA4D1F9A4515897343104E5E9946FA005410004989AA959EAA560AA9A1A10022BC00220E0012CB00228B08EECE89AEB180322E0016ACA976EFA8EB0498F27898F86699BFC588CBBC99B6367047C3A081347733127087730055390A4A2A9A88C4A918EAAA4BC47133ED09714500497AAA95A8AA941200C54DAA96D5A022BD002AF593015A00127E0022E600216A00114300230509EEEC8ADACE9A680298FDBC98B28599BC59770B85989F469A39937085300825BB772B32006064000AFB7A0CB1A520EAA7B8188942F1100D1DA941EA0039A8AAD8A90055A80A942F006F0BA9729B002694A8B22F002157002AB0203A66A0122E0FE3428E0011FE00228500227FAB1D829AF22698BB75895EEE90C568008670083F95AA7FC0A908EE0035B307631176603310B2097A00EBBA40B4B94CDEA8A902A1301808E4CA9AED49AA95ABA0422FA03971A043A30A936DB9128F00227AA0116200323208F2D309EE21A022F200325500130F0022220A2237BB6602AAFE91801E3806BF6778559B87F6FD085C317863218099FD0037650798EC0768BB00877B00506B0050780AC03A1B0534B4D0DFB7E0F6B972C91B5AFAA013DB0B1D8FA034F40365C60A99BDAA17EAB8E1EB0B715709E1FF002ED5A013180020543021690BB2530AA12F0011910032B1002AF3ABBF00AA208B06154382AB6760759A8856FFEA00EEB808C7F30079260A86C70B07B6791CAFAB9EE15BA0411A52B91914DD90342E0B58AC0055940036ED0BE98FA034AC9BCEB68013430022650926BC3021E50303170022400031980B231C0B62CE0BB546402CB8BBF9D1A0184808A0721005FA00E94A0073B206B53306E12E1B9E4EB48E6DBB9571B1378E9943D40049A2A042C3C025DA0C2F59B030FDCA96C7B2E9BB6022990011540A61E20017AAB01A56A0220500235900212E0022B1001330CC1E10901A4EB103E60067120A0E14B11201CC24334C25B57C2A4B9AD1BC9BE171B0445F0024FE0B545F0A54C3C0112D0022CC00212B08E1990022F50C0BA0BC43520021210B211C0B26ABBC44CAC9AFE1E00017916B1E38BC5B2A5C52BC7C52F61005EEC9139A0BA5E2B0C2B4005D51A043CD0C8672B8BE7899E70BCC61470022C9001148002231002124002ECBA2D7DFBC7F06A011070003371C5867C3F888CBE2A619D6D5A013C50ADD8BA042B9005BC5CB67AA901E8999ADC9A9EEF489E1A500112908B2C70BFACDCCA0D606F9D59C8B3AC56B5ACC82E31A54EE901296CAD8550054C30B63F20C37DF9012610011FD09D664BCC7F899AEFECA9B3D88EAA1ACDD22CB05D66CDD73C54D93CBA33C1CDB9BCCBEEFB048A70A94420CC7DE9AD4E23A2249002AE5A0121E00231B0B619708BCA1C95296ACF1ABD8E15C000F8DC12B2BCCF3BD3CF1BF7C42A21A97B39FEADD79AA5634B043B90AE7B5901116002E7920228E0021A70CAEBE234CA9B01A45CC028100230DD91C47C9E7EBCD11EAA0113A0009C4B88FA2CD2F844D2CFDA99139BD23B60A95B1A043FA00398CC91C49C01F184AA15702E2C50012DA0256F9CB728B0B745CC911E60D3371D032100CD48EDB74ACDD4B1FCD4503D4D521D7F585BD5C36C016F60A13CB0033A9003AEEAA915C0AEAE6AC72EE09A20300329F0011E20033290AE1480CAD0CCB6B1A425A17AD475EDA91FA000509BCF0FBBA87B2D447D6D829D3901479DCCF4DAD8ABA9D42F70AAB218B2E00ACF16C0D820D0B62FB0D915A0B7B648011230AE2069CCA1EDA9129000A50DD27A9DDA8DB4DAE5FE8891B27B9AC8ADDC2F9002B3880222AB91ECB8AE7AEBBB35F0B2ED98BBE4EDCE79DC0225E0C03AEC9DEB889EAA8AD1C9ED9111806A797DDAD00D52D20DB12D819750C9C4E4BA0238BD8E217B02E8F901E39ABB232003F1A4024A49011350013DDC37052C022D0002318034D94D017B9B6C694A01CF2C01276001A39AAEEF58D4F5BCD11040083411D2F93D23FB6DD22841001350E314309EB608CFE9F9B7A59AC0EBD802A6EA0120F001EC6A011180C3156DE201EC342500E4652A023220C4DEEA02DD6902321002740B03404CA654240221000334100389DD0231D00289ADE2834CC8F8FDE27C5DB5E3E8CF3221000FC0000CC0660E0001101001C5FB01FE11AEB3F1BAE35B4BB72CF0A6E755A63F82D3265003C3FB971ED0BB22D0C6C90B02B448E02BF001E859952D400234E0012150032A500129500357AEB2691AB22350DB431DCDAE0CCBF72DB56CCE4A31DEE22938000460002087000990000AB00075DE00778EE77ACEE7DD698B930A9516D09DDEDDE805030321B08EA0DAD319AD01DEEAC07F99B6E37ABC9A9EB706ECAD1280E12B20C4C87B021280E433F0D91A6D01D3DCE2CFFDEAA313EB0D210639206B3EA98440C967B9362AB57EEBB8AEEB0CE000FE8EE7791E011D3001379EE33A2EE9E5899EC17BED5E7DDB3590DB525930E99ABB22A0C32370AA72ECDA2ED0C71BFF01DE5AA221ABDDE7DE0005A0FEEE6BCEEE59ECE6E20BE70C310569900872887AFF296B61C07AC93985D14BEBF9FE00FBAE00BDEEEBC02EF0048FE339EECEFFBD8E1210020CCFB622D0AAEA3AA20BDCD6A4AC9453AF01724C01489C022590022900EDACBCCC1E6DF2AE8EF2AAADF246C9F20BC16F90C989047796301F81A8979934AF8DB6866BF5FE11853800B45E0066D4F374CE6600AFE7364EF4A859CCB3788B1ED9022200032E00032AC0B2C09B01E29A01B63BA62100022710030CFFF514D07E62BF6AA84DF675E2EE2E670464E66569C7803CEA076F8F6D79D07D726F74352F6E4A77F7789FF304B0F3B9AE003E6FE7C0BEE77D5EF4A8AAAABD9D9725599E215002A6E9BBB698B6C7FE23039BFFC777DDD44E7DF2A24F3AA4BF106C2008D23708A77FFA34099C6DCFFAAD8F6D98A999C7999C147C11394FEBB6CEF3BBCFEB6BF6EB795EBCC15F8BF48C9EB5B88E1E30032EA0F400A121C34082050D1E449850C3040502003C841851E2448A152D520CD080C3468E1B125C041952E44892254D9E449952E54A962D5DBE846991D00802263372EC88406480307F00FDA4135468D040458D1A099054E9D2A4839C0E0AE4486A1DAA3FFFF4499435CDD6355DD73C7A0407CE1D31036609109034A6C50068050C2050C0C0810708122450C0A081030710FC4688F06102850A160C5BC80042B106C68D0526841C99A00609091CAE5D791327078F983D7FFE061D5AF468D2A547CFAC595233CE0D3A4306E8B163471E3D7AF6F04113C98F9F3F3E010D056EB4E853A6C59F1E9F5AB5F79CAC89D2A8512349BAA43B64179945AB767452B47009CCAD8B376F03F20DFE46E830617061C3191CBF7F2C19A18608090298DEA9717367FCFDFDFF07304001F143CD26FD58732DA4B7C410038E47C200038C238E3843B63C28B10DB73E76EBEDA7DF80134A38A79882C8B8E39C4AAE0E40FE98A34517A5ABEE8E45AE9BE52CA548E3AEBBB80C084F81BCF422CF2F08229040B009D8436C20F8188B2C0242EE1B30A2D53AFA284A2BAFC4324B2D5F0A60808B0A54EDC09C586A4B80590668F0C13822A4F08C332CC1708FDBF8D8FE90370F41A443B8E1489C68A91391AB43A816ED20B4503B661CC02C1BA1C4B14CEFC0B3CB4720F73AAF03C190F440C9F73280E0012DA7DC88BF2D4725B55453050C608311603800122F2702932450394BD0B31C0568708A30D694D0CD1DE0B4EDB64476F390AA4003254A4F2306E1B34FA6FE4411384309BD4ED15990D20EC7EEE082F42E051660C08120FF2A72BD0A1C38E0533143ADF25477DF85375E953658410419087901128A621D69D6D6502D538C3BA690C310440E4104111D2ACC238FADB2F20D10AAA4924ACFE1465C0A24134F946A286AEDB822D11A6BC4365BD1CA7C6B47BA220577AF06D2CDD2DF76E5A5B9E6D1AE00050B465B3242109F05FE3102A29F878632002C4011C4B40048B860001104708086CB22E237BFCD68D5D207F73C388C02AF3FF8A007B17B7863C235E051238DACE6F06D62A9A0C538E39D9E85D6111047C6DB8892957614AE57B194D966C1078FC9885DF0E8A413514079E80A25FA55020B894249020FCB93D845EFCA93E0DC72C6911025713C76497A340198765A000E64981AA2AA5F5B176B2C05F06149F832F0C00373D249E79C737CA820871C2204A32BE81269D1A7A028863B6EB9E7F6F3CFA2849A850EBC6B0CA4E49D0997357651B9073F7C91A4E824142442892289A045116524253A1943A25D3AD9450A293289229400EC9F3F13FB8D184327F0200525EC220A9908DA68FE3050AF1188A00618D8174D0C74B57FCD6E02B65B92623478050E2AC61C1F0461EF7C1707B09450122E9AC3F2DED63C6615E724C509C0712C5614BC65EF79E27B48E070B8431E42647EF103801242610425E0210952484A0177A184FB94410965A85F263A4106C6F9100FA533021E3201913274420A1091221001108A4E3CCE749018411A21D13AD749304C14AC55940470410CBE478377C4631E3588851961010BE6108B83A6339D39184A852C1C510B6F9412189E4838B3288ADE9A45331DF6D092E1438200C9A0842B3CE4705A34DC1443F7B8F9716E179B33A327F180043F4A217F10C9E41701208824B40F22A0A01F458CE0475EF6D2977E4CE06B06FEB03DAAB9B17B70CCD2002A50473BEAD19978E46034A5393441CCC89A318AD1B4087548442A72918C6CE489F4E6CD6F8EAA929744E7E040D789280C10004660DF7DC610BF00EE0200F39342D0C85706F9095080A30B662C1F82053C9021220435E844DE67398636D4A17848A54504C0800B5474030C88606A8EB99F380E480C1660A6639E3952C548D3A4D4F4D90C7F76056B5AD30E77D0A61D84E20816C290989969A44D4D06A073A6D3A735C3821492D009C689628BEFBC5FE8EC79B84E02807C6254A5FDF0208AA63E44A000B8C25423824B7B4E0480F304EB1832218AB082359816814415AA50831A540106C47C9DC6BCD751011900A4CCE49A05CC41FED2679A749A28A5E60C2D36B49616D69A1C5CDEC58EA3D39D7249A73CF5DECC7E3A595319810C47756A190160D4778A22094800C5E8EE8987A63E557EA40D622732C1A8AB06401478A8E218A3105190EC22A12611C0081AF18003F456A3C5FCADD5389AA529DCD57616C8C1D9E0B106303C82AF79F46B34013BB4402C8210EC18C216162188400456B04501AC3507B00896929783DCCD93621FCBC39E52D6BD5B32E02ECA003A3C48CEB3A0C0251902F0BEA5A236B552289D273B21B97B46419600B82A823B91842792511467ADED6D4DC208078424AE17F1175D033404E3C2E71C6B20423B44DC8E4F24620D7B7D6E49A37B85E9FE2C105BB84003804408FEEE7A17BCDFC5B1510491281EF378647A228E4D05D7DEF716D94A964DDC82CD48C62460E1704918EB6A43E1DF3120EEC0A325F0152A47E02E5E5909434D1C19AA2A12DBA6E401248004072EC08105647482C3C5D2103C60BB73A861C477FEC4274E9CE2159FB7C5DC6583031EB0083110A2010FE8EE0CB7F000EEE658B07A5B16A4256D04A35CEFC74671DE0D4B456423775A405828C318021C8031302E00A018430076F94E9D4104D4019E65AB1F22082C24709710066019085C9232A304036C65AB5BE16ACC7ECD354B43700F7C2C008F11A7E11D5478C71AF2AC673EF7F9CFDC7D8003B6005E1F7177116C6083186AAC001B38FABB934677F3B0856E8BFE4932D3EAA2A0643D3D6F7AAFA4D7B8D52D6FE9620037BF11CE560A80D696948310B74308B69041306E70036997D8B97CED338BFF1C08763460DBDDB5010308CD001F2D80D1ECF011A307B085036C6100E6CE1EBA255D53C63265D28C455564EB3D739A9FE4DE265141032C4C6CE12208701348B6632CB00612B7A3088C78473B8E2082774C7B0DCF8DF8B5056183062C82DB1A5F8476A7AE80912B20016C10042112F0800410E2E48E56F9CA9BD772B697338725C20FA76B3E77BADF53C225B9C0083050D10B28A0DF1BF5F9950240C7F750400B24CE33113EA174A64F3B0D281EA9B5A59E80AA1765110B5080CFB6C00E4278BD9A0A38407767F4620588FE01ED698734CBDBDE72C0C9BCEEAF7FFDCD65E540600B1B563C871D32AF34C7818738CF23CE830A6EA0866927221D105FF1B5BB9B17AB0B820D87DE7A7613506E312860DB8210C3CA1260FA1CA33EF56B5F3DEB05EF7AD8979FE6B227095D7AEBDBBF175BF7565266EF112F621D2C5C07D37638F2A3AB7C4184CBEB0A680005D82E0628B74550007620BD6DDB020518B4034800ABEB3EEF5B16F00BBFF50238F233BF0CF434F42B09B720009891880B630B63BB928F92BFC56B872F100115203AFC333EFDF32BA9138421E0BCBB18B4EE62070698BE052084176380417B00010C04B23B3B1C93C009849B0A84B9F18B370D74C24EE3409150801178811758FE817A69BF9E1B932BD9820E6B0C0AF0BD76700719B8011DE8830D293EC8EBABE4933A1D6BB41A1303EDDA826DB32EEB5B84E97B00B1834023F43E4452420B8C12B97BC241ECA128D4181890017B698411B8802CCCBD7F8B92E25A92734803112302844BC41524BE3CDB3392923841382919140EEA12AC9422B41931B9D3433DD5FBC3490A440C24C458B42443BC88D3193B4600800568044794ABF78B120E5B920C380220680722D00177F88277E8851848843CEB8373782E73180238300719912E3DA12E194C29948BC055A4C056D4B40111445924C7C1A145B690010C200019788006200136020011AC880C8BB3395B920AA8C43B1331FC53033574A62BFEE80048C0800DD8880BB0812BA82E3818023668BE461B4594022F87E4C647EBC36F04C7C68AB9262CC78D149F73B4080EA00915602B5CBCBDE07AC4C0B31239C3A00A383CC4C3BFFC83B8CDC3810DD880BD50802BB8038DA8A8066083EE6203421882EC6A48529C48554C3B56BCC89B0A9071E4C8A674178F9C470408000268844630C978C4BD5E84C4011138DBC9007C24C67D6C8748508387433E50ACA8685A048D188245800307B8803B10040588B106B80006B8BEA1790076E0AD2D288BA26CB78A4CC2A4743B718445A7444C7881CA3E6904BF030979C408120C44C25B493048033EE0834450834E843A0EBA830D7080681A020E28B7A260830490CBFEBC10836FE3B81A1B378E93948B03CC489240A4BCC89839CCC4D4CD52594C8908001A50819DBB4A0C934C71A44C0CE21ADF79047FD4BFCF6C8068B2010E8083EEDAC6FE538040808A04D038EA0C842B20B7969248C03C42DB0447DCD4C8DD444FDEBC3B9200490C90310620045E244E5F141001A080906A0C10B8821483260E82030C5880685A000EC84BF05ACB0598C321084089BC3C041CC5EDDAAE1B13118A144C6821CCC2CCC8FD90B7F4E4502BE94D29B981B60AB6B72AC93743C901893FFCD400FE842E0E1A020CB8490EEA00E94CB4085D4BF2804BBCAC2E891303CCB30142B8C105EC3C467B801F3D8093ABA61D2B42DA44C274B3C8DB6CBDF3ECFED0298D920F8D8820140F0694CF11A4CF00218023298CDC093AF860D1FEBC0276C0808374510EC8BCEA6ACD9CB48138D4AEE563800560832D5880B2B301EB0B8429804FED2AB4391CBB4010031B78803C9C82EC3B003180341E73D2C1BC50F3D4502AA5D401B1D2B62009C8EC93E2449501C8382159800E480F303D070BD09D32DD200EC2010C600769520036C3018AC28117BB8021C0C62255803BD551171B0221B4BCF10252424D80233D00435D34041800231083437D802D50BB272DCF289DD44AA556FFB0D20490819A3880F8FC92AC9CCFAD1C90B7789495113B6F51800EB0011C6007ECE29DE5FCA0356429381003E9BA021CD80B06180240BB0044FEF32E9F61031D158E2084C04503D241DD021B188041D802421083411003641D80663582884DD6EF8354C29454D6D8D06AE5D8CFB0D20558017E6B04A9E9D6E1E45270AD880188832990D701C80EA55C8B1C49149561D6BA20841FC5AEA0E49D74F8A019A1D7F332D037140376303D1B1B4280358A20F4B6B1DB314208BD2930BB178BDA45439307300006790046B5D83FC1588CCC508DEDD8B0150D2B558017E03748609D9235D12D0C093668033DA08436B004373983090183300883B1C08EB480D998409994D91103008F9AEDAD399C436B32DAC1FA193160C851B48104585A425804070CBD6DE5AE034000EE5A34EC6BD639340002D85AAEBDD0BEFD0FFEA614DBD34509B27D819AC00019784C6F3DD913BD8829B083AA5891DDE80334E0833DA084B8B5844BD881BA3D02308883307804B2D85BD2752C94995902F80EC19D0BC1355C0669A94F743406318A65E52DDE1AC2CCEDDECB45348A1D8444493924B4D0D185B76945DDF57509B25D0148B8001118013563D32D9D474EB50803C04E478A8A8E5191DBF583DC4503DE8DDB5F095EBB2DDEB06010974D8BD2500AB71057E795E02D3080396490D5044F17FBAE941AAFA298C3A2E8ADEC513FEE0DDD13294FB5F0DAA5CC4DF665615E5B4F905080B65AAB1550AB2A90816133D9FBEDD28A00BB766B9EE1E85F47508E3FD80D341860B86D03B90D5EE125DEBCF5FE4B06565E987860B7685E0926800BC660C4DD464C535CBD090402F04BA029E1C542DF8CA5921646E3D47DE18B1880BB7063AF1B3BFB8DCC1DEE9330B8133C9921F37524A808E2405911220EE001DE03B8A5044B58E2BA8D90306083967D59BE61DE1EF30E0986E40108CF713A8E673DDFDB4C61C892D234F6E4085B89036004102C517F93DD79EC81DE8D93DCD80D3FF0900F01913C46A4A2A098A05091DE08E4DD25E0363864BBC55BBD85E2287689A580602A9EE41E8324E1D063132E636905DB4F86E68BB0528960802A704C39DE543A9E088171903599900AF99524EEDD3D3062DDE08D0EC1936451E64158E6A7A0E58EA183FF05E4DCDDDDDE3564E0FE65E204465E97DD64CC98E26216571E438BB31080951B5D61569A158EE6689EE688A8E66B2E65C063DB17EA0E0671905D99100A31E0361867234683568E98744E2F116967A7300A8A1162ABD88D4830E25DB604433EE00821A1B1288BEC883B6206E89C2E684982391732637659E8A0969F351E8903C0007EAB084DF54DFC752C3341933B501309699337E1683929E7DDF8848881E5E0F061B8118EE4B00A40D6DD5D566237B1DBBB158B9A460AFF600A9DDE699E16B29FE68C8D156A4F6E68008862A59612A6DE0EE6DD8229988238588743400774500775B80438A10439C10DACD6EA749665AF3EE9A9A0833FC65D4126E497A6DBE1BDDB45BE836046E8FEE56DBBF47DE6BA0EEA697E0046900115406A99805D1D46D9A5C481BCB2000AF800093004433884DD26ECC34E6C4BA86ADC88843C7B6C3CEE6A68C1CE77160A790E6441B6E71DB804B31EDE5FFEEC60E6A92D315DD3465D2B1D0012A88111A881B475ED1C9EE3D8E6A9DAF14ADCE91AB0F900DDE6EDC356074EF8EDC5166EC7BE63C8161176FEE1201662E6CE6502BE67D94060E3258B9AEE67F65268ED66612BB58115E08001A0174F19EFB50D150D039039928F3ACA00C3A800AFA1004FC86DF7866FC44EECC5266756CEEA90C66F652E693EEE63FFF683B1EE5DB93564B396E9B0405E9BDEA1EC56F0B0555D7E3B8017A06BAC24EF6C36EFFFE0BDC870FE0C8540CEBCAA800E6FEFDCDE6D44286CDF0696DB40833AC9EAFB8E656531DF187267A8A018DBC5E500D6E519AF711BBF5B9655EB0327ED33EE7168FE710008F221D7EB12E16B005126C81088C3408CF8900F4DF1CADC59EF10E7ED2A476CE08E93C626EE575EF175F66A3EAEE5CA06E03EC04C39B1E7B9557345D65BB770F3B84BF0383F5DF7BD011510811580011560840DC0E6A5D6E6FF10830A808C0AE8011D900D61E8010A708F40E7750C1A08DAB66DB0716FC236EC4457742CD78D2DE7F2A188ECFD9EF43AE80D2216604C2FE4DF95EE263EDE9AE6DB91F85C2E097551F771A2AE88B2BDC217A0C22B148156DFEB57F70FBB4A080AE00121088279FE0F022228823798335ED77785C0A32577F2608FF2F73E6CF97E69FA66653F50F6ADEEF248728A2F9721FE26F3CBAEE702AEF101CF760387120170067438023880470A9F6B70B76B71A708012080483EF99357773C67F7FE282E84C8811FA0F7990F022138824CD9F79C579209708112088116F80026990CE4E4700F8F72F74604F896EFAA467684EF10A07874DADCEF1757E9229EF8244E73CEEE014CD80134C803306083BF79A16F17F96A6DE89DF9F887B8F31CCAF3FF60832429080A288220008220F801266882250082BA17821ED0799DD78019A8812B5C811748019062F282A82342B78027B76D434798624FF471C64C344C78916E76E91173CAA6F4FE79D6E53388835B9E834708B7B4FFD6D22E7BF69D66049001C77C80F94DEAD72EEF5316103933080FD081BDB77B2E588111588126D0FD2258A6BFD7770D08811528810F6801072A01815872F7A08010807BC9D070C6AFEDA33F74F84EEC24CE908F6EF49F409685CFEF487F6747088B4140693AB003369882619268A04EFD0527F9892000DF777DF0D6B98876BF23F70F64537C0A00881F41800451C4A59010282F040211D22303C488122752AC5851438C15264080A8308286050D1E264C08A921030C191A56B23C69F125C49632217AB06093C2074F1F0C1DEA890E9D3A75972E59B244690F1F3491FCF8F903E829203A52A74E0D64F5EAA0AC59036C11FE032000D8B083666D9922460080B46AD7AA0DD08003DCB81B12B0AD6BF72EDEBC7AF7F2EDEBF72FE0C08207132E6CF8F0DF5D64003358B1602D011A3002D42534820060B771E52240EC19800F8A3D840029DD10C80F3723B40C04A2C303CCD8B2336870B1E2C44A0F305E54A0B07B048C19194ABC20D1C28386091228D09EED5CA24C99352DF4A640C193A1EC3D83AAE344B40D253D7BD0A0E9C3F48FD3A754A9061A22262C65B6016611203020FE5DCD9B39CCFDECFF3F80010A382081057EA618601C8C80D65A182C58D96599BDB5DF069D19D85700134CE4810E44984690152F8CB0446B41F060C173294AA4C20B12AC64010C23541081082C9C400209FE15A0B0C20B305890C20B22A610928A4552145D4BD3F556C1091FA4F34818718071C4116758B903254721451E534D0192C31D810822C855816465157D072480195EFA6DD6DF8571CA39279D75DA8918827F35F6005B374C06219B7EB9C9D99D7665B8A10E1F06118430548C90856941B4518191298A3002052B790492061444C0820C2458F0C10B43FE58020529D460824B95BAFA924C1F78205F0002D82A061C6C4409C694569EB1431B5FCC21551DC5DA6187246CB0318501033098D7A070C15928B5D55A7B2DB682E5E9D700238CC08001043CD0480D17D86559A0184EF8A685D70A3041AB1970681A113FB016C4132B1431908928BE1A9B6E98AE1442FE0D296850C20832A090B00712AC5082A627B0B0230BF1FE7B3145B2E2C71758B73AF3452468A4A1C61A612C7BD6C67B45CB1F5DD9BAFC32CC31CFB9AD5F368C50C50A2BD450452329A785AE84FBF1D7AEB503503A510F1E3604851BA429B42F41C2C086F145168CB0020C2888B002091458D0A3BC248890C10C2BB000420438A200C30A2D584C35D5B216E6053A3B80118618F711B6F2B432FBFD37E081F345B35F0470A0820A90288017D07FF14D74B5621C1D91061F68515A1059D40005143538416F0F53C3BD61092A8820830C297CA0810524BC50020A3588A041082BC4E0C18E1280609B8BA38FEEC1EA850D40C0B386F1DDB2E0C92BBF3CCC84EF45FE00033EDFD5B8A0EB128AAD01FE4A64010FAD11C1841B5C342104BF3FE4E0FB45277980DC491A48A035EC286410C10BB6137C03902BAC8E3ED5C08390EDF19827C0011270668BD1D30A0CD017EAA94B6815CAD614B4279137908F200321C2A24A4384D7380749299A494C5892017F492004B20A010A5C100318F48E7F171BD5FFB015C002D2B08636348CF3F4A2801728902F0CE498F5A405396AB1418211E150052D18291E54E06D17A9C0722A6001F6514E841F6C9F4B340082E8ACCF85181BD51500184496DDB08C663CE35D72981705AC80118D78E31B55C0817345C871637C20B68660C49878E00D0259142085C044275EA40435280E0C60208212B0FECF021368621639B24542CA268B5EC458053E2008313A107968FC24280BA846BCB03167A6D49908E8982E203A7088851A82E82622921C08A3085A10C20F78D083263EA772214018D61426AF12B86E0428C8540658A04216448097B29CE44A2E79C94E51609332BCA32743A9CD6D026E9477D9A102082086718A610BABFC591DABD7CA6C85263616A0400F7A90034A51D2225AD4000D44D54555C1A00437A8818F505203531AC7622768C1726C124B698E2E391508042729944D6E52B4A2D7F2A65D1A73CEE9A5B3811472A59D0E159BE8544A031E8101FB1C26020B802003403A014A4820010910470644A24DEB4C2922B731147DC9B10044AFD9498B12B5FEA885C2686544B0515506EDA332F4413DE1969C118C8D3625305B4B5937819A900006F7DC0D32713A0212B020062E50818B5AD2538C55CE028388E89B266AD4B9D2154048AD8BF438BAD436DD11A4757A5754A9E6BE17C80F222A58410B59E211E394B03837ED146125B94528BE13921C89266603BBD60C680CAE72916B5D432BDAC1DC95303F54595FB165B4684A53032758810B5C72D8DEB5E40357CBD9212BC6121048E005320881094ED0C410BC400484F5400B5CE082E388C424B459C916ABA859B8C9CDB3D202ED68B3ABDDBC947630A7D5CBE3B045809228F4B91EFC97064CF0B0F6C5A00631E0884B19D9DB1BB480052C589D07CEEA82089C2048FEF55B410840D05E192C57BD24A0C10A0CD60212C00E062CA840086280CCE62267B3C1B32E19B7ABE10DA7F18002FA2EB4527B2D236C41393395C007524C810AB0B8BC4862ED486B1782F65160042F0881045C0050E43E4C92B9615B0D5CA05E1728A70599B24D0BB648811650279F192018095CE0BA94AC40064D94408C60C05386FACF6533E4309839DCDDBAA065000C002988F9BACE6C05E20A570081396A529D14A378A629FE80755A3C45F39294364C72A6FB64805B187C000421A8420C2C96C9E5D4EE6CF7CC008B32D5A918AC0D6C19D9487B5D9001DB0817472CB8418BA6FB2A187A199B613EB586C7BC16058840002AA8420D18C0543BAED96F01FE188455C6F4E6385BE01C73FE008AEF9CE209AC58A1B0B9A74C2CD082103079251248410BA55B9B1A6C1922970A4905643082189880AA9B7EC1EAAEAA3B71D7CE05337A416C190AC6520F15D5EE16ADAAD312001830E2012F504123FEC49634E747C405BC75AE0501E7F551A73774B673B0F12CC52942F7C56FC3080B5BE5016D87E4032B40816BEF9D0114BC2053405ADDC76D83BADD188CA1990C2386FBF6EE951335DE001000091EC0801A1CE00134281E3AF7DAEF5A8312E06212C4AE95841360DB59D8C5B6C99E6772EC23DA1739B87B81642E1E304A2D2C530BAB40465AC0D9167C80A1D4B4A65025CAF2B1B7DCC38E93010718711948E87B2DFC36FE94BFE77A6B5C8BE9CD03A7CED0735274151F3DE95A84A6072260E41998C0032518D2C6031AA351F99605A70BAB173BF550768B9DEC96DFA6CB01B0819D6DE001E59AB53A9D1A66B0D01DE841C77BDE4F7C676217FBB9976D496F20525FE49CE052BFEDA9E4831AF6B85EBEF7A0CC3C0012B038013C06F41E6597EFBF527AA0DF9DC5D6A133B08D5EECF52167925B9C62745BFB01B7529EF7C9FFBE0D552D800308A03E0430C001C2657C568A1EFCF9593E9C79EDFC83435FC5489FE2B15F7CB1B6E6F54E5F763F002E8FAACD1C218800ACD5C0CEB49D5ABC1D5EC55D0062C8F2059D9C0D9DEA25DC8A2D9CDF9D976C7456CA61D7037EA0CBA89A016C00F4FE6C80099AA0AC014A53211F0822C6DCE59ADDC95FDE459FF4E959FE69E00798C3CBFC5F0BF660B6009F0F7514FBB1A00F0A08E905DCE9FD1AD1251CEB2D1C6C7459F77D569CD80021EC851830C001E8C5032840FF11C61676615A1C8002E05C9C906111EA05F03DC00230001BDAC0FAA116CF9DE19C80C555301FAFF99AC1111DD1C55007EEC500F49069B5D15EBC9A0C74218B0C008030C20B98215B34C20AE89C8098A01CFA45E67100022260152860CEADE0F54CA29795DEAE994306A09C11D68A000C8018A09FCEF1205B180006908007EA85005CC00BD4800AE8050104C90A54E15AD88A5A34C20820E257C8DB57E05CADB4057E246300A8C0831423FE99010024D4D1310EA3BC154F7C3C0BCE0980CF4C2300D4402378E2E0989D5F08C008DC80022480F0F1890AD25AFB81E3368185119CE20014C014B8822B248332E4233130C3322C833688833218819A559E7C10028BD4C0CD99D60B38C82DE60507BC808234E4CB45E308A8006600A30018800840420028002338C0A534028330800C145715B21A6680641632C00D100033A2450268DB0D6421001CC0A5A880DA61464C8E002440820A5006495624661CC00D5C80DA414201F2245A08003092000750460330C205C40806044002F08844BAA35D649E082C8E5E30A07C38A0560E50C70CC0F014C001D8233EE6633FFAE33F8AC3374C0336608334D4A53440FE43343CC35EF1E00034C0D60C541B398BAD0C266116A6ADE0072A064045428B0CC0800028229B38220670C00ADC22302240A828D005D4800C34800AD4400300C0CC49A5A03DC001D4800300000C5481B99C8EAB8D40001CC00B3002AB9180B390C0085C000688C8F08C550338220900002154E602D08008040002D4000938C067E6E6672E0E8B38C006AC406A6E9E0844650D2480015459688EE5568AE35E949FE130C201989F30EE9B10C2613B7A67CC942501148001DC6332ACA532B4A536BC6536C8A55DDE6534F4E735FCA7350468355003815A8357EC1C41068003DCCC21F997B73C2884466884AAA35A90635656C60ACCD1CC994BB734A469024023FE88C80AA8A303ACC0E26CE706CC1B09A08501DCDBBC59A48D59E40B6C00003063004CE71836400D2840729A0B00A85D5FEEE857C8000D0440883E80006CDE033CC00AD0289362404DAEC005E422230C4F63DEE80A7406939ACB0A40027B7E276094D20BC09A29DDC01B8297587EE91CC6E3F018407CCE273E120331F4E37DE2E75CEE275EFA27800A288112287C9019203660BBA5050180A4CEF008D63480A22E2AA336EAA29E675A58685E908BD8C8004005408B7AE95A3862FDF86889F2498B6E00393242A41AA7E68DC006D00006C8C006BC4016BE2424549922910003B0915702E30050264DDEC0CD296222C1000D100293A6E69646E905B46857A5C4FE0D08C0432A50B176A99AB285AA1D402340020660404FF66477A227240AEA7A46EB6774CC29A6625ACEA73EF2E37D8A83BAC6255DDA659EEA69805A43350C689FFE29AD04409F12E8BC560334046A580E6A5B18642DD680991A86A446EAC610C058218E0A94263916AC033C658826008BA4E4880240A8AA288BDE1B00D8DB08308201784B21D6286C4E67158A0102084072D228005C8A997D1E011CD832F210C63E40000C6BC74AA9B1E6E24F0AC0032850AB3AABCE422BB8A645E695A75A10801BAE63E81161D10A8A299A253DAA653ED6273FFAE3BA4E837EBA6B7F46C37F5E43BCD26BBD86C5BDE26BBECE6B80FE677F4283343C4336640340EEA5A9DDFE852B92C00AD0246108C06CA645C8A6A65A7040156CABE7DD2224782306D400A9B248F95526006C666718400D40E9CC8940AABAEACBC94015CC910142E98FBE406C16D7025C0A010440496E00A7DA0782A9C06EC80000D8401B91A40CA8ECE779DE1CD16E8D4A2965CED1E13AEBE789C81C15ADAA718501D0402388D316BC24D31E5F273E2D329E627DA0A57C56AD7DA62BBBB6EB5DBEEB9E0668BE5283BDAE057C9C6D35A4ADDAB2AD3460C3DB8A8336D467D52AC37CBAC20114408801AC5D0C8003C4A2CAA800CB1A000CA4E057604095B64523A880AD60403E4102221A255A5C404B26C00D281001304277862E09DC00855E800864A14AA6C506FC64EBFE8A80D82CAD0130020940C205A800221200243042E81629002C000C9040BDD5A408D085019823C6DAF00040020DC80006A0054B6286462ECE064CF0D3062F2300A629C98ECF80A5F7A6A9278AEB7BBEA9B9D6279DD6295C6E6D5D626FF68AAD9F92EDBD6E2FDA5AC3D746835D9A2FDC52F132546D32D8E3FBDAC761826113CBAFCCF8E2603062783EA35AB8E2F0894D5BD8F15DD0715E68631183E75E184034F2F0B56E80BF6E223B3A2D0806403C961FFA45AF32C8A95BBEA53864C39D72ADD77EAD807271F77A2F588031DA7EED35B0ED5C9EAF362C839CE663FB1EC0141480601A015878062B92DD00900067DA58F1316F81649E76EE0513B78513BF1BFE3CDA4A9B96EB5AEE239DAAEB155B6F16EB29D8F269BE86B2BC8D32F886AF188F6FDBBE6DFA2EC3366C832EE80231BC72B8380B2DCBC92DE332036CC005E0AD2F1308100A737AA2691C6A98B89E653DDEA3F45EED5BC625165FAF3487EDF65AF3F7667335987234B0ADDBAEF2323083388F7337F0C238EB022D9002298CC2285CC0165CCB3AC73348ABC53C7F653DC7EFB71215149F9F324B6F15FF63F57232BCC66B417B31328605298BEF352C74DB9AEF2AEF6344EBC2445BB44567F428C0022AA0C22AA8422A2C3553AF422B2C7248CD6D484FB5B412F2670CB3BC15F30D41B19BCA273EB6E525BB74406BF134CBEB4C4B8F4D67F336AB6D5D9AB1383CFE743807B52E50342D5CF428B0022B18F52A24B52CC80253A7822A047660BF026113B62A38353C17CA4753B52F03A1B8EC15567F8556074E3EAB34255BB25B3AB3264333597F7235D3B4289B6D9FEEEB5AEBF433B86D36AC32440375378C335DDB352C183552BF8252FB35530BF66017B66EEF76611F762B5028B52C36630FF2600440ACE20C479EA9493BF20E42B23C922B3F9F6B33672D67776D2713F467D7F21723746933746AB36538EB0237B47645D77546CBF62A18762AD8366E0B366FBF377CF3F6619782CD5A8B700F37B866DEE6E1EF67FE2EB772A21001487D402D32BFE73ED3E7F48AF558E769F69A7576A7CC418F76298FB1773B3431FCB45CFE0FF5791F757A2BF55FB7776EC7B788F7767BC7B72A940221C0B181DC377EABA9CB0500F1FEE2C8FE77232FAFF118003118433728A3AD44F14AB3654B3FB3F5BEEB757BF6D86A77688BB6BE6A3385EF746A3F3444738344D3F5506B347A7BF88797F8886FF988ABC22BA0426C237588EBB62A904202A87881B0788BB3A7CB91A38F020007AC68F20EA18D0FC60024C3369403383443392840F462B6153F339E76AD2753F3911B0A3683EF5AE7745DA2F65BAF763790F76B67345EEB355FDBF6526B39976F3AA7D3F62BC0C230D45211F0C030B04252CBB799FB719CA8F99A8F65E63123163200C7CEB97A32B7E314403230433378C337C4A5366CC3378883FE5C56774C1B7A176F635A4B78F89A324337B46AC7B5A4F3827917B5A5D3F67A673A60E376A76F3BB793F92A0C4311900F20A1C630A0829793F9288CA17D4B75AB37B655EFC516D000AC5501094075648797600CC0012883368CB53428434E6FF15923BB9253C3BE2E3B373734158BB3384F342D8CF3456FF86C5BFB6D8378B75F3CC6BFF73030C4871004100883B993392B3000A4FA1FBBB73B71D7B10360800330E2BD4F765D180101DCE3337472590F6835B8C2B14378B22F39C227FC93CB29865334C46374517338C557BCA6673CD35FFC981B362C408DA278CF309C3AD43340B7AEF8C9A37C7EBFBB0E01E2016CABDB0523800FCD388A412C5BC3916FFE0CA6F6BCBEE2B44E97EFF9C2F53648B96B0B352D68F4D18B795F67B9B6373DE0077E6103B6D51BF6B7773C4168C10F60CE0FB0C2B9D3362C60FDBACB31D7BBB8D71BCA03D84CBD3D0002A81D19DA0C032CA9E88FFEE8070ABEEF85181A8036C687DB876F322874A39B71D013832BAF712B54796C5B7A6DFBFDD30BBEEFFF3EE4D7022DA482C8733CE668812DD0C0E5940630A4B761A3C2534F3E41567ED767C6ABE116263282CF24807F75BFF7EB22E74AF63DE74700FCE1244F013440434EF7E77E6E03BFB325FB9A73DEBCB15A14C02AB0B7C503BFFE0BBE7B5BBB2AC80240F8F2A52AD5AF1ABF54BD52F84A15302140200221B2844B0D1A0F810411B6FE2A21C355AD0C001039926449932751A61C19A00107972F3724503993664D9B3771E6D4B993674F9F3F810615BA8B8C4E021746DC70B0940181933646283070806A55AB5407AC6CF9D2E506043B03082030C595B265CB9A35F396B6DB01020304180970530CAA8E0BF1E6D5BB976F5FBF7F19CABA0B78A12AC381052B4C95EA95AC54AA56B15A452AD7AF55A8DCAC1871EBF0AB55C388440CA2680597115030062902AB23E4560784FA64C9B5ABCCD8B771E7D6BD9B776FDF438BEE744B93D008A73867D3F60A34C08002C994153376EC544F02AC0967D7DE97E0E0BDAA60D1C2CE30616755B2123776BC6A95AC55B448314C35CA969B5AAC64911AE186C6FE881AB560C98C065C18F2689888322A62892248E802C11FC683AC94077EA32939AE62AA50C30D39ECD0C30F81EBADB8E36EBA10A6AF6E336280E1781A60BCED60DCEE328EB82B68855F1E43CFB1C75E4965325256F1B1975F7AA1C18D5F6E78E1855C52618584116AD90F95515E1881145646A061152A6F1968A155804130A320DA78C109D156BB4B955208990B44914CACEDCD39E9ACD3CE3B7B224A44E3728A9383E5F014490056BC8BD150BE52C165045D1823884785D0F3859615984C85945B72A1C5165A6419450625DD8065151A56B0EF85156A29E5C955725981D15E0E42E5851B16B36504586019C196CE1872484C8D5E4026088834A251A13513FE70F34D3F330CD4D967A18DD6373D791BB1CFAD304431D000622914B0F31833F430471912C820721E4B0515587AEC71945A6AC9E5855B64A10554FF7A79C50D2BEDADE5155B5E2045962447F10560566A29D50D1948C86595FD38AAE5855150D98F575558F96158D19658218B8D81186615BC5421250101E864D63669596ED9E59753A27627021A706080904EB216396C4F7C96DBC1084AEFBB2D5F2419E8541C2BEF3056585BE5175A266572955B46D015964E479895045455B961055252693517565E7083965FAA4645E25164595B966026CEA5865B46214517C968D032955BBE7E858617EE6B6D15617E2DA48642860DE20742491E450194E75419E6C9FE29AF3C5099733A60842A484860849549D2B9449EBBD2164F6E47C68B1520BDED919425D34D083DA4D153EC95BAAF5EA516CE6021C18D55604195CA5AC25EE116B46F7825615E64D165055B5661B8BDE1A9DCCF965A7A993A60595AE5B47B5256B861945B5ED045957DAF969796547AC9721435330639082656B062639181664581AC2227FD4FD02D1740010E703798C3C90D44C000111880112250D64844671366990E4FAE30962A4691355C844B31B39B0FAA1E830A544C6614EFAA052D0C030B806906210703DF0AA0F6025E60097A32A0410933438A83B907626E78012C7C41255BA08204344005FB1CD62A5DC80256B8F005AC70D4BE2A058323BFC8FE855D60410ABBA862847981CC30B400322DF0208C40E0815DBCC88A71F06F59FE6B1601E1184739EAC4803611405402200200248004900B1D9F76469B3F51F04E16EC08FB565083DF1D1216BAD0C5D560F1025B846D0496D9970C64A01956FC8B52BAC82429464129B441495E4C4B0A2AFE460319DCC016EFFA9A2F1EA625B9D942179971C32B7A512A5BD46057BF78012EEA65B6F9F4E27DA9C8226B1282B4F224A63BDEF9E20FC61404690A4118453B162C9A92323702708EDDF4A637EB58933C2610060A1081034D124171BA9190763224796C658B156C9021B4C89A666851B11BE8429223F31A8EF8763749A64252A8D2970CEA4335FEB0C748ABF021FED848410E54E8429197D2CC080126C9BC8D0C4937200747A684C602814B3E493B56EBF80219560C83073FF8411184310C917A1115AD20118824F74D9DEE148EE1AC09025E50851A54E105ED54A785D809AD29A0918B49C9A00C82444412D8CD0DD99341D56E25188015CC79E418DE62C8660B59E0620580CBE0F320B3AF5590D50DB9180109D895305D866A4B77D39796C0A5CCC0280DA5873A29F05811585414686820D1A620DFC853C52ED6653EAD09013800890DE02C9D801C1D62DB592703A0311593EA852F12F68B7A19CF173972E80A505B29F2092C6AAB78122CD8570326A1B20AB9385F0D7AC1981B8CC02EBD60582B0F63B71172248334C8853CFE6BD19ABEFAF55B86712E4A5D039BFE21969B8CB5EE75EBE4D8993040BA0038C0057266590926F559754966309E570B37D400AAE0AB856360211979222960BEE85EA750C544CDD8D22EECBB01447F819DBA71C43D1C09D77992761872B8810432B8E272991BE1C25268BACAA92E76319C610D69F7240148800246C088048C78B77E84A078D7895968B9C830D1D34C9648F58B8AD10016982181DA5610DFB7A2C220A2ED5D7255A18BFA5CF1C08721E82199E95CBF10843D8D81B08463F45CC32C86CAAB3045663794530D6F99CBBDE1B04902A0822A24B20A65AE820A1E2892A3CE6482D01A14415E77831ABF027C37CE65D528454981F1C21657EA05A180FE37587091F4A44F6EAE92A10C23293B8ACA3EBACCBAE25B375294A214A7685385317461B110C0C45DF6F4A767F265930CA0013460C40218C0809385F7A629560E962347A8B0E17647AAB8057075012F5D30645D067E0C49BB53185E259AD8877E6EA35BFCE848D78DD2A630452BA09D6A05282001087880010890E60E69B9240FC000072ED000CA829ADCE50680A84FC26992681B006B56499B7D462855D0821722553282D1531E1E0DBBD8FD5EF2A2A99C6C65B342D2CD7E76035AC1806953DBDAD87E8B00E2120076DF26004610C000C4D0E992709B240FD84057364061738FBCCBE81E35065490F21BA0B9B2AD46AA8A7D168B91C9C24BC256AEBF719EFE52802F2621EC1938B34BE1EC569C02E10A1FB1B50FE070B80840E2BE9138C49D33155724033ACA20C659B4A18C890380E323F1386D5C4E72B133D6E42551410DCAEA1F48B0FA5A307F96CC731E779D1FBBD13E1721AE083EE9A03FBB15081F07B509F1800724FDE110DFBA509E7E71E71CC01553AF3A31AEAE0D714C3E1BD3C08634302F8D683C838D60DE264ABE0E93068C9DF4D72DFB480440820B30801103C0C006D81EC85747EB9D7297F0A2195D6565479A147AE77B031A20ED6A0F5EE9863F7C502AAE7802487DEACA70FE5996A10DC97FC3F297C73C34A291FD6B6CDF1ADDAF4635A8610D31A4A4EB22093D57C25E7AF5CBF1F482224153642000FE42C4BFE56D9F3DB46A6FFBBFE03EE0C9BE3BC1814EE8A24DE118EEDAB6E02D96AEE97A23F90680000AC0001A8FEA9CCF2CA24FFAC481FAAC0FF3B22F1AB68FFBBC0FFCA82104A941E2485050B680FC3EEF24CE4F4ED6AF05BBA9FD4442058CE39C3049DBDC0D05DDCE59D8C0586C8FFF780E32D8E3FF0A6EEFFA2EE1A62D016CA0E108A0F01470012D0EE3A44E0229B002254F1C2A2F03B14FFB3CD0FB4450044950DBBE300044D01AC66DE352D02456F04F1AE0F85CB00D1B2B388C021204C073A222F62EEBFE9E650A7830C27C70313C2308D725EF0CEEE08CF0E8880F018D6F01132FEA184F0AAF2EFA268FF2B02103379003B7D01A40B00BBF10CC48FEB00BA9E1FBBA6FFBA2011AA4E1199421FDB8EE0CBBEDE368E30234CE0D61F1656070E326EE065102DE9E65B30C8D3CE88ECA3C4384204D108910F80A31F006EF00978EE99C2E2C2ECE0119AFF99E0FEB26EF1BAE30F3B2D012AFA1FB3ED013C3901325CE1341D11A4411F3B0211BCC71029D8FEA92C115B6AEFC00200D5D021563711E9FE5F40860E1166EC444EE8FE4B1C3C8EB59AE43B9A4ACD11E0310F16E087F2FE18C0EE98A8FE9D8F0279EAE0197AF11AB6E0A2D1003B170033B501B31D11347B00469B11345F0FBAA411CAF61144BB11CCF111DA9AEF1A6A00098F021DD111E37A0BBE8F126A3E5F418C0CC78B20A64C00651ECE5F0D05906E507FE8150080390EF14F2089510111DD2E99ED00121D0F12610EB2C501C2C2FF3344F23B7F0FBB8711343520CBB90244BF22449F1199E612559721D5DC100C4600012F021D94C1549020130E0F530641F71722FF1C41E17201F3F4C018C2A28E732070345004A012109910091B029E372199F500CA2F0F1AC3212ABF1FAB8321BB53113BD1024C3121C495214CFD21CB3411998611B884119D4D115082F2EE5B227DC714508E102B2852F6DB32FE1102C5EF1C4FAD1F30C33501AD0105B33012113EA0A600A28D2F9200F12A7312BAD31333793333FD2335742244792244D7214D3B2EA96611BBC931778C191C2136A68E1020EA009718A2E4D02B260E2C26EF3FE3D3764160500125E40061E4005C2CE16FDF1379DE5357922F99AB1009EB122A1AF0AADD039A5E11A3772333D122C3F732C41B103A3A1144BF3F9BC731B74613C1D093EAE04184766CADCC3B0EAC41D49820158710314003E55F4436611035E801160000146A011EC70BCF8F39B18700927B32A2B13239F530B35930BBF123DABF31B21B42CCD92424B7319880143315443E1A3849866B872CF28112DBAEC84444702014E741C56F44BE333376F22F51C4000444000188006344E3F7D7328072822970F02D59147A5AF0A11742BB19123BD52131DB448C5F23A23F41ACE322D4B93184ED391B6013CC9139446614A47867690EDB9B2034B47543DD1F04419FE004C35755AC454824860030840040660037EB2FE64AF365D6611253339ADAE32290F4115B42BA5733AC1F00B41F3FB4453494BF3341355179E5417A0E64A7065B84A2A52F98D3B16CD8B566142FC7337B454240E005337755A7563163780BD4640066A00F64CF50E5135457693FC18D039C8822AAD2EF22CF34EB3B00383744F3B933AE1C43A01353BA1815095411BBAD33B33D49136143E58C1433FD458118DB9120215028B6938C23B4A01019A55379ED5BB4E74F4A875624384272EA03F3E95DDD8D40C6FB44592811B788113954F402390472B501233922BF5B441E1355E8D745E2554492D545F3554177A4F5845286005F6588B0D3C58AA085C8A07FE864132D4A41492A552A98B260C20621B96629D962466B1010EE0E2C27563D7ED1F65C30094A11CC0211CBAE1010A200209940A27EF4E2B714185944F89D465FF3404B13357ED15F230D457153558A5B4C6D8A34A7F4D52F5EF3B60810784409A0417088A007F8EC564C235CB2CB52496B62BD6F06921978E3A559C66943808F3DDB0762706C015968119BCC11BBEE11BB4411722112B33304181B45D59766DB94E5E3FF16D51122DCFD1507BF557ED36B0F0163176B66FA30C168A0064102408B4C07031E87190D6C29456F49A367229D65A65402A0CE0006BD4D5BEB54FC4003AC4E1744B51194E126D3B7248D9CD755F174963371B926157BF333CF735FE5899066F75566079B7673F434C8825717E6018CA831518A0F3D2336967C20094977905982666F106CAAC0610588FBAD546DDB4266EC6159E011AD87533ADC115D4766D6DF556E9D55ECDE242D777437B6F4ABB483EAC7460E397D88E1563B4E057804011A00922F0073CB2E9B09077260A802B1E778075F82466D101EEF28725B624AC562B3A16CCC6620AAE413A3731000C40593218664F12F338B8497DF5836DB6F746A1C6BAA84A93F5847997C994F540823708B2C063EC57DEB0A9377FE361D9D325727887E1582466D1268AA389C3F08E9B1017FF37010E6016C2F7655DC11A5E975E4B918359B2147861514B288BB79820F7D684BD38928F855544FE8B645081078057189E00B51007228400180CA3A6D4D8E9169724DA9803DE388E77788E6B8210AA246F603996637904B8558F55A219B7C000DCF20343F124B34F19B2A11CD151355BB235214E2EBCEB8890067E25B9990BED58D2C58342897848C677418608BA8006BAE005EC0722880018404A4431AD3D69E29453599507989589E30520E14F36E09DE1399EDFD906E02473C5492C1A1198A73174BD81175C610AB00DE29E7226CCCB99F9D031F8B03394C90F6704167E0117062B6174E582E2272288401884A08C150164F0E7236CB27F6B5825CC7979D1193ED5792686B89E8BF89EC35619B6A118CAC11842962702D2A0BF83674966321807590F6931FE0402693CE3D75021176EA016D826406E605F6AE00650016036E382AC798C9DE00530D993C15942F4F243D8188749BAA46F738EB382D4080125523A1557BA4F6E46193E1A2758CCA6F7A2C96A6478F44D3010FA3C20233160218B7B211746811616062156419E766B04FE9554C821405680627CE7622E197821E20946E07721420B40592116F67833AD9CB9DAAB757816CD4900C4AC06327581A9B7678872A7DDFA58468106728B3C1EA547682E926C813C4AE83DDE47157061616E2162F6C33FB2354A7E6852E865526AC1A1466015EC0B86EE6AA63C234CC44408A08006CA4835B00359BA1AF94A792406802B2EE0BA391B276130006040051EE0051AA1FE116000284799881BB84EDEEC50C825A18F05BF80CC4706AB5150A1178241516E4977AAC4878887AD1286786EE13F7447B67C816F6881AD927AA2770B15F40B17CE87B73888212A3A22848004B8002380E0AA1902716938B367620068D3255CF1BB05180653EF001860050EE001D494B485B27AEFE4676E1ABA80875D528A64024E3D92E930204D92188217FAC30D46415D32C386CA66AD786914D00B7AD06715BC06167249179E680578C1177E619E26C50D74A11468E17D76881756A0176401B948414DE6174184800B9E203482800722C47112B7421E56004A1CDCEA1CC5C134BC65600318C1382021BD65BC30DB3B65E0CE8BCA833B608106665BC996FE99E698C998B2F831E8CD338E6BB0EA23576EC95EAA6AA378E13F30284B70AC601EC60D50693F16C6C8C9EA177C81CC3FCB797A61C646411736A36D6A80B528A579AA06472C1934C46885A95B4D1C877F3DE4CEF3FCC4F91C72679103868A031EA006C0ABD031F7AC3F24FF3CE216DC80172A1CC1420862EC1B782846BF69C123DC4A336C0BBD28C63F207AA2372A61F2A9C079A1CA0563B76021610466548CC8876688167461A2765DB8F3E33F648117B2A66CF023D758415D68018D45452FB86818A049708340087800B52D7C7F429C9C6702CFD16FD9997D72C5490116A0391840632F17070F9D4EB01D6382CA880E6932C4C34718E6156881066E4179FEF6835460887B788917D6EB17B8044B9EE7757AE17CE04A9EF2C60D6EE06C70ABB400C6A10DDC5E8C486E6E8114D08714FE633E00A749AA8A20C203481A65DFEA9AE78666A57820ED630A99AA791CD6DB59B35B50F27CB240FE69EDF135CBDA960B690F13E505624C162CDC87AAE4175E61B7488106E04A160A1C7AC86AB7111F157C21927EC71668006D6C8104562B156C0516F8E6A346E11708CEEF4781174E0548D6EBADFA4332809B06180516320532B25821522768D203A7FFEDD14488B02CD9A6369E05ABBD2BB2BAEE35F5F4506ECFD52CE56FD19EED64A9800660EC09E603FB466841068A1B60328953622BCBC9A6B8C15DDFDFC3EF69403FFCFEFE88D6E6758E24878A67054880F239C5F5E9867C8E1C3C46214802A351EADAF6FDAA8B95559C415AC4B7EB440142018081040B1A3C8830A1C2850C1B3A7C0831A2C489142B5ABC8891E12E32120F8820F490D00802120334E08032E50604195B1E34804AD5AB99AA509170232BD70A72B2508D70A34AD62A55A96AAD385A2B28AE9DB2608DB0B5EAC60B52BE48BDB8A16A158D1A6E56D9AAE2E655AA5B2B68C9E225E3272F556C49FD1AB50A55DC5AB5468DA2310216DB54A964D29C0938B0E0C1840B1B2E9CB5D50197164DA65499C061820D292F04608C39B3E6CD9C3B7BFE8C70E3C40002428E2C79F2318795A0291688093815AD15B646F55A4123EE4FFEB1AB60ADD249B7C62F5FB373A5B2D995D68BA7234690E27BFB962C5A6E70F51DA52BA650DFB2640695D5B7EF2AA32F96E3F27B38BDFAF5EB133F68BDD0B1EA0D911B3EA09CD200FCFDFCFBFBFFFF9F68145D56907E0789445244F23DC61A800B11A0576C64BDB042793BBDE2C654638D30CA2F2BE8A2D50B76AD504B2AABB821032AB2D942832DCFBD92D528317937532ADDD1D4D7613261470B2C39B207649084B145E45E7C95C29283002C08994306E0875203A529496595565E09A080254162E0162A8840604108A2A6DA6A4962399000ACF895951B23E4F20B2DBCBC40022ABA2CE70657ABDC391C296EFC824A2EB4C8C40A2C3076B78A8D6CDE48A4FE90817D071E7A8E4E0A589146F295D52A71A1020B2CA39042CA298484F91F9328D1E7D0001730D88001A40E14C0010FCCEAEA68079034C00353A2C96BAFBE66A6A544228C800007475D80D0980AA6C6E0996806B0264DA3ACE0462ABE8057CB0BD6D1628B2DB9A8888A8C8D06954A8DE5D2C416A5EAAE3B98A544F185A9A6A8700A0B2B9F96528A29FA9ED240030C289040020F1CF06A7FA6AE561F432641B9DA06061634C00847D55083088B4514B10A00385005480F0D80C1C5BF8E4C72AFC146B4850C473592E081A72D5B6683BC42EB976C37E8726E4DA3E8059E8DE512E55DBA92B24BB490EEBEDB175BF2726AEFBDF99AD24AD40CFC9B800D083C60FE8001040C30800002045070660118F1757CCC36E910020CAFF6304111CB9080021BE0B66BAA23684C80020340C4F17B25FF0DB892273714000104088000092F24E075B22F4374B0CCCFC6B20A60439D4BD38D30A65B74E7411E0DAFD24B7B6A1729F8EA1B752BFF026CC3C05A6FED35D89F814D3601051870802BC924A3CC32C42CA38CD93127CC10016572D0F640113342D006353000C005189446880A246170810322A8A05FC6003C00094902702082089601400024E56F2080012AC300D2038CC080C1DE81DF8FBF668333A44085CBAD40B115DCC0712D7B48E49C8526CA558A739E6BA07A40172F4D6DCA53A03A1DD4F8C58071002C01573B80D6B816FEBBB061066C5E2300EE0EB03BDE116385CBD0860BC5218E6F4C031BD8904636EC8790C8118F210C585BF200B03C023D60051800C0B04A73812AB044622280C40B68D0B5BB6DAC630080440D54A0822A6C00002A78C1061A51830BB86F052240C0015E20820D8C801122CC9F1BDFE890FD2DE4002A68841DED088946708080649A0F02B1E48AA13870908FB214BCC4333A0A9AEE69A7C0E00609412BC3752D76B3238D000660C2DCED4E19CA20063398D14218C6301B33948629A5010D68446395D7B88635AC51003128448710319E6A7E18C4810C11120060040D90B882F7D080047B6BC0F30420C5060493002F68C440180012028841000A78012F1D104CFE003462058BE1400DFC06C7708A7321725490429405B9B39DEA8F570AE4D008C91E08862E91F65A64BEA2D62FAA71D075920CE1ECC8C63513BA42779CECDD320EFAC2184EA394A754252B5BF94A6B54831A14A528D82E2300592684961091DB6370B9468210A2065BF42530853940001C60051C40A6C694392B961AE4012A90010C56C0CB0B6493116814010C462090710A75A80329274306A0826E320287627A9C01D569A65FB14190F06C97BB4227BA79D5AB74164CDDD43678B5D74DF26B6D74C9D82E69BB29E88E779C3C2842B501C385D2B0A10E8D0644233AD18A52E3A207B96800283A801F1284A30E11803A41CABC815811248C204169E6264C19FE5C26013590523283B9059C0E0460041881080C37829C72938B2F4000011E4088BA1175B56E34EA4254904D07D4C0992E2BA0430EF8AB2950B573F2948904B55ABA4542AD150D509D0258C74FD891B59200BD9D2679E7BBB726748635A4EB2AEDEACA57E6B5A27EED2BD8F44A8D6A54E395ADBC46346C58805942155521F1E1412236020C6080113560A336C3A800126453658D50800C5E703829CA16010110C10B2E9044EEAD80114FBAE2C66A103E05D420645F622A6B2F1C38D72644002440D64036E0D8DAF6B159BF82C93BD373D579FE96539F12EE70FDA5C18075F083932C6B4B685742DCAD55859F6C61426538D7865EB7BCDADDAE45656710BF82FE57BCE4352F34A4F10C6C6463CAE228282793A1DA821096210258D52D0F22809F964706EC1B88016070150CD0806034904117810A0001C880970C18C17B08C0D317A8606F6A2441236EC0BC31228B03CDA14150318C68C06938872428A2627F296298F9F157107A678A23382FA6B5B8ABF9046B72C76AE38C9C15AD3ADE64277BFC635256D794A91C7276250ADEEE26F9A27A15EF78CB1B8D273F63CA53D6869595B13B5778B00035B6F196E7B836E4E550D68325C0659E4D0236766DB0CF26D5D62066BF2909C0D969E276A2BF5DB245230403F585C40D26CC474993D85702F0D12111A95556D4B3ABC4352EC066BCB562FF13AD6230C040D96AD0B7C210FEC8AB46A5AB5F6DE4BDF275D67FAD35935B996B534A391BE2F0B59583ED0A031400764608B5C2D6BB438578F4311810AC8246000370AB7CE5091137989D58036B860D9D4F8D193BAD2400526CD569A82BEE57156035ACF5D39F9E39EB00C45000B59A3AE03E86AB5C4F89CABADE55BB7A6536B5BFEBF05B435CD7536EEBC59331501A0BA0E345077961BDFC18065878340D3834CBDFAE7297230493A5C93200687EDBF5DEDC4A0678800691EBC1A123B93324BCA473D7DAC9DF351DAEE2A02ED4EB8A5DBCC67AF05AC6BAC39B1CF167EC3A1BDA20C636B6A18B6EE84217BCE0052D74C1015D2D1740C74E882D3F0AF7D8CBDE22724FC8011A615F83E09D70FE7A2F19258B3EEA4C22FED4A04CA84283CC6A574714D655A73CAC689D756BE09AEB9CEFE4E7433F7AD2EB8216B4D8192CE6A529A2ACA215B665BDD91B720028494E21769FF5669CBFD1F6CF7EFEB4E7484508A0BD15544163914EA7CDDF6E7498546A05E549A0144A0AC55042F65092D77CF0A764D1377D9A970D6DC50CD7D70DBC907DB4002A3B037E95833449E32EE327324AD27A08A1368FB17607E10024C04B0BB10122908218810130D8101C2003315874098083F4773FB5B7240FD00823500535003776B77B1FF77F446574B6E36F04D5566EF5638E675DD8857093E780964751B6560DD307655D7750CC907DDA777A1A480AA3C00AE00723EF7634FE2826825652820731721BD0000D216755F0025BB0108D00609AA10223B0838AB502E5071ACA24883C883FB5670022701437E0006E764E4E957749183846D76FCFC5498A275D8D877CA6745D9147750D5830D07779D20771A6B479A7067A182886DC57866688863E835545C22E59610A0FE071B3737E0CD100F8C15E0B6103682453046100ABE23790E08700705C85A3370A907A0421000CC0010A501A06208D0060000BB03704808D7DB83701B0001BA000041200CC083E7BF88C1C700007900018B58B1E33000A400009907AE3D88C0371001C700109428D03008D8B410037B0021B40120F8030B7688856527B0D60871C70198CC07FE9E67F93A6190639FE6B5E1358A5A6428AE742D3B58990377509B7700C075EE1355EA4780DD4C7799E077AA2477AA6C77D66D829725139B0188B2766349642184842919CF1865AC62C1B308209D14507200332302509501E2350037B648C04E03C7B245B30F05F2F104D37A59437200094251059043D4E440041380001C0082BF05FB465452390162311002A50036D36028E250006460301F93D6489666B3495EF514DCD31028BE13C22A0322F408DFE1337572102E876908A667F1061003C454617E088097184C223912E610406B00DA6B05196248096487C3E264A40067506B7800CC85D57888524A9754ED685CAE06B2A197AAA88812FF97D68F8816B084F6CC1348532238FFE520AEB58253DE98C68C7018548109DE54C3A151972460287D308181000C6B84D7B0400C6040901900074B94DEBC80024854C902067B325671AD387D4F43CD5194C06B06085F35F033052D7790068393E2B00127343002BC54694250259194601400260C261CCE34D1B1000DD892C18F002EFC153089095E0949824E383D608624348026A0791355799183100C9500CC6000EC7700002F86F05B50C3D768032948051A77C9F789AA8D97015656B26996B124881A0B70DA5B77DDBB7816728936958938D5255869115C0200C45F0033F5004C2C00ABBA50AA4C038C1998BEC479C7F7801B325372B8037CD64109000402B9024C6144D2F009DFF092BFF1900FE8D003723700330F08BD0C38D1880A590C00855700194053D55F402AA924DBD64945DA402E656050AB052C8B2527BA49EF9F80273668C2310003AB518850A001BB0870BF0026D8901C6F9A05812A16992005D540589A57B90C87B92581197A90CC5D00CCDE00DDEC00CDC908904F77807679A47E67C7EF5A2AA29A3D4D73B9E1486B3A9A376C1A31EA886EE12A4935213C3A00541A0ACCBFA03C34055AA300AD54825C29926687701F2B7248A482114321203A067CA43125C5A53307019CAC412CC049D34907271E6590090009E0503EF3A2C24F1A644943DAD425973A84D792A5BF5019802D0451B70AFA7B502842A5383CA4C22E0000ED07601602C8F2AFE53929A20F73896C494A910BA9816613CD7D97F18BA6E143100AEE09A8DE778D8A00CAC267508676456F77CB79A850F578A5DC879259A8AA3379BAC6886BC3993B2D03320C840C5EA3959210C4010044060B4475BB4CEEA1DAC300E7FD81AD41A67D68AAD43C43D59E34D0C392C0F40003625004EF48E35E000D55903615A445CDA0003E04DC81231E2B915FC579E123687090009988446B9320279BA5222F0001790A85DB60291C100D3334406BB47851A006DE63590B00000F0B02A15B17F2B005FF435B06572178B9019AB1993A95EA46A4062A03B35944A0E555EC9C07C2DBA6C2E1BA3A49879BCA60DCB6081D9E7921AD829DFA72962D1B33E6B9340FE0B4FAB300C4250B4474BB4451B0442000C1E080B163AAD519A10AA5219D8BA4DE014312460040F2031E5013D7A481237E087608A3E4404440049212A30256C79BD953510DCB8962BA05F58193D1562537BC8B76854945E0390FAD5080130B88E5BB874F9AECDB1388C3B5A90BA0047C100948A9662BA9396BB1F9B6A1A989A43BD0711EDE30A53700DB66685B57275A8BB9AABC47516079B1768B33AAA739926AC3FFAB3BA8BC262813930020B45F0BB48CB033C60B441C0037AA10AC7EBC04FABBC73F7180D5056B3422A07905A40A4000CD025B6084484C035438CBF09120084D0000E4A000C8A3E546C8D480C0008D000A342100FC0005B4360ED8335FE6269944B6203519C26A615676A8C3809420053E3C654DCC64B42085F8C3E0A80C60AFC2B0CEC102251B91B05C10D31C507300B22A464AE3051318A6BA6C8BA56B60D203C863BDA819782BB279CC297DC2EB0400B303213AB000C4200BCCABA0423F004474BBCBA497E503A3C82DCC309FC3706F00230A0003A455B7A9CA97CDC10485994BBCCCBBDEC614B12C847650062B005C32C51895C9210170DCA10658DFC75612706B083BF4BEAA38744AC988CCD3A4224497322D5E21DBC1BCA3F400595EA04C05BBC35D10A7F0C1F50FB7A1CE0C388C6003FE5674E6BCB7087CB0C8194CF295FFBCCCFF2050987865B0A72494D980CBC360DDF80D0DFC00DC026FE6C1FE43564A71062D09BD95C34EF328B0C64239A032F714114A43002340028BAC9032F1C0459F0024FB002C8F0BB41200C31D186C9BBCAC5D3CA896649F56CB9F7BC109A0BC89C5B121925B2CC500CE020D4BAE0CAE8031B145D34AB206F28C63940230BD7C217622113C7B17D89B20ABD900BBDD01CB5301E154202A320D22F0C0446AA082B90052FDCD2B4E8A0E617D30F32D3360DD7AB85D38F98C34916CC18411A06900CDBB077821C21482DA4D78262A840035D612444210B331129E0F10A9CB20AB4900B66680B6E900B89420B8AF3026EA01779E206BDE00665C10A6E320A34810AC220D6CAEA0C2B5008680D1B48A2CAF3117207D1CEEF1CD7B5FE3D4E732D99A28A84197A25ED96BB489D15BDF00B0B841E41E10BAA4003B94114E1B20A9F2216A330D9B7000BB2F00B3FA15F68790373490B5A4103A3A01CB6A00A46410BBEC00B2BD00BBE600B2FC00A3F03CEC04BB459B00256F0C2E7AC0ABF59D48CC1CE2A41DBB6CDDFAD85B999A1D30FCCD355A226BFDD1E067EE038E213CA2D1E44C1C9BA900BBAE0262A820B2460DD5D310ACD91DE5DC10B5C010BB95003B6200BBAB002919DD9BF900BCD810AB73015B2400A2B201DD9320A890D239FECDE41800C2BA008BFAB05D1D2A4C049823B2CDBFA7DDFFD6DE401F2DF9811E07D75D76E180BB90BA4428AE0C45D23378229AFB0296E901BA900DD37410BFE7D41161FBD1C9EF24490ADBEAB4016CF710B35A081305E1530EEE22F700BA3B01CB6500B70F21B1F220B745E0B3961DEB0511323EDDE4EB00282CED2804E0AD2EA20505B00447EE48FFE37B87DA191C8DB4E5E3985018288F11BB570D49B83D83FA2288AE2DD31A10BB591135FADBDF38217B920DAB090D99CF25FA3B014E470DC6E020B1B8E2223F0162FD0E77CCEE54F6113341013B7700BAFF00BC2D114D4A20AB3510349E11DC090ACC0EB045CF003CAFA03D10223D18AAD3ADCD60A61008E0EE9E1EE2B92DEB194FEB10974E9EDC20BB6D00B43532427F2023E22D835820A3A572EA9000BB7E006B660164BF10BA9700355700BA9E00624E0152F80FE0AB85003BDB00A0A7F0B2F2E1DB290E61EF20B3C9B2DAC60140F4F0ABAD0292F00DE4E81154E0114B751D83530F0B4A0EB42510BBD80E5BAD00BA4C026BCEBBBA6FC0344AB054A4B13ACA037300DDB0DF124A7A2AFE22EF49A9AE48CB1E4763DE055E24EED7222553002EB9D39591114AA90DEACF00AE4F02DB47003B9309724F0E5B030976EB202B8601337B00A2A2303B04002B6501422A21385ED0694FDE27DEE0B3AA10B2F6EF6AC400353311BB5912DDB9DD958FE139A720350A10ABA500BB6A00B30D21B8214D5DFB1C259310C454004CB5AB44580F334010BE350D765D7ED09F1F3AB71A7434FFA5442EEA1DAF983D5E456B2F48201ADFF53229BFE431D3470036A2E22BD60F2A9A0F0BAAE136CBFE6FF9EE1069F0B2FA00B6BFF262370DE3A410A1D5E0BF5820BA440D8CE71170B4FF56D394C2FF0E5C3BF1CB7A029B7C0F0AF50869DEC813CCBB3DEF12396FC28BD41A431CC03C3E01B9282CEA9CF93426E10E9772AA35FFAF9EF1FA7DF54F20FCC490F1000040E2458D0E0418409054E59A5EAD54388A97AADE8E5E605AB54A968BDA051EB050954B95ED41A614B952C5A2B6AF95A45C2CD2A5B2F6065B4B58215AB113246D07233E205295F1375A11A4182D72D8AB278BD5831E2C6885CB256E5B2C5EBD70A5CB254C122054B95C38C0F65A57AF815A2598869D5AE2DAB6A152AB8A81A3A4CAB0A552B03FE0AF5EEE50B2040030E81056F48B0F7C086C01B18F465DCD8F163C891254FA65CD9F265CC007691C96C90D008028EFF0A1E8CA0F36503A8E89E55656B042A5D2A53B57E31CA17295AAAAEAEA8512B23A991A956B921B1AAD60AA0A96EC84C65ABC6EB5C555ECBC255232A2D9D236ECD25954BD72A58AB56F50A460AD5715AB3538DA58B96ED7BF8F1BFCE5F5D7715DED3A20193E64078EF03C4FA5B2C3F020B34F04004135450AFCD0CFC2CB4C646E36F03D316642CB5FA5EB12BA75168196184515EE94935597C9125369756E04516565E30E995A75049C90D5D90B2E5158D5670E39551DCA805C7516CC94D385650994D435992546536557259E1059F6AFE69283E2AABB4B24AB75A79C0C2832424CD3FBD1408700305B834F34C34D35413B3060B7C503FFEFAAB704D8308F04AAD5474618AA91564AB09A820692165856050A16104565679E1A5D6561845A2119EB44535B7486145C355CE3A52C38C32AC4B15527EC16514F7AE34F5D44FE95B529552E644D3CBC10A5348800B062B934E5C73D575D704DB24F0CD08F7FBD2555D05B833AD548EB325975F7821A1B6D8DCF8C58D1A681965055B507271951B6C6988965C544B85AB10C94292ACF9DAF254BE129544F55DB654FD2AA34EC5130F2E584639859000D484353159BB1C808100FB0B98578413567861857CCD0F58C6FE9533610158A9CFAE4351F165E389FE6A69D227127AB12B97DC54192551F11E5ACFA125D983F76598DF9377497ADDBA17155858198514524A29C514534E69A001061448E0817ED394184C830EA8B5E08919967A6AAA7175F83488FB5A9AD85C03B0B8AE1E6FD1105352CA45651423BF1A8B5326DB8BF9ED97E5A5B7DEB770CE79679F810E7AE8A213200481070E30808001061040800092C62C002304289C00030E70450084963E98A007308873832DABF6FC73D00BBCBAB3ACF9DA3AE10062C9342DF12E5E9BE64DD7857BF678679EFBAB9BEFC6FB67535AF19D81BE09097C70C20F47FC34C61D27A000035C71251965A25F667A6DAA172799CA858D15210037CF2B74F0C317DFB1D1332B7DAFFED313565DAD746977FFCA9961C73DF75176EEF967DF5B015E01A301179C80E2214E7197495CE39617B9E7414F7ACBA89EF5BE310D6C484382D2804634A2718D6450CE2096E31ED40403A1F1855084232C1F66CEA797F421CC15537A5F0BD762BB9AD9AB6EF9E259DE7AD70AA2F12F0109F01F000B77B80112300087839CE492714465108318D4D386389CF8C0084EB08216BC4615AD71C56A50438BD41083060BC2C183748F3F17F0E208CD7846CF95F0322754480A79B542D9B9D05430A4DB0C755643DEB5C20139DCA1FF88673801762671871B401113183D623083190C74A238A018450A4EB18AD7B8A235B2B8456A242E710711C300BAA43D80757042FE034263294DA930355A868D0971E3AEE02847F9C8ED76B9BBDBFD80E63BBE19CD067E241C20379999E43DAE79CF8B9E32A647BD274E0382138C24152959C94B6E519341F44BE230498D6A54E38AAEF0E406416930517EA973A7246739D794CACAAC327B9BE35AAE1812C7B8D1713EB9D3D9EE6EF9BBE00DCF87C6FBE5E21A57C8024CE1900B64A003210849684CF182CFC42226A7B9414D62329B579C6434A021416C60231BE2D08632A8E9976F32AD2062140C19CD7952945A089D9451E727D9A9300CBD2B7E357B85BDF0553F3CDE507F45EB5FE0B6D04B207E74320514C0018DA8C06336B0895064A6422709CD6B6AB24BD694A836AD51D1096A74A3DAFE981E318A79445708AE8C0401A34148DA1F42A454AD6B25D04A27D3526FBE346162504DED5435CB9BE1CC7E36145A0E8DC6C307FC919F824C5E51117844E82991898DCCC632A5E84C2B5A329A9994EA17235A558A5EC38218D52A4797A1C4E88135AC0500A411FA89C2905E6E2024C5400384CA56D8C696316E950C5CBF18D276E26A0033990F5EE3524B9FE531977DD467004F6B99412AEFB00A4C2432939951294A32B2968C6A65C94AD52D66D3AA93D4AC343ADBD1652431B4C908AB01481B5402A6162108C0407B37308EB1CA56BEF36D1867DC041A384D28B7741280797076137BEA547FBA7C406007F7C34002F39F001CA6028D99D4A52A139214B4FEE042193A59CA1E779AD7D4EE552B7AD1676CF498DBD0852EBAA10B6590770A05289E691554D68218A06808F81E7D6D7C6383D03632B6252B6E151680E7FD6E1C3DFD9F715F2B99602E4FA0482468411D79D0E85678BAD6A8EE71AB19806B6273BB55B4A804432C8ECF3283C425D6052F74418B33976D14B0280503E2CB2518E358CE7346888E21C3E381B492570140B0952943D40130EFA8886462139F3C61852E14AA0EF5F365B33B51EE7639C45B15F336BA71E2329F991682BA092CE4D290F58C855EB050403795A65E3AA75AD502B1F363F02C103DA391A8863D6A6297E864273616D152BE3086AD9B67476BB1C391F67236AAB78C4A73A31B66E605FE2F366D2D5844FBD32DBB1D7D5E080B0680F055A85E75B771DC6AC7BC1AA472155F300BB95CE9DDDA7AE2D03542A57BE12A5373C38FDEB266A3218D493F9819645E36990555364F7F9A6D9D9217AAECD20A6D9F29CEDE66786CC1DD1871C77ACF0B1643838B794C273FD0B11274EA747DFD6B586357D8F5D62C88B3616C648FD9C4662EF1BFD70C974CCDAB66053778FBEC831F7F71BBE13B67EBC31913711F23CF00A646DF3F2BBE640743D8D0507EAC33A139D9875A16CB1CAE7797BD7B72648B59D92536F3B3D55C24B9507BE6AA72DFFC627EB1FB1C604D0BE779DBCBE9F3BE009DDC971140328A618C5600FB9F0640B7620B6A68A636DDC28B9666A3FE45AE656D46DAE427D746A52FCD75676FDA52D24E59A8C75E2A5896E515A800C6303C0F8C44ADC62DA618E7B637A75AB7A7BE9470E78BDCF54BC00228A318E0084733BAC1E4442ED2D0B986AEE03DFE7179071BF11EE632BE430CDE4AAF9CEB9A7E39CC412DEAB6D93CF3585AC53078A00520645F084518465D21D2AAB5EB5CF5E33F23EBF7E2FA61556600AE500633BCF10DF84F8319DA90303329ECF48632DACAC2EF30F1379BEFE9D9B712EBB796E399E64B19D8893EE99BBEB8A93E2D088220C8BEEC8B401EF03E56E1979C3B3DF2DBC0F2B3AF5FC1AF60993BD11003E8C9865D7B866478AAFC2B3C0DE3BFAA9334AC4B2495E38513433341A91FB08BFEB9B95140CC63401702860794C009944061A82B504980375B10B6E34026FC1CF3D30BF42B0DC81080618286DFD3226B3880A8BBAEA993A84AFA30E363BC64C3B4AE933C1C84B996813E9AF3411F2C95ADE0810814C23804822010026088395240C20C9C10D46B423F9C9A275488284C8CFD1218BEA3322D023900A0C2C39B28FF0331AD32B631843CAF6305CACB14CBBB3C36DCC45862A19A02062190C320E0812E7086081C454A19050548C21713BF3F7C458609C484F88C2DC8AFF4638C0720842E3A9E6083B414B4378C3A3963E3AA624A31F23A8053D8B4E6938B81E34178E244687CA1F3E80559280B5410863904022258021AA8812C88433BFC0A55FE243A335942583C475D91458448801A9001117847788C477884810A9138563A37C999826798A28B9AA06940B16234465758B14E120017230857A09999894686A492F639898CD898DFE88DD5D98A22C8462A688A153045EDBBC3ADC8B63DFC923E4447923C270FCC0F31C000485849966CC9966C04B51BB7D78B8C21821CE841B666C8C99C3C85163B328378A586A41D883C15FA601277C111E13809B7583352B8855C48949A78811B980B56F8012124822670862658812588432218868640850648383873C5923CCB3451C7C509BACA18A202700562B8BB63283DC778A7A074C84D810FBB1895383A89B5414AE130925540337161055BA00137480F582001FE19A00112A80137380F8EF805AAB44A51448615C0C6ECFBCA86588506A83185334BB41C4D953AC9AE614B606244C9B0CBBB840FF0F0BE78498541F10D24190B5F200BE140B39978855FB8855E2001ED888915984A54E8895BB008B4A18117A0056EA98D5518013738128BCCC608748217B8C88EECCC568849D3E343D2FCCE3351CBF412415D89A9D6640BD9840A74A19788481258709125194C5D80855E504C8BF88852688E76CC856EB48551B80147898D5C7885D89012E258055F7092525885C69C12B7D0CCAB748D1F88C31FB0982CA1CBB2D440F0DC5005114FE442CD5DD9AD6774C8BF8497F6A08B54F0856BF19825C91723D19051A8851BC805A7B0FE0B00CD89DE688EE51C051AA08155400A5CF005A4D085045D015AB80AC4740319D88E119105A150851131975700452104022170031A08453A1486B9588552C0500B31470E1DD3CBF0D0B604D162F91A99C9CB175A85B29119F7F04BADC011AD708829D99951280987A0518E504C1AC01619D091F1A8815B08096C311412F8855E90811A1805A1F085AB08D2484D095BD0195E208557880956A08E1AA046E7484C7441053894C020F88111E082500C022D1886B468159F341031255359950C33FD3334CD958A911D9B199B78818592601B3AED94399D8D51D0055251055CE805F1A80537080F376856E8445695288511F905EBF0055FA501548809DB78CEC8FE54CE6EF14D54C08515F8055FE0058AF005014505E0D40527C98564A90152D096EBC0D2F4288B61985009148242B0023A0402B06C8F52C0C0EE14C9593D5836314D5CB1C7B55353F6818911E80529C5918DD10A7665949C71536B915165B58BA854891F9557A2A8015C40859158051A900198D8515BA8025C70125AD08AA78085E3008A96F0D19898D75FA80519B10E94A8816090055220545928051980129ED5885CF08A55409BF911BDEA2B827F8540081482EE13BD3C644504895584EDDABDA8D5A1BAD5858D85F748855178811AD056148585642505B7684CDED40E55F008C48C9498AD05422505E7E8851609863C759194C0052805899A900137B085FE5A08954EF505289589EAB005FA5C016D050EE814D43C8557C314DC712515E15833B358194E6119E973085610861FD0022110022DE00160804D0DC9DA53D350AF9D5DF251583A61587F599FB590081DA1087421051278921518D09EF0909748855B205A74CD85E754595F208A97B00512C805122009922015D7800520958551784A9C180177650A5280891AE0089DC00852A8055BE8D85528120D318BA1641BD19B23BB600560B85F6080055E3D8B718C5DEFA45D00EE0BB04532B1C595157A211819015218016D158EE2354CE68D89E02D85B17012223D5B29814E1C794E1FDD08E81C85E06D608FA89F0FB9856779945F88942575834741855FF805C97CFE9424291196899D113551F85D400DC136720C53D10C6020160823D80C23D8B302A613A03C0B5FB58504ED545978CF1BA097DB3C0E49590559B88A5F78E292E016235585D83089E1A8029368599340DE9F10DAC3B405B76D51F3700BBB70831BA0055E606023BC61398227BB184BFF35D820EEE38250023CE804253062F2D4952456992FE685E3D056E87D85271EDF77CD85C54D89A8805E378D943FA5018B4985148E0ABD2D997C0135B7080B4E610FB3E053E874DBF3A43E3D2ED8EDF163580600258882289002429EC9849902D7D5102A7E924811198BA0856DAD8D5EA8015D1011E4984DE1E8965530DB5B5896DD748BB08B5FD07D5F3C1E979369E655FEA6A34E41855300CD0CFDDF58EEE331D8855D18835BBEC58431CFB240D911B8D45128850FE18A4889148FD1051A5891181D0A5E2095CD5B9DF508684D11DD98911F36E466B3A09FBDFA9906E0CE72FCE1718E685726C485B193FAD0881AC8962441DE11C88AEEBD85EF90664C648FBFCC4B1D5E65BD94A53AAA9B3BB2A5A0F91DFEE9A903DBE35796689B0EBF42CE95593896B2A085C46D8FB7C894199ED355D13C94264A959E0D9BFAAF85069ABEEA1BBF2930C14AB08585E89B26D32B500225C08274964285C955F629D1D06D8BA3869FBBF22DBBB9231B6A85A7D6255EEAB3573D4DD9BD6AAF9DE55AEE6A8AFE6A8725EBB2C692A4566A3BC2A9BCC125FEA2E91B5E0A20AA1E1FAEA56BF054824EB8EB5DC1DDDCB5E3BB44689B99219CB2A5FCD91F229B6A3F33A5C5666CD2CC6A25B802BC8E1AD48905CACE3C849621B86869BEC2219E22AE03F0215FC2B1D0166DDDB6D59C1EDBD561C0D6A6A7BDD29B53D823A83E6C5F8A6B1BCBEDDD6EEEC7906C35396498F96B69C617E0CA231CE2A35DD227B86E42E6766E581C0332208332386D0A6118E9B6ABB36E1BE10EB0CD36ECE202A4C426C9EF06EF3FB46B5B8EEC2346E23A56693B55E89C7A6F1DF29F9FEA6E84ADEF888E1CBEE33BB2740C01101C0657EE7242023CC08341D6EFDEC695D458E9D76EEA97F62BE2FAA3DB8E65048F652308D43EE18D1B889806B8FE9581688014EF131870E8821080B45A9001D8001B600C02C000308D982BB88222C6705C9E2BC1E69DB6A66DCF96F03E2E7158168011A80148E01F0628C491AA810B28880B90720558000C580111102A1158F105218011D8005C1C810650180022E00CBF5D2A04ACFF3170FB8E2B71AE73285F01BACCF11B60049312800DE8730E381C46580119202500D8F2713A5ACA090005B880CE21841790017E099C0368004F42800BF84C8130004210000568E50048800B004900388007181805E0330648807E09800780102A2400C5A1C22DD0200148F581180003F0A2C3018036EF122338C8CC780019D80070D69AFDEE9A3A7F6EAB66EC3C6F04BEA19C46580148FE50811AE00000508117B8802F1F7411F8882C1F880B5801CE7980726784452C749F407315E81319180011F8103DC780B4F589B48284E1FC5312A07515708A0F513B6E1781E065847997726097812C4F80EC8081BC380018F8101A48AB07A08105584448F0091A28930060044668840F41738340822448820B072618900E152058657FF38110831C008338088329D8825DFCEC66A7E950CA790108DE17D893BC801C587F814608009D5000023800CA41801570002D17DEF26D84D070801A28930D5881A1738A010800115881CF148006B878A6C7000080042C0F000EA8FA01580115282407088D775F4511A881061080700F000330F700604C037800462813FE461801C151812C27841A707AB3C78004E8FA2D81017337F617204BFC369D61AF7CCBBF7CD30A806AE70D30C7F4962F728508034A187D4AA8844AB0844BE0044ED081230003300803369882829CEF9C3F1027F7E33C1F4B00EA170380041838DA4600001B60D41560842D61FA35278872BF000438DA0A79F746D80046A882351F0115100818A081A401F546E87AB28784C817FE15608000C0F617508155DFF611A09C7FF7A44678012A7C0134EF7A157080986C841AB80148170842F07A2857778000706005240030680400B0E1C501000E1F9611250AC9C38A16099018A17123C78E1B5F807C51A3C6880B092DA20CD08003CB961B10A08C09608A1D3A74FE00FDF9E3C74FA44868264DA244A952A54B9738713A73E408983061E088193040808000276562CDAA752BD7AE5EBF820D2B76AC57952D5D2620AB762DDBB66EDF5614306205CC870348C8384060442300020C2058482200A1150C2C5E584148E08B110400A8788181C3850B06028C50E110868C84024490E0C0E0C50600905E3C4E60D8AF0215236A9456414200E411B45DFF250D60000612355E70F0CB41460D820010181EB0A2EFEE172A02C08091706143B2022A63CFAE3DBB88152F56ACA821634375AD66CF7278D9D540A041EEDD070AE4C8914D9B3875EEF4095428514B462F9DA11418713C75475454590597820B32D8A083169D77D606693D58A1FE85172A288048365444C00A8C1070410D2A7C26820162C830D8032BA8501E001CD440E10555300280886925B0415523DC304000327406C0033560004002449A869A912B2840800A0A30562323B6D576DB0BB96D1080020F0470C008240C4008210118D09D00C83110000D320C008002355C00800CD229F48201183EA4C2482BDCC0006D5D45E8525D5BB121487C870E62C47B8304B0E8A1F4D177D37DF9E9C75F2596F807E0196F8031201B5B8841008257E159AAA9A76E15284B13A2DAAAABA50A40C20B830210C0429989C0480036D0A0910C8B0DD01D730E5DF0C262B532F242029FAD20C387B489201E01407A26C30B2274A759232B3CF6A69F37AC20FE820C23A435256DC95A29C001B041B7C2060B3512809E905C30820801245085030030D0AC0ACDB639429018D4E0A24382945186200B0E30C20B8D700996AAE9D18A5500610092717D1BD371A8C78A2EEAE8A31B4FCA53A5961675D4193AE43060189F8A31EAAB33D3DCD6C4ACD69CB3CE6A218812018F05F067000418F0A75F5B185D6B550F0530156B17247012010D2860C4030FD8D54003043CB0980151EFD664AD845CE0C09D028D2910D80F403900241C0EB0C10D377040DB758C8880419B064082350084A890779B0150E6500290B46991129D74A2C482813D26D6CD15CB1480173BEC90871E7BEC9148223BFD91312075706C93C787821C327C83C4FE371FC93951BA9FA54721A5C3112DBF0CD5545591BAB3EFAEDE4CE1EFC3135FBCF16B29114514522CD8BBC42BA1A71E57418B71071C6C841147A74B619E87E69C27D2871FA1674C7AE9A7C7A7BAEAAD476A1FEC26FF14D450971E05E01B4C11A8FBEE091EDFBF5AC1FB2F80021CE0F0B020855080C277935B8B55A83280EAC1C129DB3B02E6329707F0896F7CA2A3431DCCB7B1D3B92775EB635F7D4AC61334FCC45299D214FE0A7420DE113086008C210D6B68C31B9265810E6AA000A4228608666F82DDDB5CE73EA7C10D96AE631E4B94084336B24865EC7D3D49E1FC30659495BDA1657160031CB6202A18E29066330C23193164ABA2558625504BC803FED47801964009002182042414E03CB0248D810E5840581690A60608CF863A44955582D643314C410E875824220E8108449C2173E00BDF11CBE7C1FAA02F104D141909DD879F29CA6F7E294B8AED5C06339995F141634C252B19C480110C600BE0D188489E53ACB9FCC6397F7B8DC36AD023B23840576E51538DBEF22384BC32715B01452810A840E849887233F341063C604D0B58A00214F880040C6108473AF29191F4DE242B39BA0E722C93EA834F7B3A69939C7CF264F3A31D276C873F2EBE907FAD0CCB2AF7E9CFB508400605318073A4420046D4804B03208008EC34958629CB0802D8400D86E510AAEC26727621C04906B026653E4400A2BAA8D130FEBA340228F300770ADA6EFEB45052893400E20ADA0882C395E42DEF99E8A1D8CE0430810C005503421DAA50815A4D6C6AF3039EF0A6371909C9715ED0737EF804F9CE9944F485709DAC934FFB6E2245FDC88F28FFB15F0BA1825254FE9369D0444B5ADB4A96157188A0057108C138E4107339840135B069AD44E0988A6040041BC808243C03098789006B90F00E9B2AA2001ABC4006507A000D0AF2CA06C84B058DD048039055100508F40585DD80464CE4900668440573BA0D9DB6B2B8C6E9347AD274954F3560D4DBE2360344DDAD6D3D80D46D7E80A9DF7CA438BB073ED089EE9C97341D0837F99E43D1C17592C2CF09A9D89FFF044807A604D517F589FEC37EBA35BC5BE18092082A500C34E25A46BB019514A2988A2CD66F0ED1930A6C8050AC3502360CE8150108F125075CE500CE794064B60080FC9256065589562314D01DACD90B000DA8010936F000BD5A985A0311810D162B02DA144BA3593142C216B6B341D6ACB6B95D318B6FCBDBA11E359B149871709B4ADCA74AB288C82D5F1295F831E7B2533ED1B54FC940A9C24C05288B9E9A8217D1DA3FF08A37CA316904980060008DF886484963EF9F304017C0AE40BE0756D20256900002E8F26F7B0500B62CC28115986DC271FA0C49560A1ADAACA83424B881846BB02F00248B107C2B586260F22318D046015F16E45A5735DB560DA0022D9E34A557FCE2FEA25E339B49656A38893B4ECEF1819255B5EA25D5B9CED375B5C83D09E53C55564A02E1932A60AC1994A56CEBF9D28036048D97A219B1E5F63A004E15B981921EB2D936293A0106709743648901E8DC0BCC30C895083A0B0082D149A674427361F72C6133D70A06D7CA15231EB08115D859C16E5A815D6B88629A6DC10295DE6DA5EB9DDB4BDBB69ABE95F1076A6CE3E27A2FAAE21B7507D18949AC9E9A9D5DA5033C2945C5792225294B69CA53A2B2BFADD8800D791C4BAD6F2DE5C3EEED6174AD8245B9EC103493A03A1316A6B161B96E05C825DA13C66C74482522281140016D7AC00B48C06C998EE04E478A93B71BF05EC828E900519BF061F682687EFE85992B65C844262872E246F354670790778B6DABCD1C50A0021EC8B7BDCB6E6910A01DEDBC05EABE93EAEF6F863340C6956A25D1B9DCD3814C848D7AAE905F17CFF8CDEE8AD9751954F239004D6C62077100A9E4B08E338F435EC276B2F2882E0A832A1CC621DD51A6D15F80370A9F2D4FDCE25715F80823116CEBC30000970A94B997D08C0BA51A310023AA0025700954231C8DB003AA40211B848BB4F7BA8B68BBA36ED2325E263865DED5772ABD9C6D7DD21578030F7E607D1EE8800266DFBE8B2B50821884A0051FD0EDBDF11D636D6E53B89DC6F10543BD634B2ED7C7A803F25603115D28E26427D50D2BFD048F084CEC4024EC411EC4C11D6C1CA0FE385E20459EAD1154DB3482B509840A64894370002424CD0334C2B46D80889D96050A4923540703DC000CE88D4310C20D80484518806AA900D624407DC991047E860C5C8008B448AD4C8690A840E82500230854E41C800AC040035CC0043242316D051224011E384EF3C9D6CE0C01D7AD1805F0801004C1155E211114410E701FF769C007800778BC000A5800D9E156519DA1F9B55DD8514037FD9BA7ED0011D15D55195C3AE11DFDB5D37CB48FAAA1D019C4C17449C2CBF8C8F3389F022EA09431824511904C05C95B340C1F4D8F1118C11DBDCABBCDCC1078008B51401104011060E127FE00177661D9694004B0C807B4000AD4400A04158C019505B040FE0598E1BC5D9ABE21D5A6C15D23C59D056150DDD5E1C17D8C560519A43C021C0C82EBCC871D5C4FCC9445021E22E421C05FD110231E20595CC0D3DD9025BECA10B09805E840270201115881135081227462101481F68D62BD698009AC400CA09D07C0C00850806DCD58190A956B94A16EB9E2289A9F2DF2DBDB39155445D5E7109C4D941ADE854C004C8118D44A21ED5D202CC21418C0209A87333EA3C79D990D1980C1B085A079851160011618416C4593CE040035ADD81B080110B8641350D85C140238EA4026AE23A5694008AC4008D89606FC8B0458000AF84A0864000B6884099461057C80F6CDE24D96DF8BB1DD6FF59BFA85930E58D005754E0655FE558F05C21088412155CE001840D16445C765E459A2A54520011E30A1490A0A4AAA246E79C037BAA41040811BFC40118C0017B4243AAAA353B2980694C00A9840BEA1C00A48C007C040094480B84D800B78070950400838CC08A0403D026617E25B6F61530B30C0163C1010750A18704FE610111FF4C1C001420ED841200882A1204A7C2C14D1200007420846A6656EEAE6432C9F5B3A1A4A4E405356401B80231068C10F0481108C801BB4241008C11B64666042A60408953CBE403D568004B440437D4005D80B0558800BA4C00794400D94405346E74D0E95042080F3F0D0215D4F1091A60E9C811CCC0142D2811DD8C11DBC0C454E0525568459EEE680FE7ADC1890011994816F665D8A05E7197E8016B8A44B66A113D4001380A310F4407AAE180ABCC00708D509844B06980009900068D023058C400A08950548C00CA4C00A9CA786CA6804B4273F058D199C011AA4811AAC417FC60C80560E6E12E8901269AB6823A4499A8336A784FE4017D480132C2986CAE86DC9630DC0000A70E80B484006906819C20009B0E80BB800084CC09762CB4EA2E7948E22043C1A5778C1173445540069AA086991DAE99DAA92E3B5A9A9C4DBBD4D00844A280F70C10A64C11546A894AA2950C5000A700609A04004688007748778AE0009640088A6800794A70980804E1666A266260488595860D430D5299EA2AA3F5D81122801FE1628E8F3D18C0148E16D59000F9CE30FD000A1124184BAA4167828A8621A3EEAD604A4000C88270C58C007CC850BB8A308B880CFB5409A826AD97900047824F09C6AAA6A6B19F5A6139E64CE4CC1AC1AD55C4A28155401498C000D58C139F2802CD2A2B44E1ABDB522F95940264A4008488007B0000AA44008C0C00CC0EBB4569A053440E88951B66E6BC2DA9012264113A2A49EEA4C14B2580E2027102C01133481133C01142C4127124186D65B260A55DA1915516D5F51A1A10680006F5993C0DE24C1DA26B616A2C2D26C18058024CEE9A91C29AA48EC8A79C01148E827466810F0C03EC6EB09C8800DBA400984DFD8698005845DCAA61D1A7AE1BCBAFEAC66560003C4AC91226CCD7A2DCDEEECA960628B59C00E1041717AE215A6233B4AC0088A047880A906B080B558E6AF9E00D39A8004B8EB19AEACC95EAD8C6AC0042C40F2C96CF418E2D7226EC286ADA9C4A5A579E30FA4ED150A010FFC252D7A00879E003765400C54AA0B1CA6646A400A14C72CB1C02C4AC009480078DAE4DF6A68E0EADCC3CE6CE2CAAEC22E2E9E04000EE0A407E48055F2C00EE8400F88EBBC65C03C5600DAA1A864AEEC60F22487B68004C440636026DB75877734064FB26E7A7E21CCC1AEE1CE6EF76A6BED9A5183569A6F5580D8919FD93D6D970A9509D4800BF464B2D6AB5F5900DA1D26A48EEB3CC6400C782EC0FAEDF5FAA304FE2CCBF64AC8E17A6F01EF26F85E888AB123D59EAC77C280D30E66E9B6E2D3CEE30CA0A2AC886FFAC280CAAA1DFC96AF6E4DEDBC062CEB9622D8E48C801A700A1F22025B48A4C9AB9A06AEBD045504E7DB505980CF81477194003F0A9577924008CC4004D46304D88BBDB0680994400BECA3B00ED5CA962C03BB2C9B7A2B5BA97015E7260B570801742736D5EB1343E5FF8E6150B1EF9826AF0B64D30BC080098400BEEA5608A4800B889FC3E4F098BAE308B8000B484063F81C0A64C007C84009146B0C588009C4C0AFAEA8D3FEADA84EF1AA10B0153BF2AD61718508800D38402543C02547400448C004845D0570310F7F7160B6C02ABEAFB81532E78E80FE528EE1D4DAD661FA521EA3C00744800978A84EC2A306548009787243558029DA310CAC0067348687528050CA000BFCAD0558EB22A747233FF2338757245748D3FC4C473E0002244002280003684D035C320464F22673B227631328F3D607C0710D2B660E93C00980C00990326E296504A0228CAE6CDF0E26A43E6D08A0805F8D8005CC803DB7C00AA08007C4400D1025FE1E66B4BA2CC11AECC1C62E344BB49449B3CE1A520F11400174240260F33673B3D67CB3267FC00470F227F76D135BC00984802E0BD507A8C0A7BAD8C886400DC400D9856E87466A43316B8A64804EB60008B0C00AB00008B8231E1374054C80655E2DC11600333FDE4443755B55FEB40219D26C5A73477BB4D6380026474007F49B27F370509D743FEA9609C800C0DED66162A7C0644052C340060CA6048000E7BAB34E9E4050D34074D8CBEA262A2E6BAD533B73540BF67741AC5B5DF4425D75362BC0366B754827E63873B1C8621A2867400B94C0D865800BF49CB83DF08B7AE8746AC0740E740C78002A6EA9C06A00052CC0D6726D440FF66B97D154A7120F59F5015CB36273B3037833576F72F992B3BCA92C8C49800950804A7B003FCB620A8C4070FE4B7792280BA40009FCEAB406EEE002366C633719C9B678D13662DB36366BF3478334386B3249ABAE641315D4EAD6BD96A104F815099440F04EA9EB56636B736F76E3B7BB15B6E2F8D27635DB366E8B77487B7549977351AD2C36F52F0C7740000B3015E7F7830BD07617697713CD776B33633736268F74D845F604AFDD3A9670CE960A0A437889D35A036CC01346F56167B4855F380354F25663B20474006463137A87328BD1A888DB2E8ADFB78903F9F004C0056040911B390604B660F77785DF767877B38C873327737881D7A2229F18911F799127799073F9A968F45882F901106E975378622F360304F88C9BF76F2FB3EF10804A817947B27697D3799DCBD0926F7447FBD147EBF6B5DAF99F03FA33F7B746CF79A01BFAA1237AA22BFAA2337AA33BFAA3437AA44BFAA4537AA55BFAA5637AA66BFAA6737AA77BFA6E0604003B>|gif>|631px|410px||>|Illustration
  of the Fast Retransmit mechanics.[frt]>

  At last an <strong|example> of fast re-transmission observed in a real
  network:

  <\big-figure| <image|<tuple|<#89504E470D0A1A0A0000000D4948445200000268000000B80802000000D82C87180000000373424954080808DBE14FE00000200049444154785EEC5D077C14D5D6DF325BB2E99B427A25BD27A49290408080F42A1DC58658B03D4551AC58DEF32962E18122820A2835D20209A9407A48EFBDF764B39BEDE59BD9926C76E76E760341E49B313F4CCE9C39F79CFF39F7DC3A73F13F1FF906875D180218021802180218021802DA2140C8CA6FD08E13E3C210C010C010C010C010C010C04131A1AE180CFFBF1020BB2CDEBED40AB1B9FDE6F1F3ADFCFB6AFDB40ABFAF9A3E44C260D03606569CBADFBED0D2C2BFB7742D95C4D81E000258E5D51A64081E71626DA7D6703D2A8CFCF69BD394A6F98DD77E3C8893E6E24705AC47DD0ED865C71B1F752331FBB44000ABBC5A80246381E49CB2BE0623F7C2D9DC61310E47340B5CB339C87860086766AA2A4B314C814C9D83A2FCDC1CCCF449381C8FD15157535A50DD3E2252E59FDEBF09C6FE09ABE2ACA0F69B27E41D76C878A6DFAC9099F6330C483811ABAD2A37FD6EBBE902F9184B4919416DD2EF495D023945450E41DFD12F22D2D3C19206232464F5B79615E514758CDE3FE3D03B77447D6B2F1F5F5F67B85C024EC4EEEF6CB85B58543DC427A0D371CE8AB123D02E5DD0C7EB7BAE5B1F63D597F5F3956A9644F124D1D0C52F6C96BBBD15EC6711ABA3B630A3B0D968FEF80889A0E710BB288A56712DA996A13B3ED31B4590A1BDBFBF9F8FA38D29058F137106BAEA8B0A103C25383CC5DC3B3632D0DD9C4610B37B1AEFA6E556F5C2E4B14B251EF0E4199E91B17EAE56FA44D82F3DCDA599B9E55D3C257E349CD1F144E3D49D861E3F6872487673D6450F5CFAB38209576CF945300C5CBA6C46DE99EBDD8AF8477B527B1A1067006EA03897205D2E94E910A07C74151FC0181A5DCF7175D4F392ECDED4F3CC7889CA46FFBDD918E41740BE02E5313E11584F51714685429ACF7BC880BC8D2A07357A50858F4DCE29F295D254AD48304AF5F2342FCCE9154266BE6E54A650C429FAED203295A71E887803D7F8D581FCFC3B5752FB983C1CD9886EEDE2E61B66D59BD2717FA7FE506D1B234216FEF11150554E9FA79D8C4634095AB0CC9F5B96959AD33ECC9150E8CE5E814196EDA9C83068EC2218792E79DCAD25B7672C6BA8C82198FA242C76EE49BBF967D3204744D43373085C109720BE7CB190319E7C346B36D95DD4CE1DD92E38D86EB4FE4EF29D1E064748A499DB07CC4F984FB87C9315844A4FAA98C4AEC9B498701F4FB39A6932DC366834D34EAFA69A2D6D1508467EF1CB02B925E9D76F7731059081A5B3BB97AF7967ABE24102CD31362172AAADE6744711D93628C06AB421EB4656F7D0A88040B3740E59B0683EE1AFA44A89F3C20581E2929BBF24F5F1C816DE11F12B62B8BFA736CA8CC6E154E2010FF70D9607100A33CE26F6B24424637BCFC805B1FC0B29354A6D913AD46878AA734D91821A3FA8B24423FD1C9A852111A7A42CD170861EA7FBBEF50341385F6F3447C5AD898E1EE749152C54BB40F2932A46EF577D44854E031155CF317EB5BC24BF732F794656222CE8E1C9C620BFDC64A1FB1794C7603A7A3DAD1845C5790C0A19AC63F95C04CEDBA87250FDAB1DCE8A11272C42D45F5D47F1F2B5294AEBB1F09D29AC2D1DF4B047958C1049E62E96232567CBBA38D2FCCA1DEE6D2AEA6D02B24FCF0D8A55E8622FEE9DCBA5EC6879C3A967171644283A9751216FE0D8FDB58529B5134BC753ED6707D26A6E560D292A9D9A1CC8D84A7FA0ACA8A69F833C2A1EED6D282AF05CEB6908153250BB0564C7B82521C296CABABA865EA660927188062CF82D59575AC6EE8B583D0D45859E6B3D4C2489E874084E3463ECEA76692809ED16C5C6D564B0E246B5DB424F4B4A753317E6A1DA8687924BCEA79423D310F0D07BA4ABAAA0AB0AAEBAD27958B8D58C4B88D49BE2581316A0218A88468EB3E243BDED0D21E1486BDEADF4C21ED9F88E64E119BD2064A6395934D2565EA7EF35E3AE8639677E4BE665653CBBEAF2F2DCD6BA9990DA0CFD66F4DDFEBDB21B71B0A0BBF4F61DC7950133F59B4B59889DEAF160317306B3F8E2DD2EE9385C34D4549A65B468AEAB7E5DB1A69613054F1C3CD2B5F08A9EE5EF666548C6F17AEB0B5273AA7A95477D24B3C039736C3AD26F540F09118CEFFD12738618F899A67A844E8122E0091453531CA3820BA10EEF64A979565B7EAF63A08FA53E51C46C2E4EBB5E2677009A42209CA94C106E5AC4B3524120F9109C58D1F4D140438D2BA429D2C55E0DF2915B6AF123E757A3EB9A6740E582EA11D162D6FAA5948CDF6E4B87089055FCEA39DC9473B707918921B2A97B5464A8DF0C9A84D35B91979AD9C8D47DBA08E417C92574FF82F2982411BD9E6AE55FA5BC0739E996B7417882E84A382B359C38D1486DE9E8E2203BD3EA9936CCEA6B434E1A1A4EE170E78859C89C7049596D67EF104738F5C602A4E46474BC9E636CAC4B5FF6850AA6C859CE0CD11DCCB83D9D010B37F85A1B4238C148777D7E6E5EE5A0F21C1CC9CA3FC2A63BFB64BF3C5DA1C911F435741BF806BA0F97340D49479C760141B4EEA241D0BC96A0EB6E7EADAB9BEF9CB5F389430DF5B595F50D6DC3BC7BEB0CE38964034BC7C059C6C3A50CE5140AA2ABDA35197E6AF729333CE9AC9A3B032D0456C4CC19D4E6162E0EA23B9AB39B7246D02C21D09CE21E8B34AF4A3C3795195A59E9C02882CC82974759D4659EBBDACDA539442C8F8DEABD9806CF7D9066842F0D24155EFFAD720867EE3E674504B90F91A4797665DC5202CDCE5D7FA8611867ECA6CF6CEB43BA06D24BC2EB6D1AD5B73524C20D275A3CC01C388964628C4386D606444D0D270A9E38A2B1DF8A051E830569BFA7F4B3F1FAD6AE7EEE66506FB75C0D3CD536725EB8414DF2F5065916D3D6AE710BD17E13B1FAD8540B4302A41FB1619D07AEFCCAE92C82058DD3C714F119C0056992958F6D4D7AE2913E1EC5D27F497C8C7FEBF9FCE1F18656B91CF52D660A9C855AE0068A67344B14B471F99AB850EE81E20AEEC3DD8BBDCA25A1C70FDC6342C957BAE619148BA424503D120D36368BE6BB9B433D5D421C89EEE6206ABE2C5F4E81971EEC38E5577FBCCE2498F92E899FE7DB77A904D80BD4360ED1FC02F22F888ED883260764BB72DEC3EB98B741324174259C951B4E9C98555F3910316B0E1D1AB89DC5123B819E87E9E2E1CAA40BFCC0595EB1EBE71890C5ECDEB6BAE2BBC535C8EAD103B908065ED1736CDA524FB7C0B36B64459104328D666E6B5F7FFBFAB164061F5E48718B485818C3B998DAC895EB4534F68A751DCDBDD42E1B29E3D0E548469B6EA5CD58B67CB9AF4232A334F9529D62224FCD42099FD15E5E04FF10F44CEDDC5CDDC216862D127416A4DF2C1CD2BD1B37A11918859357B93CA095C357998EA8A36A979A8A931228E66E33D8F5996CD16847C368A0DB0C724B0B9F40A14182763E5ABB49B2099F25E9E19938D81A560DCBC6A39316A1C6008A22B1B9BBABB8E25A7E07D264F39A0B0B7D5678D2A1D66E9CF94C7B7EE5D58A7E0E0C6B774D6E91978D74524465EA46AD1C2981683473DEC2484AD5A5EA5189038528E4C1BD3DA2994F9443C79DBBC34278669C0AE101F120ECABEF328C8CF267C0C343D9546D44A819B51FE6075F687842E65EDED4BA94F4DA7E695768A4BDEA763BF20B12C04403D7F9A1C1D4E28B571AC6E61FB5B20BAC82FC8E983BC820B8D269C606567878D7828DADB13EC784C0ACE3A0F955214DD85F9653D6836822E8AEBC3BE4E36D08E50F6BA58F12CE7CB226DC34C5B306A394E46B32004D02048A2BB8ED99B2BD130A42CF277053809AAF74CD3368362134503DE28B180D8DA2855E74A8AB17AE3B76A2961BD2D1267CF1DBB253DB64BFF65697327CDD8CA0122668F8AEABDF657E01F91744975BA7937F27E6BDFB85A75C13B5FF29E13CA1E1C449D8EDE5AD918B9C3A925A38125BB5E7261024BC9EBADC2B75B9705F8A44A3DB3AFBCF59B400BA74AD5C3AD935CD17C1C46B5EB47E75627A87A24194152811F2B9BD25B70ADAA44D8D88D95E7927D765151C378D9DD2C1229E3633D49F5875B54AAE24480EC1D06DEEFC191D372E5D6994AE719A3B04CE8F99E7A3AD75D2465A5352D50C8F2C4CF1448AA19573507C44AC676F522592C1407475BB34CB47BD4BB270B5E434E7C3C089475BEBB8FE9E66A4962E318F2D24E9930938F5D1B370A0F0CAC56A2864C9630BBC3ACE570C4FA18380E8811E4537470DF5CD3DD7BF1832AE6A3BAC053C756C00713BB8F2B2E03948AE58DA704E7A118D9DC21F8B76E595DDB8540EF76548429E08A2C0ED1E6FA0226B007E1A4FD583445C211E14579CB6AC44BDF0D898B5B10610BC43AABDA6BC6AD0943636F589523E2A9E783D23D2682D0B6D0E966C3DCB6BB45364E56A6FD0548D3AC44729444B9288D5CDA1595BDAD3C9DDF9B9B8397EF6D6C37AEC7E5435C6244AB8AC31A78B85120241AB7856C119A71137703C03ED52950F6444BF41D003C4151C8853B257A518603E01C4D53DE619A5D2D1EB119C8D876B5AC54B5DCDA0419CA7ADB831555E4FF114ABA0C88820070B78AF9BEC6A57FC828EDC245454BF80FC0BA2C365A0CA0197AD96CFEF2D6F830B1ABB3386F3C48613E98824FDFEA3946D6C1837A93889803DD05C9143758257E3A072A555B7499F9C2A033C253B836A3AE3F12D4AAF3C586D5F7DF3C4CD5EA64A5652AEEF14AB9028D3E61B198A5E173C15892EE764919319A32CAD5AB1C6295F6B34055987271BDBB8BBBA79B83A5B43C38DF535F9376EB7DEEB54AD44C41BE9A8C9CB735DEB610A558EAFE5A0D0D5ECD21D57C8CCC356DFCC75BCADE2B89891BABA075BFBF5FD1D8DAAE46B9C4A72259C118E48C82FCC2C73591C17D479A9602A636B653D95A38890CB6476645D3E5FAF32C68778A342AA1155DE90C3C37BF857E4D2389504197B84CD9FE7C42DBA7936BF4B36CA12317A460DED2DA835A3D2456C7855CAC2497FB48589A707A2C615F2B66B5F4DD6D99A2C193BC1D0778DD340D1305A0B28E340C7B39F3322D0373720362BDA7E1933F22FBFEBF6B56BCD64BFF94B17FBF59D2B19908AD668D7F8B393FD2666F73389016E1EE4E1C28E1EDC60648817056234B075EFE16AD4070567B83D9A1437947846B707553E3A2B882AE6A0C71528D769B417A510503E39557C7FF20C4A916A24D56C0CCFD68AE7CDB46EC639899BAFC8DB4DC82A645E10BEE8EAF9ABBDA37C118EE6BD649DA7922089484C20CA6A968CAA118749FC02F2AF1A7D12396A86226BC9AAF9DC4CB7BC8D22535B926AC3A9ED736487E8F91ECCDAAAB69E8191513E816601AFC699302B46C0A9445BC9DAF0A94C1DC07E95BF1D4130A8152E8A0965DD29ED84A76A0DAC67468419F4A40F4AB5229A05853BF4159C970D3EA5C580E408E9A66C33FF604F4671E3201BD9DDEA101862CAAE556D94C75425590785BB0B9B2BB3CEFED5732F9B836054E7B9316A2A9A3BFB58023CD96086535098C948D908DE217A111A1D649736184EE0814C5DECF925A7FECCEB938EE688F4B0CDF35CE8C4EE9E8EBC02EF65CBA225E9250DF0AE5AA2BEB9939B8F7557DED8AE5AD150D9F552C77573029A2F17F5EB3CEA044511B7BFA6913C6F76002BA7B27714A76F39D3D3D7AA2333B593DF5FDF4E8E0DF3E9C8AA1CC69BB985051943FD287E1C378D6CEA113B6FB62BB7ECCA85C2D6F1A94931B3A5AC27306AAE1727B3AE8F0BEFAA0D8FB2EACB491DE58E4ED8A53C165738FBC878BBCEE2928E211E9E6A6AE51616EE2F29BF24DD3E857E81F0ECAFAEE23D1617CBC8CC6B863B65B4192E7ECE8C82DBD2354E9140241131CA3232CC16CF8DEAF92BB31B9E37D36A8A0C5D83095411B39F6B1862D297D3C3E1E21A468D62E9C377583A7B4B833E009CC9F6913168B881E21C983D00F2B5307D028B1010572039BAE20FCA277C5CABF2AEFEB1B8D235CF80F404D523044FD17043A364D1EC509CB8356940EE733C914410F3B96C78B50232B0760D0BB72031C6650B19BD1C537717F38EAA7EF9CA1B1007805F40FE05E631801C90BD523A4A3E178EF4E894B735CA47B9A984F3541B4E7E6749B94580FFBCC5734DE0EE9A843FD2D75A9E76A3E43ECF31A1E8AE992466D55CCF22C7862FD9319F06BF70C7EA6BC84FCE962E70128C6646FA0A4ACEC273D09A452077C583E5D76F1022C3E73FBE500F9EC210B107DBCA33AE170197F2F82DE9E7C7776F4E2E1FE650EAC4596D7F59F1119F8EBBA5A6FE810B97CF475015F3867B9A4A52AE978DF0F0E87478CCA0935D20CD8874277B4947EAD8A051C4686AC1CD733321F60C304A522E8DFA87CE4E08B3D44766293BEA0A33FA0546E392444395E9B9F6CB1302DAFE2CEA03ED9E02140C8C2231AEE8526E505CE4AA3926149C80D1525D98D5872CC0F0BB732E97462F58B4752EB2ABB6AC7CD05AFA0524D045B68B98E305EB6A14B872C3F8E444EFED937FD436DE48D18B8B5CF044841E41CCE96DBC9B98DB340A8C0C7E7755B37364C28E79FA049C80D9DF5E5DF0D78D660D2FAD6AC0B3343145183D2B7E6B34FC9631AFAFA1E066139CDDE017A1E59784DB9E9556B36CEE6CD7A4F4064DA18A1E3F0020C4A383B0B684E66EB6588C6B6F1BC11933FA9001A74E4200B2113210E7F300DC00710E520907F623C86964BB78A45A295FD24D4CA871051A716A32796C43324EA9FE6A7800ED96AE79064D064203D623E4A668089EAD0DF2C1DDBD3D56BFE1FD17B71A62676FDDB2000EFE9EFAE2D23E7BC771D9E2A1AADB65D6F19B36CF8669EA3BBF949400FAFD2C7ABE02E531C86931A89E0AC65F559F80336ADED380E77D0975259CF1D847DE41D1F8C8D2C7634863AD989AFDD32A5C45A5B19E3B6853C3D44CC09EC210C010C010D088C054479C1A8562371F6A0480132FF743EB69157E3F14C464600860086008DC2302CA4BC0F7280A7B1C430043004300430043E0D147001B713EFA3E7E642D8447B7D8D7C91F59EF628661083CBC086023CE87D737986618021802180218020F210258C3F9103A05530943004300430043E0E14500DFD509DC84FFF06A8D6986218021802180218021F03721808D38FF26E0B1623104300430043004FE9908600DE73FD36F98D618021802180218027F130258C3F937018F158B21802180218021F0CF44006B38FF997EBB17AD4712D7D8E0AD919FB94923F72208EDD969158E56E0DF49838DF59C060C1FB0498F86150F18B487AAB8FF5795EEE1401E6B381F0E3F3C602D8CE28E554BBA3AD316297D74F6FEA860B4E25CA7A4ABFA62D47D977C7FF4C3A4A82100BBAC7A1A2241AD1C8C305D0860956EBA9005CA55349CE37D16D95844FAAFED3C7844226157277EBA7A61B08194428F5EFFECE1F4A689C76002A54FE30DD44E9684DB71E7F0073B42021D11FD9D0203B67D78A2123E62124447B5DA7DC3ADD1FBAFB8A0E9FB356E786BBBB1018A84D374EE3F3BC343DD09B0AA8E610B3EFAAB86AD853E2A7204DD4907768606B948FDE562B768E72769C8B11A53BB445D272361394B4FB62B9D9C21E1B524FE7767C42C587918D2B0B877FE28654D18A3087B9377C545ACFEBD117C5808589D698F2ED43801EB23BD838AC324CF68751B14874A0FABF8573C927FECD5C86067047CC7A0B0178EDC414E1AD0224EC6458EA6BF101CF263CB849347842D0716066FB973BFE25CC26E49FDF28DF59E5EF6523D03FCB77C701CA977F0251E2EFE79DBA240324C77080CDB7DAC10390702C40FB28B05968F8AFB84F844E5B86722AA5DA852518D524CF64C7BFC6BAB923C2F4D9A4F26C427C88FB0DB51E316CC8FA2E643889B92FE8A8653D66781C70AB29FE6EA4F669BB93CB13742AFE3C2F3F3FEDD15BFEF4C53630BBFB12CEFC036B7DA1F3FC965A158FA4049A89D2C56C6175FA7EB2DFCECF7ECA1E6566EE9951F9773FFB3F1E963ED0C009D261D1E8DFDB4367E1E6E1EF0CA07E1FAF7DB14CEDD6F9FDB37BAFDA36003B9645EDD814DCBDEACF1DD7B2C63A8A58599FBD3D3D0E5AF0AF093E9A32247507D78DB8644B3577EB9CD686DE5D5DDBEF8ACD91F3BB77D5DAFE32125729DC4BD77CED7B9CDF36A3C9FDEAF38AB51D0FCBFED2BF734867E723A67B4B56920F5E093FAE987EF8E7B5FD873E3A5F5EF753F73F2E46617AACEA889A63FBA50E344B3A26838687E42DBBBA0F81C6BD454FC2BEE4D7AF5B1AF07D77E9336D8D2CA2EFA639F4BEAF65D7FB60A556AABE6B8A5380659F414B74FE8D6F0DAF3FB2CC2EC28DA2A3E091F2BEB3FDFE5D297FDF7F4ED81A6165EF9D5C38F313E5DFFCCB10EA1A8E7D2B6CDDF32D71E69AC6F66E61ED9327270F1EECBDD22103FA83E4A40F227D16BDA6E03EC422D6FCC59C8348C6CA64731D9F300E21F55259838AE892C014AA71C26CD272AF109F2231F10B7207ED4E3E41E42DC94F4479BAA150FDDD9BFE2BFE2F77ED9176FC22D3957E8F4CA7BCF47BB5AE891487AF499B396FEEBBFBF1F8D350439E46FA51B261C3C73EAAD0D0B7D6C4C2810C5C8366CCD6B6F39969FAB2102E8F2638C653A8B076EEEF9AA67CBFEED9EE3A73CA95833726D67C2BC57BFFE35B76D54D1B26861AF6438E7B3C78F9A7EFABF9DFEF2B645D29FBAFFBFC2D76E1C7A71B9AFB531996460E5FFF83B470ECF9980AA9A3EEA72B88DD99DBE2FBDBA29C0DA8804910DAC67AD7A758F476746CB54C67E38C9D0AD33B55ECFBEF6EACCDA5FF386A46FF74A06D23ED93FB2EBD281A7E6CF34A39128749788ED7B0F7D1F236FFEE156F3C5F5FB7A9F3D35A5561396CF064717BFF9EAC7F3C35DE1118C7ED4F6CFF21427BA4958C5BFBC18E8090FAF9D5DB6EDDF33DFE3FE2F31A2E000AB2A1E2AFAE599551146C8C8DE3B64F7F122D9804AE17E09ABFCC013096B8FD7A81CBD3D313C40F1298B4375FFB28BCFE43BBDF1E92B314EA66448CFCC7DE9EEFFEC1E3D79BE7D42A2518B139590842C3C5D24F5B5FD4A0F09076B6B702EBE666CC06A3732628B3CF4CB0BCB8329C83443C4926F0A8047EA21A519267C77FECC3B5B970438D0A924B2A16DE48677DE75A9B858CB6ABB76242F64FF8F4F85D9E9C3E119F6E2979F84151E3EDFA507E007D54790FC09FC2A6603FE448D2B5DED1502EC426D00008A206450FC938BF7CF7678235F3E21C0CE7B2664F69E0A9E54908459F5C70B2B82206B1B52C0B25D175A64540D65E8724B733E518F4F905F060171AB95DFB55018841B9C3F51FD0B8B04D55FD8F5EEFEEF7FB22AD60B9EF9B37CFCE01D8686CCAE64AF7AC329683FF7C4CEAB115FFFEF4537B8434A758B732AFFF45F1F9CBD5DD9C799C2D1B75AA0304D2C62FE48EB9DD35F7C5AEFBE64A6F25808441FCDFDE6C3ACC80FF70669186E1A44FFEB9D0D331A7F7C31D63470F1FA8F7FB9563B3C695D11F5DD78E9F9BF023F3FF8B4D3D8B17F9CCAA40AF308F1779BC3694822767359F5D64F151333314E551F3439B4C0B561EDFF3BF867790F4B20168CF6DCFDEBE057DD11DB7D6953C054C228F8B5D27E539CEFC235F625670AA42D27A7F26AC98C550B9DD07A12C29EA45D2B5F2ADEF4EBEF9B9C751F6BCA14044617A7FCAB256F15C77C7E73B0A9BAF02DF3A33BDF4B19411462E57FB2F26BD633A74BD94D79A7626B8F54C8C6BE1A677574C4020D071CAFFEF0639B7F16AFFBBEBCB6995B73F54BFFDA5365EC31C1A2815BEF6C79B568F98FBF6FF7A0E161B236FAA8C6219A7F7178021EBE2658C06DBDD3A6DC31528D137573A9764133FAEEB6F039D96F06E0AD0376167078ED777BCC831C291A86E3AC9CC3591EEF5E1E6C6D683FB5BEFF8737BE43A631B4B10B295FD89DF147A7C70A777C4376A7E382405385050493A0A5B69D99CDAAD95EC1AFA7A4BC26BBD0F8D5ED46A180E20A8E2C5DECEDD7D22E140D269040F14FF15CB9989A7EA6581A62A315676F50176F98299B1E60E51DCFB078FE744F7363FBD184D27D2FFED8AA210381FCC584A5A63F0F07039C7CEC4CC296ACDD7F4E7A94B2A67C821A9F2A062AFC42D5226E9147A7EA47106E38907F35D6DFD1B29365A11F5D1B6CB8FB6768E1FF8AE09402C24D692BA5CA47DE25A325FB777CD0B5E38F930B2DE0139CE12376DD76FC76D3E0E0673FBF1AF1523B93342364C1DA575E7F7993B7A17A8BAB02E2DFF727D27F5C794756BED5A6FF5D79CE5196F841748493DF70FCE5F3361F26CD35D76418C1D035F6D93DF0CF577D95E97F9E3FF7F1C6FD9BF5A3F7FCEF7F6F7A0366BD04ED275E7DFDD6821F0A97CC20E2C670874F2AEF2D494B5DFDE5AF2D275C8CF91D77FEF870F3C6372CD30F2DA7CB8B57D5075D0ED166F9BF7FC85BB564C14F0AB45D77FD76612D5C94EE17E3EEB97CAB955F5B916D6357D87C75368F99B0C848C8E8661BCC37463B098075EBDDCF0991267549B7DA77B8CD446B59B55001145D50C9AF89D0B3BFBD331769B24D97BEFEAF23CB7FABE02C8CC497FC996AF4D4A96702CDE13E48F8B6F75E3F762B052946DA0068519E362C6838704B7E39DEBFF1C7EF36F94953BBD3DCA7F6CF457E411CCA6F4B7CFAA3AFFA5FBB7261B58D0228CDFAA0C521BA7F6941EB235AF7ECFBDE6DDFF6105B2AAB29E5F8FB9F940EF973C73BC5AA7182662164EEE52ABA58D5DDD0912DF2F5C465A636765AD50B9DD659A2F95521402FE0C5F777852116E9476C7FC5F3E82F2D1C9CBB66BBE48F729BCEEFDCF4DEE08E8B5B6CF1C9C33C3DBA3E11C72F3FBCF746DCFED73C68167ABC41F6841EB812FFB8421AEC42E547B35B9DC601C415CCA993BD23978E4D6E977AF16A1450FC1B5267AE5C497EF2D70ACEEC5049C99F6994C5C73CE509C630FEF31FE265824236EE72F9F18F46CE8B0EA0F93FB0BF16B5C9EA8B44C0EA6E283877F8E3F8D50D497FBD390B944FD0E37382414A7E31624D16B7F093F7E047106EA0BC4100D45F99FE7A3EAF7DF1AF5824D5C4BD713C4E4A9B3C9F4C682644BD897B9E3AE2F0C9F9177DF5C7BAB94493D08DFBCE5FCD1BE96A63E6FDF65144D747EB9EFAA94D433767029A7FC71FB27E743BA7F24EFA17730ADE7DF544874C5B101DDE0DD273F683C3BC273FDE6AA7299728DB820C04A46301894443C616D41EDBF546C7E63FDE8F513488321904AAA169C82B5FBCB3D0DD820A918D1CE3767CB2CF36E7F8D82046551F901C61CBE95D3B72637EBD5680AC71D616E47E1B9DF9CAAE9F274EE569E70256D1D9028BA5F31C201C641BBFCEACE0B752B8E705195BD1585D0C3467EBF9ED3D7BE3F8B1DDCC2FB7FD5CAF3A82D0AE48840B3DBAB8FD2D1DA59FC6203B4AE01FBB593B8BBA3A46602D0443EDA3A62E66F2913BC9DCC37C8A2D365841541CF87D0D4C9B203BE501914202F3CEA72798AE94BC73696DDAAE2CABC721071427E60BBEBCF6BAE9D997E79938D85383367D3518BBDDC7D2C65011A5AA7102308B621766D17BBB20ED2A237CEFEEF0C19B69D9797D3382EC34CE13104DED4CE4C5E0493448C4D766BA49C26BBCBC376AE1BEB60DC72FEFF4A0E28834130A6770548423FB3EF79FD73CC83811BB8F43A1D3141D3B557E85FE20BB40FC00BBD5C802405C2181A88BBD93D9A5563090801E9E11BFB10000200049444154FF421CC56DE32252D2D94A36A7EAD774D2CA956E3267898672FFF3FC625B6769BDB0F1DB9CD7CFBCB77D9A789281B567DC8BFF3EFA36EED457774700F904149F0AB354FD4298246E55F981F0006FA0E306CA1B1AEA2F5C0264E14CD72D8FC0FA2B359CBCCAA33B9F295B79E6AB9580E6836860E5F3D8D3EFEF7385572FA6B0BA0004617A6E10A8A64EB15BF6BEEB5476B65A595B75BA6438FB3F6F572FFAF6594F8DA9045653CC6CC8FCF18B9763C33C6DD67F99260ADB7B32BF2FEB17E07013C7A9BA5E3058FD6DF84C5BE9AC083C0E1E497F127EF34FE01CEAA09285959A5F757D40727ACBAF54B8BEF0EAE6401B648DD3D00659D375AE383FC15EEDD065579ECCE82EFB4CDA5639C4BC53D573E342E5284ECF7B915FF7851BCD284D02D1CCC99CA2E7FDE6773B05075EFABA7AEA4DA7423FE5E812983B39CCF9E6AE687CDF56C7CD0478F3026462431B6A1C90AB23E8AF95FFAAC5D48A7630E0D071205BB81876A9ECAF910B348CFCF2E49F474FEE137FB9E1874AC5ECAD36FA28C7E110204E467004C3A02DFFC9CCAB47767034E725ED20660DF8AC7097C58E7A9C008C24590438F0324F9D6A725F1A1BB9D4ABF5E4B15CAE8B8F856EC90291ADC92E09A7E1F7371FF37FB376C5B1B4EBBBC3A43D458A6B84754B4A896CC11CFE5BC228B9D26133C709193DA1F1CBF447B70BCC0FB01A854C02C4150AAB9404B297AFC12E90ACC9E82AD995E2B56A11947A36BBE0EC35D2A20DC8AA197C71723FDD7540B4F96C5635B7A353D271F7E72003E56E3B914414F1844A1490FE6A6F6FE30924824424E600F209383E417E04C7EDFDF0A33296DAE40D0DF517D52D9A7093EBAF6838C583591FADFC96BAFF97B7661B29AFA9306FBCB261FB37E7D32A5AFAD802DE487BCE9F5F7E56EB387FCAAB5AA87ADE372233F9B52DCFFC7039A779982B1272869A334F7EFA499DF3026721802E6D2879555FBF9712F4DEEBD18613179350B462DDFAF72727BB9C9E3A983E54927466DF938F79287AE528CC304936B618DBB52BDF5697B6C8D4F1B10DB41FFFB53FB9AE9F2F82D762D37F7EF7A3B6D02DB2B549147D40722C9CC3ADCA0E7EF55B71171359E3EC2E38FFF5E7D556318E937500D4B4E5D424A61AEFBADB2C579593B2CBF4566205176F366FEF5BB4EF96BEF2734AC32047C81F6E2D3CF9F9AE17B2C677D5523D9FFB7537F49F17BF2F99CA8624507499066C5D3EF2F5DE6FB35B190201A325F7D887CFECCC8417666801EBE7327EDE7FB47480CBEB2FF87DFF7FEB65A5AAE023B7620AEF260270A0063CB1CDF4E44B2FFF51D43E2AE033DB6FFDFAFE9E6C3908147D0A81ECF2FCA1AF83CFBDF84EB6742556D5EF63FAE0017168317137F5589CE053DEDAF9DED5CA6EB680CFEA29B9F1FDC60D5F433BF72EA64B0315254ED4FC2A27C01B6BE9AD39CD8E8B432CCC4256DB36A7B7D3A7B4A51684B321B3EAD413F3E377D52C389F7EEAFD680BC58818B25FFC6C58E1DEE77F29ECE008D8DD053FBCB93737E4B955D64400BF545D14BBE01D31A8F241F682E87A80B802F183EC3505D8A5ED7C95A23C50FC23F597EABE720574E5AD4FAE4009AB140B41623E5B483232B334D123703A6E9FF8F083BBCA2F14E9B9845B549D4C2C1B199B1C00E98F4F7E63FB0B3F2517758EF084024647F1E9CF5FFA98B9E4850053403E01C527C8EF4C40DCE2EE931F41B881F286A6FA8BE67B106E4AF62A1A4E56D637BFD4F5A73F17297D0352F13337491CFDCAD33E2D279F5B1365E9EA48F59ABFE9F7D1AD878FBDE4A27B6F154DC17BA0C93A05F2311CACB07477A541CCEB3B035A4F6C4BF0D6B373A0F93FF6CC45E20B278EBFE46202A0C356089BCFEC3B6CF0E2978B2DB55818345A7CF846DA81D7B645D8EB6B5A0A9DDC2CC8EEF1DF0FCCA9FECF3A5B477B8AC79C2D89C67B7FFB6A85192C54277D48DECF1FFF6D49EF57DB238D1CECC83323961DEA59FDDD89D7DD74F50EAFEAAF34FCDCA51E8A855AAAEBD2047CDA9F753C1CD9F5A55F2FEE77C8797B5D28CDDEC93466E71146EC7313F64F913D9F3AF881E1D12D074A747F2BD000145D7A3EAF5EFAD823F5ED45A60E8E26F1AF9F212CDD1D826CE5350CDF7771B7DEA1F57E7A4EB3D6DD747BD647F17A0F1072D43801710371A0B83D77F5C436D1C99D9E331D29EE0B5ECA735AE733610716811EF7D54F1BCAF7ECBDD0AB614E13149F207F19443CBD88F5D3560757478A5BF4F2AF4BBCDEFD2BE959D9AC9D6E7162ED0377759D964659419055DC02271CC539C0122E54277040A0C17466EABBAF9F68E48FE41F4C087018CB1EA1BF77E3AC969FF8F505CAE9279D5C1CF5439FFA85F6D2D56F96C2ED26885F841EFF1AF8415A21533BCAA94C96224071059202A213D1ED02B183E8C0F8471EA0786C5A482A2C25AF58E5AEE808EBCFDEFBD9CABA77BCDC1CC99E8FBD561EB46BECF536E40192E7939F3F2F3C10E081BC4DAB71B7B941C4332B68999F2F8AF0A4DA3B9ACEDDF95D4FC2C90B1FCC3122EB984F407E6185A2C72D88BF5B439D41C30E881BC8BF93D65FB452D4694AFA63C78AA9C3F3A853E07429DF3C05BF5536856199467CA655B84AC9705961079EC9BBDF2668B40FBB892180218021A0EBE40286D83F1F01E944C4749931ADC2A74B694C2E8600860086800E08DCDB8CA30E0561AC180218021802180218028F0202D854EDA3E045CC060C010C010C010C8107860036E27C6050630561086008600860083C0A08600DE7A3E045CC060C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C010C81470C01B27DDAF6ED12E42761C5D851978F808DB05D1B1F2D8B1E01A7FC134D500EA447B5B23C847E9956A8A755F84308E67D51691A32EA3FFCCB41FCEE95E7AE27F2EF0BBA0F8D107EDBDC536D0F8D3698228F040270501D3F8E8333C81AEF47C29E87DB88E9CB4B981F1F0ECF2B1A4EA44D9E173752EC9B5852011F934B34797FF98A0F8C86CA71A6BEAA8A76AF3C85B45578C878BD7FF09BAE36C1345808BFA6ABF94879D9A14ED6DF76E098CC0480B630996A68FF56B0FF0E3B73F8CC492EABE76849EEDBAD067FC1562B1EE17387531BCBDFB8DB5081760025C235B188C9F95595C1FED6050169963F307D1DA3E9960FB2F5EF2A17A48F463AD9C8F3FAB2F03862F7CAD3F21E2ACDC8F1AD20DFEDB6E6F0F9F03C56D7B785B91F741A5D56AA47727982E6F83F3352155549450E9966FB6668D04E7B335BF86C0511BBA0ADE6BDFCF224F6F809DD1A95D2E2E6785595E72BE93344072BD7DD5EEE1BEDCCAC09382E6728A5A9626F7163A980804EC7DB215951A5B4897669A1CA180BDECE6D715B9445CE9D33D175E38779A3E7A5F1C8C75BD987A784E91D48CEFC69FCDC136D8B7D60595AC5BF04B2F9F3A1617B9C2DEC88381EBBFF6C45FECB55BD834A1FFA9CC08F93B63E136C52F61AC858743C41DCBAD1D1E3675C86D28853246CA5CEDC49AF78A95F48A37B3C411D1D15F1DEFDF338329E53AFEA78DAA6D8847DFCD2E76F64E730F938927E8095E353DEFE317D776EA01CDEA89BCE53E496F5C5E087D5B58569861E898BBCFACA731372FB1A05444773BBA73C3CC2BA3A708ABE217C229D9DA9DD4BE19169B3F9DE996DFDA08FB9EACA3F4563B0C730041E020420FA9ED84083EAE25C772B99365463EF6B8B3DFB2AF257E5F75472C5667095F1F38EECC84686B36317DEE0F984A53BDA8B6F8D754055E4108C5F8D9FF3786FEECAF36DA51C1145CF74B95FF4E97871C495F2EAFBD574A28ECC48333E0EB06A6D2C5A9CD75FC316516870B9B3AFCF2544A48F7E844A4FAE9BC42E9D5C84A7C6B918557530DC5CAC2CEB1BBBA419069897E492F1D6F6E1C9536D35710F2C4BABF8174F5D397BFE7BF8B2CD8929B758222363EB5DA1D1BF0BAE2FAB1B9547845A5C8DE5611D1045C35387C735B3A2C68FD223CA0DE7D0E17AD20BDE96EF65F5877B39B2EBAB4A67DA008543F4CD16ACFD8935A91CA9FF79CCEC96F2EC1620FBDF7D839210E26F5291B4B48A296DD685753D0D7B7A1AE026F65D856612B1A06DA0E99D4CEAFC25AE41505BF264CDBF2A3FDE3E6D6DD0DD1A6682BB8337999B5294B6BEBC1739C09768B03A28EA4B0F6B674858DF56FAE4EDF25B3C098E48FF7CF93CFAED8BCFF62281A46F1955359BB7FCAFC262E258CF4BB5C305F7E07647CEDEE7646282E3973797ECC8AECAE74B54BB08E33D06BC99A5D7D7B3BC5759E8C3E76E0D33DA7F2C29FCA86978FC184D557F80F951F5C7C1F30D26CF44C47CE64AA78B58972B9B6C3D2C3E84878670CF717DA4641037D782545C57964BF77BCE4C9C5194B4B86C88832A0751D8EF4AD1E04A7FB7D9340297D5FE7156D6E7BD7CF178770F17B771BB545955402658009283C3017153F470B5920F17862787BBCFFAB7AFD31C03789C3570FC6EF6CBB503D2C337497E33437E08728FA6E1BAFB6A5FCBCA3FC514217E591B985BC35EEF65E74CE49734166DCFA92981230A64178C9BF2D85AB9E78788D23AAE603549F4E723667FE2423715B1AE55359B4E7AC4AC6A2428FF4D9E131CFB12AF28A282F393BCE1A42C0EF12195246D94D7235CE740F3DBE9CD1365E02DEC42F6D11A565533144B286A728886B1FAC39F973416488F53E5B3074E96943DBFD2C585086838C9B6A717FAB2DBEA8F35B4DC6609A7DEB60A3AB75FEF1CD3963BDAFF5B49D9CE152E3E9214743A54D7329E07D4EDD2849DFA3D3C65C65613C6D7371BB6C7BB46531ACF20B66BCE4B70AB19911246F92A39F3A8EE634D44010D591AB53E4E8C9FCB55CD761EE61F9C9D742D4CCDBF107DAB25EB83CB953747911AD237DCBE3FDB202DC6D1B1BEB20121A8F1AB83A505050D4F403D55926648F7FE2DCA32E9D6ADFF0D2B1FF9AD4579135994D73845B50D8D6D0BBC179B346EB71EFD217964AD86865334728369F2695480A4A2F9463FA3E79E74D059699D1F804C569B734E15B2266B0D61DCE1FF74B994F949A64F9B35ADB97CFB8E90FEAF28F770526F129F1814107FC8BC79FB5FE9193CBDE5B3E24F850DF865750E8B18A75B4589AE74FDDEDE511C14E86AC36D4DAD86CFA4138116A2C87343E7BD0D9526FC595F8E33792A2AFE62E890F7ED2E064853C8E2DFB13EF8A29B6E3786FB2524170B87673CBD22DAB35340F603F901FAE3A088E0F88FA955CBFEBC765762FC64D482EFC94363BA3414FFB55E1C509CE0494A3E6F29F2CB89F6F0AFCCE7A3E2003F43B278CDA669FDD553B93C7294CFDCC448CF8B974A2B95BA7BDA4ED5A2CA110370D3593ED1D37BFE55B7E1373313970D7209348BADDECEC1D0403A8C27C9FC791BEE97C97F2C601282BCE32EC6B8E55CAB6E42ECA23F6B52B7F85C46A9C46447D4BCC49021DF9C5E16A85CCD5BDBB48F2B1C297AD6BC7DA4F2843FEA2AF0F4A7A3E67F431A04C5C86474FC0CFBF0934E83BB2ED53588EDE4CC90C90A3A37B3CBF3DA1A8F7803224EC8CA6C2CDD5D505F2C90F69E651764FE4EE88C8CFCC43CF9E0024D8E70F0D71EDA1BFE4E95E5EDE51C3145CF6489AFB76D77F95DD01289A0F7FDA2A6ADAE6EBFAE8CA20EB79EA8ABFFA5B9B312EE80DECB852798E89BAFF6F7F718AE46AADED805A2ABDAA573D9A6162E01ACC667873A2156E0360BCAD9369E44535E22D8D8476485D37FB89234C55613561098A581F57A76C8DCF7481570FC94E34D9F8E5A7050163F4A1D3E25B3657D5934FFE270628944C53D7A86164E10AE4180CE8F23599D5ABF5D0F9EB797F09B07BAFEA82AFDAC6990A1D1C32878E200F554AE34DEC23AE8DC2CDAE1B4ACDF5952976BB26B12FF4ED81C24186DF96630F0F32813FDC1C22746C56B353C2B1EF936E5C6889FDF8BB3BD4F1890E03EE3E5C6CA0F4B9B4A95AB9086C71FF02D02C906125E818768E00B9EAAB535B5DB1D1E64DF93550CAAC04A8FABF22367620F7F945D91CC843BC4DD1FDCEC467821FAB34E92AF6F96252144FED992F25717BB04409D19425175532B7F9E6B00D47B0747DF662BBA90CA9076BE011764BAC59A7B20B9368F03CBE93F5C50F5EC02177FA82B0BC00E938538A28BA9C56C36BE8CC16CEDA9FB57771D9817B983CE0FD21F477FD25E7830A5FA0EA2CFC04F85152F592B262744CCD4416EBFA4A749404F19E4F4497ADB496EE614FA52541CE08245839FE757DF427AA6C2CC9ACA32AF992E10AE720ABBBD50E58801B869E1DF0970114D7779527F4ECF3D3A20AD6FCCEE6F73A5FE852F41D7AECC2ED9AF397535B55E4EEE90B4E11432BE2CA8CD95FAEBC7C2AAE7E6CF847D7D5BD7726572B58F2B9CE913B6FC6F926BF3B970B97DFF2BA8D865652DD753C7FF910C5C7F9E6D7939F3F239784A69AC5D87EB911E7D915DEB3337CF2E63F02906964FCC8A498AE2FA8E2F6D103C3CC3378F1687B6F364E342743912F69FD9B9D18BE28BBC146A316A9624B5C8662F513495086A3A6BDF857F6E53FD6D9C36BB0624CD9AC3EA2ADB90515EAAE311C88870E574C96EDC70A5A651A62B888E3CA36A178A929390C861AEE61D4DF91DA2D11B4D9C7DAEE6C66D1DC31AF212C9F260B0248367B8C29AF61D035E0C9BD205CAD212405EC2D1B7DB0A0EA6C8E207CE33152FC8E2676C154C4D0B74FF0A078EF7E81F0AF5AC2A68C81E151919593F1FEA1F4219D2C3E3D0F961F927E453FD64929EBB85E36BB316A61B2747DF1D18552B514140C313544F9100263839457D1948FDE84AEAEFD271307281ED0216ABB8317157AD8473ADB2EBD07C9BA4948E1EC90CCD0F8B78FD3F17A4FD5C804CDBD99A5AADF309BD39170A4DAE6DD6D43C6916396D77C5824E216447C6E3D47BA964AB8BF2C9409C90C7486BCA9B57D4D6A7C1040DFC626EBD3C5D280C21505C0C4C77AEDCFAD9B8655DC6D2CF0373194D17C573B79A42C538970471EB2A86C6040037EA10FF0A920D918BCF650C42336472C6052BFF26ECFBD7CDFC77FC66BE1B19E86148D5138F9CCAB9B9A36E04D83683F881FA939D48BC1BE3FA8CF48AC766F5C5D21D1E22A144FE8B184F808072E0AE29BF45D1A1918885423C01EE744EE54295A32B6EA08289547712FBA8AC973A81076F36C3E7BB50AF1566343D39BD9B2A9BB210736B95F0192259994EF9B3D03AC415D91EE25F538A935EF1941A4E82D18B31B31C6A531EEF9C18D012118337F04976E92516524338700722AF6493D2D20691E6F45F6FC2F7C90D2DB21A0492833778724E544C775658725B095B44A5D157F8CD3E36C72D2CB956FE20C81138781C038F6510E9BACD0C290B94A54B3CD1CCC07C5D40D4C1D933B353EA5A6191203ABCDEA26217503DF00D92D9160BEED9BBF0229FA4ADA3B9CFC72598D491AA212F8986F65C4F3E04F9DE5E18F362D7F5AF34E70770B1E8593A830DC84B644712FFBAF6F103F2AF8477F94E8AD5ACB0E32BC2E0512697D575B8AAA1C4446F0407882B25FDF9024E7967F57369C4FC453E61659969A0BE262A9E78503D857B4B969F79705245E69B6DF54FD76A31F50886547647F57594E18E0C1359DBAF79FA4859AE44D831D8FE4D0179DD0A176FA8B619341F38992AD3785F387C7140EF1D7B83EF2B656B9CCA8ED2F185168D1BCD551B5C31AF81D9F344D2F5E3B29560650B458C53AD92F3AE166771B682D6F42A8DED264E2CE81091DDA8049C348F91A946A6423603FE9520E14B0834454686C80674F9EF9291C1863D190D7B606E02C5DF39F46A68D0ECA68C9BA028C401F841FA43FC6601C553491F4BCDAD0248CE643126C1E1350B9E246640B8291ED356BE885B27D00B35209EE14DF41364F1E91C2F6249BA57F3601B5F84D39B99BDCA552E9B401DF31749EAAF6179B707B9AF562EC88F7261DAC615C46F114C88138BA9C107192FB7A4F85A2E61FA8D031CB73161E5E93B77E015DC099772FB458E0D0CF66DCBDA34A4E001C9395BB186CEFC775663BE740B3E5FB1D6E80BD52AAD292A158327C19B04B6B8B86C71B4A031DA4ED4972DCEEDA850EF044FD46C92BF24A20166CF91C2D26D2B9C7DA1BAD6B1AC854257B36B12D128B7F54D9D17D24C37AFDCFAA9FC2677932994DA0BCE4B625E3D57C4E6976FADB0CF88F1BE71ADAC5C738A4029732249394B134AD0F312C46F13A2C50F684AF35C257A9C20AF5D0C1EC94E3A922DD381E0EAB568ED607925CEF843D4B892BEA6A17C492462115E53DD47C77300504F61D1FCBE675332CE903C2E27C4BED97F7DFFA0341582EC52D3471D5DD586539D039D42B23916E752DF507FB96FB87E5400D1E8ABFCFCBC997575F7E85DF4C2EE9DCA4B2A2ADF9D107F4C92FB71636F8390684FB77BCACB32ADB0E3DE456B92201C3CD24C3A1BEED90C4F59B07176160EBBBC2C926ECBD61A45954D6DC2F9215FE0248929C3C0B1A04CBA70E8F72EEA6F216EC9779035CE1D21DE16DD5965B0EB09AC5B5C9397DC2DD32AFA4628164FCEF2F5278E204F906C7E9AE3585E5B7BAE7BA84B422013218290CBD6A028881FA8FFE0B1762831D433F5766D91D8F889606F4F685883781C488EA66790C168ABC87085957E52DBA87AC743F3A3F2BB20DC64B7B5972F1AFAA1867F2B3AACF276C959648DD37CA3977D75716186846080170F73B98342094DDF725B486018C494170D19BF1EEC969C5D5F2E31D91EEC65DC915132D66B512F5708F023C848109E82C1E31DA43F83675EBFD35089377D2AC4D7139AD21AA7CA14D6F86625BC63BDF066A47F735E75F28880AA6FF9446880536F8E6C69834AF7FEC66EF0CD4BBDD210945E203942135FB6E9DB01AE35A5ADC5D25DB52BFDFD7CD98D8DA0EC41B2FC28C499DD5AB71DD9A5790F9B83483647639DAAEBEACE770F36F3712606E66BFCFDBD983575049BA3F3D1E8527D50EC52D8A7F5FF893ECED643E5971C0A07A5359D1818B2FCBCB3895E6FFF647949545E99F5A9FDE25F7D3BA24A06757ED30F94A579A0BC3474BC837C3AD8ED46767D0592677C3C21E9DE05F09466A2F26EEAB13891581F8AB54A2EABBE3ECC23504DE25CFC0FF88ABFBAD6D1CF174DD8A53CCE6FF3E33C87B2DABA0BBDC35D42A20DDDF685D000E396B40260471F8427A09E2236889822098F53B3F1B649664CF0AD6B791970530DB66B52CF4EB5E114F47E52457FC727323DC6C8044971AC9CF6DAF5A9D5754ADDEA49CB7E900C3C46D5D224F6DBC12129C16676108E37DA73B438374F08EF399DD64B545C7273B77FC4F74BC37C2838D648C7A1E2FC1C45DF963BDCF897D8FB5549E573C38A84A1D40392EEF61CDB4ACA4FCD4BFB322A2AE5F108631CBFB2A56C4D5E17D2528919DFDD298F8859D8154414B07B8F9456E658DB21F6087ABFA8B5F82820FE3FF3F4209CB0B5AFE5F3F4A25C60146AE007E92FCC294C7D2F22FACAFA50131133B1BCA6D0CA527554340157801CCD234E61FF17257D1763D6B29120D5B8AB16E843006E327E1DE48BAA2A52968942BE885D75CC00C2F1077FBD7BE7348CA7A4774F6EDBC9F095237309424EFF2FE5D5B9B6B6725D0483C7580EE7D747D8E3F9654DC5AB0A7A142D2ABCFCA96E17C08F40BB0078E284B70BD33E8988BEB921D244CCBA56595B62650E9431951B9296FACC2729E10712D65FD223C0EF5FE634952EC9972E6DE00DB685BA33CBAE5DD0A68F231EFE32358B121AF8D7EA682BE43D4E4E7147ED969B9555A0ECC1EF78FC928E7D5CF4AAD4F36185D11EBFE8C2382363D80FBC91ACD6EA6537ABEB7804743AAC8F4E768120259AACB7955CCF1CDBC720AA69E990CC71F222F6174D9A97448C6F6F952C7F2C666FFB95770734D461B4B281595A8C43CF4B82AC82D4FD11D1709E3111B1AE54D6165B59A0C99D8C26E83BD86A77287EED3978364C389ADFD1F0D6D55BE7346C0C16F41D68B6F93C78FE97A65478AFC808AB37B126734E650F70F3A3063C51EB292C547E49FA3BF3D7D6C59F09778CBFD5D2AD2167A1C7CF6486FF33EEC3B63D929FDCFB67A03FAE2564E099BF363A66AA7DB07F9AB95AE88BD4BA87ECA3895865D1C26FF787655AA19E56E12AF63F84617C7F3C8449C110F8BB1020591F88F24D3022534986AB2357B5C5D898FE5D9A3C84E56219E721740AA692AE0860610C460C1B2680B1C1EE684040D0FF739FCBF1A51B0349C2DAB6D24DB7BBC65FE4D4F014760B4300430043004300430043004300430043004300430043004300430043004300430043004300430043004300430043004300430043004300430043004300430043004300430043004300430043004300430043004300430043004300430043004300430043004300430043E01F82C083FC88C63F049207A72606FE03C37A5AA19E56E10F0C222D0B7A34DEE87F34ACD0D26518DBFD47000BA0FB8B295E6FFBE20D294E1448DF3D7743FC72CD1F9295158DB9E0FEBA0055DA0300F90114816ADA0326FE3F31F301A3FAFFB238C5978390909A17A70A01F265EDBFC4C6EBFD83DF74B509A6C1CCFC9AAEE623E565873A593A7FAA5F55F8FDFE1B6C82ECCC1AAAA1FD5BC1FE3BECCC1D9023E27A8E96E4BEDD6AF09792D57CEE706A63F91B771B2A40DF52562A82CB65E475361D28A9B83822D4F0ADE0291989B7735BDC16659173E74C741D7BECC40874FDD7781F38273B94076F651F9E12A6772039F327F0F7940964F3E743C3F6385BD811713C76FFD98AFC97AB7A07650640268F19B293060406A676CEAC8E52D9C7E8C74D9EDA67D61500A0CB213A58B9EEF672DF6867664DC0713943294D157B8B1B4B0504743ADE0E254A05CDF17F66A4825C362507C00F918D3CAF2F0B8F2376AF3C2D3FF38866E4F85690EF765B7347128EC7EAFAB630F7834EA3CBEAB566A23E2A72C834DB37438376DA9BD9221F376717B4D5BC975F9E243DC254F76B1AE304A40C1E9AE66C801E2720756474741C343FA3DD5D507C8ED77815FFA2D72F125A7605C52D64F5DBAA590549570E30C74B810CBD731799BD7E212BFDFEC439E462EBF1B68FDB6A2B633A7C483167E86653C5DB48BD83CFBB23877A86FDE0E73C4B8F20E0F49F2CCDD95D33C09000F881F5F176F30C807C54DC61A78FE731548E7B26A2DB852656633B3216FF684FC234A2F14B091B6AC3ADE904DAE6F8F535319EF38CA934028146318C74F4FD697ED4C2F1EFCD03243C00326221DAA7B4D1E864438FEBEB56FEE665ED4985C8448ADB0CD7CFE744C4EB8F4BC01348F666CEFF7E6C536FACBD39E8905C85640281646968B1DA774EF5E38BFF6532C5A3978108E1F5B6246CA89CBFB23FC1C55AA1C964FAE3ADED23CAD7CC7DDA48A33278EAEAB91BBAE7F9C41B922978A28589DDFB0B565F73D397F59EA8F4E09A351111107156D8EAFA5033C5C9CC5235D120D54407D9A6228764733C61CEC76E3601FA642A9E68AC6FBE356245D74237473280AEE217BCC1F38B36E4FB1A6B33360669844E87E8FB966DC80F09C8510418D5D83B63C3EAB37EF64134328500D998397D1617395FA516A8EBA3228760FCD6B28D65E12EB36824329E604833DB1CBE623B9D3AD600002000494441547899AFA7E6533341E0DFC7380115A1820EFE4165032DF591A9878603BA5B75120B8B00C5E7581CAAF85763FD1A57493D4E94D5C51BBCBC74DDEF56133E866A6015D3BED4CB199497D0AD05534936BF2E8AFBCCDD6E9601458F4030D2B7786AF6AADE056E0E78BCB5F3BCBEF5735FB6A41910213B4BAF0BEB1FBFE0A44704F24F2C62CC2E2DF9C79ED6D52F60CB0077007601B8E56475AD94E21FED513C392E7465FF222F2F380993ECAE6E786C9BDEFDF2185A7153A6A91B26138542A72C8B5B97EB6DA8DADCAB7142065E458FC72D50E553A8A8CA8F77F258DC11EF684199D8848FB1C1BF6C5AF679487CE396ED92ED1B8B633C0240929540C0539DAE3FBEF81973F75B8F2F584795DDD0AC3FDC6A4656AC897B4A73AB094B22D95C787CE94EFD716FC2079B642DF6F6B38A19929F3303EB39F6A3D42951351C04C864BE04C9513C87D773B9BD61FE636A28A1D1F116F6B15DAB4323347C6E996C7B7A69C2CF01AE310690E6B669A2DEE43961ABFA16BABB52C7DC4A59356FDD1D2FB5F899F098BA3E6A7290DAB478B3DCA7C8C378AACB2D347B27080680763FE3045084AA3B356403A2C1EA590B1B37C3C1B3B96E9E5F34451E6378127D57CCB24138A8B6ACB914127277135A4F57B51870474D9D13C150BDBEC05472B84754C69A4D483C6F58FA8B879911AC9192998674EFC4A571CF9B403AA5B68971A8EE5FF4FAE53AA10CF53851B10A9A37675D81277C7CDDD88577F25CDA31C7DA00D61FF53C28C4AEC7DEF088B8B56E2B6C2F674DFC3B96645D021E47D073BDFD78FC22B2C1AE25EB2F392A9C87C35B38C6772FF17054C348CE3FA19E6AB20B8D5FC96A0DE1871A57BADA8BD7D6AE49EA9D52FCAB671D82A34BF469C7FE1D57AAABE05942C9C80DA6C9A75101928AE61BFD8C9EFB3E2B895613EE3F0D32596DCE3955C81A3BE61D58041EA71624405E189DF68EE62E3F7B2F620B9089447FD6A46EF1B98C5289C98EA879892143BE39BD2C203772C3D4C22580D5F8EC5027C40ADC664139DBC69368D29F60631F91154EFFE14AD251F00CED5881628944656259CFD0C27220C3F478DECAF8956FB55D9ED36A716D85E789BFAE9FD0E660458D86E876134F30D1375FEDEFEF315C5DAD7CA031880E99BF133A23233F314FC3E495A0F7FDA2A6ADAE6EBFAE8CA20EB79EA8ABFFA5B9B392A779661D3FC33EFCA4D3E0AE4B750D62E9E1A6F00599ACA07333BB3CAFADF1883720E284ACCCC6D2DD05F5C5F0D4D6D8A5AA0F9A1CE1E0AF3DB437FC9D2ACBDBCB39628A9EC9125F6FDBEEF2BB1A4C008338AD71825EAC08940D884101F187CC9BB7FF959EC1D35B3E2BFE54D8805F56E7300E9A1D32F73D5245C21F75E578D3A7A3161C24490FD64612DFBC38D532A6B8168082038EE8E93DFFAADBF09B9989CB9083C72DB67A3B074303E9F212F116D641E766D10EA765FDCE92869A36FAA8C6219A7FE11372D1EA9713846B184B3DAA71A28A023C83DFD2CF9D61AE4F81F4BE5BFDD873B8DAA8F3F96473BD9E7E1697CF440E8286B55DE3ADFA18C9E2359BA6F5574FE5F2C8513E7313233D2F5E2AAD84B4C4196F6BE36437DC5A29317C527FF4723F5F11D692C1FEF6569A952BB1A66542882AF895899AEC42E3573500F56F505CC163005DEC3D531AAB955DA83A281195E25FB5E13430F33F1FAAF7DD8DCC4BB2BC291EF936E5C6889FDF8BB3BD4F1890F8EC81CB8D951F963621B3E1FFA08B40B2818457C6E2014D7378AAD6D6D46E7778907D4F96EC447B342E559A50C01E85EC8C34F4EE848C2F0B6A7339F02256FF8F8555CFCD9F1900F5DED69428C961AEE61D4DF91DA2D11B4D9C7DAEE6C66D1DC31AF427591E0C9664F00C5758D3BE6330E153CD355DC281E33DFA87423DAB0A1AB247454646D6CF87FA875086900905127D1D9D9358C0A19939F9B05B6F711FA07F95D316BB71C3959A46D9921F888E5848F0F00CDF3C5A1CDACED3B43C2811D474D6BE0BFFDCA6FADB386D760D489A3587D555B621A3BC54B96D56828C64E0FAF36CCBCB9997CFC1F13F36050CE3AF475F64D7FACCCDB3CB187C8A81E513B36292A2B8BE996DFD729C54F541972361FF999D1BBD28BEC84B5124A36649524BD754C09ECE3801C510281B48E8CF3A49BEBE5996C484BDC13F5B52FEEA629700A8330347DF6E2B3898529BCF45E2FF7041C50B56D6886C7E1BD200DC9F0B0D07A2E92E4FEACFE9B94707A46E66767F9BDB8DFC823894E0E414F56520F5A32BA9BF8F2A70D7AC0F5A1CA2FB5743FD921BAB1A276818487A879890B3898D112D96305C8E9BB1D888D6698C6F68E06A4A1BA2C1CFF3AB6F211609336B2ACBBC66BA40B84ACD76C9CB26CE74894C0AA37C77ADB1156F432788FAE1DC4E34792DCCE67A5E658590CB2692F527E43725FEF1B8D560172A3F9ADDEA3408145770EF42177BC9F62F4E6E977AF16A14A5F89FD07012F51C7E98EBDE9477F9F3C1F1A1A588D7FF7341DACF05F0EC07646B6AB5CE27F4E65C2834B9B6792AB55D4D950743100B3A85901D195E0757539A6C7571E3769916421E23AD296F5E91F4447BED2E8844D31772907401BAC4DC5A246B20179F3B3244B232D5D0CAC24C24B32D16DCB377478538495B47739F8F4B30A9235583FEA2A13DD7930F41BEB717C6BCD875FD2B06A041906920E15DBE9362352BECF88A30B817CC65751DAE6A283135FB78E3F64B3286955B3F437E716CD816F05BD299AD3D9AAAAAEC89FBF0AFAC7AE3896606E6EB02A20ECE9E999D52D70ABB00448797E0694EFFF5267C9FDCD0A2ADA7E071363C1640B835CD28108C5E8C99E5509BF278E7C4F6582262F0063EC92EBDC4422470E0449C57B269896B10D4962C1D49A8EA0392833778724E544C775658725B095B44A5D157F8CD3E36C72D2CB9566B4314784F6B9C809D8A9E0D32D82E06A63BE5C1237BB8CB188973B223897F7D3CFE19BD6269C3791F2F541CF0547712FBA86C34A95216D9F2330F4EAAC87CB3ADFEE95A2DA6A0E0C7D5E330B5670D7A9CA0D52F13BD11457E508D13000EDCD1FE1E3DCB285B63D39ED25770A16FD85A54E971F24635566D31BF453130908885423C41E3660779C178A2E19A59713F3BF3BEB879F3BFC3221C241C1411CD49781C7FF8ABEC61988948A5D244FC5185FEAAFC0AFD417681F80176AB910914405CC1437B5DEC154F62975AC140C258FC2B359C44939763A3829B526737B2D1F3A544D831D8FE4D0179DD0A176FA8B679F2794F60F10FFA8670F8E280DE3BF606DF573255B5E677AF94EF4A9D8252C81484F550559548C29710688A1611221BD0C75A4702D58D4AC049F330896A642A640F6B686571387D53E78534D3CD2BB77E2A5787BBC9144AED05EB2FE6D573456C7EF9D60AFB8C18EF1BD7CACA35D72FC1E091ECA423D932E90457AF456B07CA03CF241B7A2DBD6359E09E35BA6B69824FEE856D0FA6C954865C221A60F61C292CDDB6C2D917AA6B1DF3130A9D1C1B18ECDB96B56948A3A9B0703CC9C3DA798B8BCB16470B1AA3ED447DD9E2DC8E0AF5CED3981A90F1724B8AAFE512A6DFB866711B13569EBE7387A9529672FBABA60F48CED98A3574E6BFB31AF3A55BD2F9A3FDBF9594ED5CE1E20BD5B6A8C6A5323428BF4F779CA014A94252CE0684920666CF1349D78FAB4CEF43FC3621792CFEC954230B59BDD0666A74720D100E741C06B87502BD5003E2199E5A84F0FB9E4DC93843F2B89C10FB66FFF5FD83D254A78D3ECA7148E5A2C7C9297803B65AFD1A2CAF94E753B53801D828E00C36123D77B8912A8BBB33708CEF03679A1359BF22B3563A5E1AEDA219BB7C1D1BB98657BE32B13455E638113393ADBFC48C7C64545E494CCDEC1CD8ED0D521451F8E5EAA0DB05E6D7DA0A310F3DAE40BB0141F69EBEADC12EADB599C0A86838F194F85973F7888AA2EEF63294194836C7E25CEA1BEA2FF70DD78F0A201A7D959F9F37B3AE4E2D20A756FC837A8A975454BE3B21FE9824F7E3C6DE0621D19E6EF79497655A61C7D414201020337D93D98E5E9FF9E0BEB9DED62B30BCC53579C9DD32ADA26F8462F1E42C5F7FE2885C3264FC7AB05B72767DB9C4647BB097714746097AAF44C64EF471B61E2ABFE45038C84508C4C090E5E79D4DF47AFB27D35F545E99F5A9FDE25F7D3BA24A06816F0A91AC0F45592597555F1FE611A826712EFE077CC55F5DEBE8C79163EC684D4D0C0ED93281C6FC89A149C5A92186FE14C9E668AC53755DDDF9EEC1663ECEC4C07C8DBFBF17B3A68E6073743E1A5D1A7554BAF73776836F5EEA55408C2E1BA1922C3F0A7166B7D66D4F4CB9C5124E9E7854A6B6A48B49D2B77DF08EF5C29B91FECD79D5C92302AABEE513A1014EBD39B2297D147D40728426BE6CD3B7035C6B4A5B8B39228A9EE94A7F3F5F7663A3CEB5699AE3048428281BF0068F3493CE867B36C34B006C9C9D85C32E2F8BA4DBD92982A1E31DE4D3C16E37B2EB2B70263B427C3C21E979E75A4D21829450A6837018FAA1867F2B3AACF276C959648DD37CA3977D75716106F2A8882992F038351B6F9B64C604DFBA9697012F6F80F481E313350E3913A79AC7E244627D2816B57E2105A3C409C844D1681E4FFF33E3C1977BB97DB8D656C3B04046518BCE4102B60B47F2730B3F1BEED05799E67BB7B37B6CDA46327AA1B2FFFDF0C85D9CBC63037C53F399DF849BE7E4DF699700F8A5FAA3D9A5891F64340A5D08882B14562909E4471CDE06DD2E9020005D29FE150D27C972AFA791252EB27E6BA4D243F072FDCD4FAAE8EFF844A6C7189920E363564E7BEDFAD4EABAC99310A0ECBF89CC63542D4D62BF1D1C92126C6607E178A33D478B73F384063AABA398DAE5F346723A1AF726655F40664719DFDD298F8859D8154414B07B8F9456E658DBC9250B068FB11CCEAF8FB0C7F3CB9A8A5715F43035144934596F2BB99EC990B69AF025AA69E990CC71F222F6174DAABF88F1EDAD92E58FC5EC6DBFF2EE00A0E513F41D6CB53B14BFF61C3C3A168EE67734BC75F5D639784B11445F64C44B1BE0518CEDDC399D7795574A953A7171C89CF61477702877EA95E4F47C5861B4C72FBA30CEC8185E9CE18D64B5562FBB595DC723A0D3E1A8C31B6C0B7567965DBBA0CDDE257EC7E397A6D8379AE825494B7DE69394F00309EB2FE911E0F72F739A4A97E44BA7F475D2473CFC656A162534F0AFD5D156C87B9C9CE28EDA2D372BAB74AD4DD31D27A01015F402B28118577273B77FC4F74BC37C2838D648C7A1E2FC1C640C2DC82A48DD1F119DF27884898875A5B2B6D8CA02245B4ED729DE34E05091B24C14F245ECAA63F0EE54FEE0AF77EF9C86EBC4F82E50497F67FEDABAF833E18EF1B75AC65B0E15E50480F804F90B54BF60B1BAC509BB04AE9584F6748E4488EBBECCC4798E0C76C185EA048E06A0C95607A35CDD713877BF055DE3932B03CF9CB9F253F3ADA5D4F01FE6ADFD8E8A1772064E96A6BCDCC21191ED81FC1C7D94FAA8413E1BB0B8A2B464A6505C9A6A50E30A34E2049A2CE944B50BC80FB8A114FF008E7F04190E23D4CDD90F8FF248A06BB7FFFEE1D1594B4D1E7EF0B534E4E1679B56A8A755B80AB68F707578F8A308D31043E01F83009629FE31AEC2149D7E04B0EA30FD1863253C1804346FF17C303A60A5600860086008600860086008600860086008600860086008600860086008600860086008600860086008600860086008600860086008600860086008600860086008600860086008600860086008600860086008600860086008600860086008600860086008600860086008600860083C5C083CC88F9E3C48CBB1F7C41F24DA8F7059CA81F4A8569687D07DD30AF5B40A7F08C1BC2F2A4D4346553D8FF3BEE8F9E084DCD3D9260F4E4DDD4A823F557CAA4DB747306E0C01CD08C8BE7F0D6710F53390353F88DD9D0202D39797303F4EC11DD3F088A2E144DAE4797123C5BE892515F0D7848926EF2F5FF181D15039CED457B554F967BEF190F17AFFE0375D6D8269B0107E4D57F391F2B2439D2CE0D11CAA72EEF7DF321354A58E7F949C6A68FF56B0FF0E3B7307E428CA9EA325B96FB71AFC055BAD7884CF1D4E6D2C7FE36E4305E01BE92AC70F4DCEAFAA0CF6B72E0848B3BCF470125D9ED29E77BAE58334F9BBCA05E9A3914E36F2BCBE2C3C8ED8BDF2B4DC113423C7B7827CB7DB9A3B92703C56D7B785B91F741A5D56AA47727982E6F83F3352155549450E9966FB6668D04E7B335BE463F7EC82B69AF7F2CB93D8A0AFA76B5411F5E67836503E9680E860E5BADBCB7DA39D993501C7E50CA53455EC2D6E2C1510D0E9783B242BAAC89F68176AE10022DECE6D715B9445CE9D33D175ECB1C34ED0F3D278E4E3ADECC353C2F40E2467FE047FF95DC76B7AB3346ACA95E2738B3C897F55E30ADD5F9AAD45C753F333DADE9D4C1FA511A748D84A9DB9935EF152BF9046F778823A3A2AE2BDFBE771246DA957753C6D536CC23E7EE9F337B273987C1C493FC0CAF1296FFF98BE3B37743C59505B4B26E51B3B53465D5BD802438FC4455E7DE5B909B97D8D02A2A3B9DD531E1E615D1D3845DF104F20D999DABD141E99369BEF9DD9D60FF888BFCEFC93AA8D3160083CB40840F43DB18106D5C5B9EE56321DA9C6DED7167BF655E4AFCAEFA9E48ACDE02AE3E71DD9913DF7F8F17123F006CF272CDDD15E7C6BAC03AA228760FC6AFC9CC77B73579E6F2B951EAFB6DC2FFA74BC38E24A79F5FD6A3A514766A4191F0758B536162DCEEBAF618B2834B8DCD9D7E71222D2473F42A527D74D62974E8EC353E35C8CAA3A186E2E5696F58D5DD20C03CC4B72C9786BFBF0E4A9B69AB8E9CED22AC7788DF95D3C997FD5E24A7E229834756B0B2A1A9EDA3E3B291F6AFC283DA5DC700E1DAE27BDE06DF95E567FB89723BBBEAA74A60D503E44DF6CC1DA9F58233F0195C7CC6E29CF6E01B2FFDD37280921FE2615494BAB6407590BEB7A1AF6F434C01D8277159A49C482B681A67732A9F397B806416DC99335FFAAFC78FBB4B541776B9809EE0EDE646E4A51DAFAF2DE21B86E100D5607457D099FA70C09EBDB4A9FBC5D7E0B3E239648FF7CF93CFAED8BCFF622A945DF32AA6A366FF95F85C544E9B81F5149F5F42E02D97C77E4EC7D4E2626387E7973C98EECAA7CF8C077952EC2F89F78334BAFAF6779AFB2D0870F4E1B66B4FF5852F851D3300BE806303FAAFEF0294990C93311319FB9D2E922D6FFB1F71DF04D5CD9DE1A69542CCBB62C4BC61537DC1BB8636C30183084669AE990BE099B846F77B34948DF249BF6B2D9745ED8109690043690841A6C5CC00D77E322F7DEBBDCD5CB37A362CBD25C5972B097E4CDC4BF20DD3973EE39FF53EE9D7B4773AE55B7387A73FE86DC1A129C6F252D57F008AB39E4B286CA0256E01F6CE499A5C91B2B8705987C508103AF97F212833C57D089C289CE37B3B3DFED17CBA7A77B04650D320C4066A802E243200071D3DC4918C51FE90CA2447A85BD1FE0BA9281DC670D9DB99BF74CFDD0189AFBC8814B42BF58E6154327F40ED4FF39BBE81C52F21A9167D7D2823A7E92AF931B495CDE5C7A24BFAE1CF128905E086EDAF7D6DA66455919ED5768E96ED693512BDE726759CB266ED4B45A6BD7DB065A1F7482B23264D5D3A2D2A82AC157EA8193BA31D49F5C9EBC4F1D4784EEA1D6E3B75B675E0F719C425FA5376DAF1DD5AC14E8F12159AC321F79B7BCB958593F4FCC1FFABEBCF2C94477771260E0A4389E5F1FC0EF683CDDD4966B4C5D55904292EE2329DD5327859A42E2FE8A34EC76B841ABC0B8BE5EA06EB0DB21EAA243CCD17FA6371D89F788A1365F4075379C979051332A2D82FA616AD629D3EF3551210C6469CC789CE93FD76A5A9DBCD9AF5F3472C9470B1F929341FBEAF9033660B3B462E10988532D4E162CBF6FA36D937372FE77440ABA399AA563E569ED3D4E597D5373C73ABF8DCCE623F6935FA48EED323070CAC66E8E33DF8E0E5654B5DE1C1CEDFB55321823E7AFA381993BD882732513B38D8608EEC87FA61CDAF464EB476D5A765ECBBD2365FD35DA2B92DC9F2C262D0B8E3FC16E3D72E576A6C86C6B58FCB988A1C0ECEE11D9E8F976D9650F96797FFF24015EEAE1206CCFA845966164CA02B9CABC395308CAEAF035C7E18A841F1AB904E623D1F197C287FD727B66941CD7BE00E6BCBFCA1F2A4DF7BC3932A820BB73163FE6E31BD589141606A806A407C84F80A342E2DFA4D56CF9E1C65D85D543D1EB3EA7280B142B8FA6B22B49F2E0B2041F72EA4FB6B2C0FC18EFA0EA2231260E083599F3678796A45FCE158828D1FEAB2F2FF7B974B5A25A6BBA67EC522D261F39003793F9937CFCD6FEE239F25CD6E52D686164CE213FB71078E836822799FDA483F083D4FFAC1B272EF38BBB14EB997FA3B605D58BF538B361E38F99150AE6C3D16B2E870E07E4F74F80FA355C5FD078BF229063C2D6BC4AE626FCA7A10A623D1ABDF663324F631653FF851639477EEFCA3B7AB5A149AE292E0B33B7B184593D3E37767AC7334804E9445673C5B1E2C63289560A82D92F862FCA2CBA5CA8BEDDC4E223E59DEDA33F1BE45ACDEDE40AE45433E6A6003FC75EEE5DD01689A4FFB5D296431E9E6713A36923EDDF3434FEBBB5BB1A9980FE9A032232CDD93B8282BC476AD1D09B3A40EDBA7A99DCB735C73D78A2F9F1E16E7862E9610EF562874861282F111D9CA3B223595F5C4F9EE3A8890808CCD2C0B85E11BAFA157215E23F5CC8FAD1E8759FA8FC476BC2A7A5F6CCC9BD363E9001FB62F983C958A21760E04900C4A99A3FC4B15FF66318FDCB5BD9DF4D284D6E8C5E00D9663C1C24996CFB98B7F4DD68A639AFE4C149F92EC03568B37CECD3B49B6381814FADF0FB864146E68CD79AABFF56D152A11D42062E5FE05344B2032CBD8EDCA2810F64A9D6D1DAE958E432E7BEEC3250006B5DAE4B8FD4C8958EBC9157953A8E2C36F5BE9EDE8BD2C2ACC75D15FF4CAF4C461BC517CBB97FDAE81E0C77674A65B52DEDE2351EC170FF1D02EBB0A3ECE78CA9E2D55822C2D607ED851FA5D6170A103E835F16D73CBECE3D08EEC9C6A255B5490924776BCE0A3E54393ADEDED7F0D7DE06302D7A069B1E243F81F590B3F493B4DA3BA83C435F95543D6DAF599C908D67F084838ABE16092B8D271850F477923DD954D6664C1C908E65BC778B6A732611D348B3EAAA2B7D97B8C384EA396C6A62F291037033C2BE33E022591FF5A17D7DBBE0D49032DEC67B3F2D50DA1739243D47B37A541FF31BEAEA7D5DBD60E5C0291DFDA0B8BE4069AF7F95D4FC61ED12C4D6B9A6F6ABE26BBC5F11AC1F74147F9C5A5F2444FA1DF8DFE2AAA376F66A394DFC87CCF0F87A85EDB5AC6B3F2205C3A7C675248ECC581B9CDA1F4BBFB865544C65D83E18169B1C2D0C98DEDA207AFB441E982C0BEF14A9D65CB1F928F83FE415C46C882FF5D588355AB729B94DB57A8921A94252D75DFF32F2974B0B72703DE0119C1CB672A2A7726F26B7C2E45DBF99E992DFBCF77A5DB34A56ED34AADD8E0AA4AB178690B33451223CD85D2D455DB2C99B2D82573DD8561D5D2306F212D9F6931045A6C8629B3DFDB35164336C4E07284B2B007989C03AE228F9244DE53F489EA9FAA3CA7F749664316499890FD8BED8FE80C170D6262C3C41718A3A30D1D535FA83A5B437AE677C87661BE531BB5E4031663E55AB10DCA8EE39B1D62139ADAB4FB1087891F2844C34F875F1ADAF8BD1653B476BBBDDFEE1E9ABE1F0D4FA5643C3936196F376562EE996C24E1488A03F4BD5AA3C2E158DDE6A295C53DA3160400503F47261A33A5D68142152DD19D64F241E7A675AB31E2B652537E168CB25F9EA43D67019C13D41DEBE7DD46002400675587C1DCD86E821168EF2E0452A3ED38CB53F4907FE9A5EF462E09297972FF5B6A099C9C7CEE5A73FDC30A65C18C33A40F440F929AE64D1CD6979C6FAE553ABFA72E5131E32A942FD410E1161201F6406266ED34C681472A91422220F8BCCE5C0E4632A6EA08E49342F32FF946A963A8306B259E4FF59B8EF361BBA99BABD97A65AB2900BEBB5F01926DB59CFB9829F097E457186C537B4FCA45F3EA7819368F9546CD8E2FAB43DDD331D5A211B150DBD95577175028D10013281282CDFAFB5B541A2BBFEC38FF8796A539B2A82407C20C6432BA3637BB323523BCAF9321A9DB52D70C5E9959E11A9F5EA0B4186202814C81FF23F746D68AE872A5D42241B067B7770F4272B96E4A535B4232C41EDC87E8B8E5E73E8996C739023BC7877524A507474B50EF8BB8790BB320CE425D9F00B29A927E080DCF5B14FF5A47C68383F80E5C1CED2997C405EA2B890C529A6FB8F2E3E20FBA6F7EEC0F42BB0FCC033987842A03845664BB6EF780B3264EC038EE6E7EB8D587A0476AC3EA1FB739491AE4CA66A9BDFF0F291365F85B48BD7F9713165F736773FB8BE15B41E389B28F3785E3A7269C8EC4567C6E7D5AA3D4EADAE4C7D70DC20BDEE802B17358DF73D989C720699B6EB1CB2D173ED8A9F3C3817098E92F6DB3506C74D825CD225A378D28804651EA3D02CADA5FC51E42351215610E99A8C0C53182CF567C518AFE985CCA617106A2235C82DFC97F0652B5A32D381773C007A90FCB0B85542F5D192C7D6F0A800E2339B8F29089061C6BAA8EA7C07E1A6213396BF4CD820310B67902E8866DA09E6BCBDD297547EDBB795D7219611CC96E46DF750F326D2A6EC4556DA6B443DED41CFEBF50BB2A39A99AEF780F084C56D92197EC2991B7CB0D5565B6A80EDA6F1C06940E3F625249EBF7307D9C19D71688F5F94554B43023AB2F70F6B68407C2E56ED648DBF9FDD5CA47C045FACD96B0C80EBB5F614B5BA81C8C8430207DDDD0FBA70E8A31DDF34566E2CE8AAD29F04CF946C966F0AD9D078DFC9928AC3DBDC02E086F6A9AC85D1AEA7D72CAC314E9B5BBBADA75B1F483CF4B6FAA470BF359CD10FCE4B7251A350C617730F553967C6FADDBC51C9359C2230FA9CD9A49DA589E5D87909167748B1FC6796254D3D7C6026B67D69026CBF3A67E436EAB446D8780E01E214B94E3CF0785AE605B2F7B58455CF0DA6FC9DA74C85B3E8650853DD81D310ADF639B2C3E938F7C6A6C66B03238D931298CEDA1E18E837DED0F02BAD6B6CF7A6D289924BB9C712E24F2B0ADE6CEE6F92929C594E8FF8DADE2AE932959169F452DEC956F2C5489FD6E2A63C3EC189B3F8A82F273957B5D728AB6EE990AE0D7D8FA0B89C3602BC1754F5271DFEAE87F66DA867EA1D748FF3E1503F4E6F7625627AE2448E90F9B497EDADAA81312AE7A1B08020D2187A05D9E1AB952EDCFAFA1F7B877B14440A09264A857C03A283E881F2F34E77C297C37D3272EB4BE5560F86F8F9C02306D813407C0C5D83DE8CB6CB2CB6D99927774CEA4F3C0C5FAA3E0BC24D75DA78FEB2E12FEAC4393111D5B9E517D13D4EF63E5FE7DAB2924C059101C94784429E544137B73D1CBA34021E57770D5BFD25C43335AF91AB601E09F1B5EACA2C9F9AB5E8F72B05D811A424084F09EF4C17F987902529779AAA21EB4742037CE039ED71EA2C614D3FAC04B9344AD39707B2B09B7C0000200049444154B516D6A68E4968E6B60F8607BBF6E7ABB636682CBF8F9D78CF5DED57BAA0F200F1913203F8D6C7833DEA2ADACB944FD526060506F09B9B41D9836CFB46A81BBFBDE1C8E5B49C5FF37010D9E1D42AD7DA86869F7A79AD620293C1DE1914E43B5ED7407438B516AB5D290F865E1AFD8CFE97E4EF663FCCBDBAB884A78C74D2D2D0AD3FB931CDFA0767CB4B326E75F6DBCE1BCF06744597F34CFEA51F284B8B407969F84C17E57C88E7CDBCC62A34CFF8FBC0CA67170C2E6962E0239BC8C1B4AF40F90CC7D431ED574603A92604E1098853F42AD9B84C2112D4EDCB6566C586E4DC28CC4496BF0DEA6558A6B90E9C92FEB76A582FFA2FBF1D6BC94453DC447E677D52466D83D6B4DA70C70B7C56345AB339997F3C24342DC4C609268826FB4E9515144A91674EE7F5909595A71F0B8AFA7C73843F953031D675A2AC285F33B7158E345F91FBFD4951FD87114DC2D09A01299FF69CDA7E176714DEFA203A3A6D4F9415415CDD56B9B3B0071DA9E4A39FDDE146C5AEEF594692F0FB4F5654E7DB3BA1FA48FADFABE7BC111CFF3F6BCC6082B47DA0EDDDDBA505C0DB4D03F420F9A5F92519AF44C55C4F0A67CAC62F73EB4AEC6C75EF8A66E00AE063F88E533AF85EF9C0A5D85D7CD449751F3336CE6C00DC54179BC05F565395B64516FADEAAEDA7193041CC3B7BF7CE79044F45FF0B051DDF47268EAD264A0583FFE6D616383AAA0593F04E4F2CFE2929CA191257B6946D2FEED38CA8C8F6A7BE5E003B029504E04990E696DC7A2B2A267DEF72A67CE246757DB91D1BC8632E27146D8D590F51233F4A48BA6A46447E7F99DF52B1A948B9B501310E877B8D57DEF8D998398E7CE4838C6C6AF8D22B3B62ECD0DF710ACABAEA0FA657D780B287B86BCF5513E7B8D8A1D4F7B72ACB1702634AE22CAD103B88C6B2DB6BB7A4D7368888D8ED883C26E9058294C44C7254A4644D3DC720AB6BEB52AC74F5250D96CE9A9764A39FE6946F7D20F6A5CEEB2F0F198861ACBE81595A4EC0CE4B92ECE28CBF47C5207986299BB85E5D5F66C7C1E2ABD586898FA9F645F861DB0BD0B9013C31E3147900457D2806BB8B7635C45F887489CF69EB3590B34C920720E6FDDA8CE876E48802FD4BD8663805DFAF1AFC3EE482193E45BB6262E73A07FB7D8030430B34EAEE339FC48365C1FC6C5EA19E57E63A10DD876EBC6046C43BC211981704C8F61F450724585268648B1DCBB777C43A58CF4B37BF4DA678C6F96DDA0D977A0602B81B831D02BF4D0063839F31808064F0EB01F7339BF72D254BEB3B2AF6E7F64CFF90D3C055F8291C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C81DF08020BF9128DDF08240B27260EFE82613DAF50CF2BF30583C8C88E7E1FBFE8FF7D6861A4C970B27B8F00EE40F71653C8ECC8C6BD69AE54D8DCAB606FFC5663DE62889BE0DE9A0093DB0280BC005D60AAB6C08DFF47D45C6054FF4F76A7797310EA526BE2742140DFAC7D456E951414F29C8743081D2116D7F5B49EE4569EE89E30F955FDBACCEFF577B00A979575606916CECF87043DECC45E0C1384137DA7CA0B8EB733AE68692D168E6434739FBDDB54057A97B2561742E1686177CB47E55597C6A406DE153C27252127CF8D1DD19CFC3B17621AF8531523B0E5DFE9F7D18FAAA23C909D73645A84D947A9595F8D81CA4C108814F693E1112FB8719C4804117FF06255D13335FD3C950230F3010B7EF2908461EDE436D15581BE8C1E7677F43EEEEFB9C3CE8A851433150CA7B7541D2F6B9E4BB9F269E8B45FD74E5A6CE771CCD76B9F938D3D9120140CA7B554BD84F22762B7434E185E2A698DFF21330364B2391900B98862E993B225328ED49B785E5DF3886EE9F2FCB280238E6C17324134D1F36949C1EBDD96D7F4A366A63C3A7C2874C7E7C2973DE16CE388BEDC9C5FDC51F74A11375959C2D4F4631EFD04240C04CF7336C0F6139038AA766C1C0C5F63DC59907F4E47BC8E7DB1E38B8C955D417E0BDB7DBB3DAC38F9FA47E3D3BDC0167E051B6CFEF273F6ED7BE3E7E0B88628E13E115F04BA8599112582C1EF2BF28FD50D8D2A00F4C078CC6D5D644ADE408C3E9DC78CB38CA954D87A617131388E4CF93FD695481BC9EAE984BDF591F62C22FD407C525DACCF1A2B1A9D48A4532D96BB047CB5367AFDF4FBE6011C16A019347FC46AA75878A7EC4EFCD6D7DE8706534854CF451EEFAE8C8A379F7E193744243BDBB8BDFFC0FEFE55CE6C50915C0D6722916C6BC1D911B0B276CFC6BF32E7587A198810647630616FF5DAC4C104777B8D24B3C90FD93B477177AE7ED4D2A030106DC7EABDBD6BFCE32D285488C4613ABDB66EC70D4F73D5EC89C60AA9DB19150593C222763486DBA09599C90E6737C4BDE3E514C6A09A118996E69C47566CEF5FE7B9780A1F2CA8817A212774E8C90E671256BEE9E9106C4EA141242B73F6A1A86D3DEB3D5D2880761DBB408C2737EC2D0AB032E6DED89054FAE760D6AB5BF6168506E76BDED54EB3F2CBDCBBE362A0F3323A854A841D6C5CDF895BBE56270AF4E5D1E143B47A7ECBBECA48F7303A9902112DE8360722B78D6C09F0315C351304F23DF41350173AC8400B950D8C9447251E160EFA26455B4C628BD083FC73CA0F75EC6B30BEA645D2F7136D7121C6339B777F6737E365A80CBBD8CECDBE6EA0BC84AD2DB81518D790BDDB9A81A4D5CFD8D21924D8C9D6F7E7A43D3FBB9A9180F433BB98D2CB48FAA9AB4DB50B5833C019805E006A75B3BE545AFE8F752944890B4F1CDCE0EB8B2461B2D32F7B1F386C76AF2C86D5DD9CDBF41553B1C268A76E89DB5DE067A13BDCEB51C20CDFD23D71EB74E93422EAD243AEDE1BBBE25D38D499D530A6C8900FFBB7BC1B1ADF7C1029E1B2AF2CD63B18C4590B0488E69AB267E3636CAF9C3DEB76D354270CCB8F8C9ACBAB76C63D6278D44438911D7EDEB3F909F3696B22854DB237FA05DAC50EABEBCCA8AACD006BCE10CD3C72F7C46F98D2421790D96C391B3D64E69EBB77ED037A2861B5431CE7553D3BC2A30CBC6E99E2787E73C2D7C11EB10CD8F0D834536ECACA88ED03EBBD3C685366A56E5FB3FB8EAF9EFFCCB84C5F1E3D3E68346D3CA0B6297A314473CFC1D27706630068F7D24F005DE89AD3403620317684AD6F3E8078CE818635813154B58F4164D6D1D82D3CC4BB0EEEBC1A1A7A77BF7145638C9447291F160E482B25D23B3A73E77EB47AD2DECDFFF6B6B14424D2626BC1F2BBBC39EE49266C526A9BE987FAF6C58E2F8F197DE8FB890ECCF09A95BB8B7D90F2755307E4EAB3B96BA53D03911FB31E14AAD703CF7A47E5EC3E84E82BD819FFA22DC5148727A8E39AC238BA29E9AA8BC6780488E312DFBBC9DB450F23DD3CA0B4838178C4A2D7D2DA80B931FDCA547D2163F59A61097DA9B4FC5F3FEB105DDC63CEBB0C3E7CBDB60659F0538CDD1C67BE1D1DACA86ABD3938DA77CF5725757C669EBEC2CC1D6CC1B99289A932EFC07E20829E93006911743ABB5A7B029D7D496D402232EB7166C3C61F332B14CC87A3D75C0E1D0EC8EF9F0052A327AC39EEC113CD8F0F77C3134B0F73A8173B440A43F2131D9CA3B223595F5C4F3E055EA19DEA50AE50E82C2C9B59706C8732ADCF1426C6273EDF716D653BE7C6369F6FAEA47C83515811727470751A69AFBE37EB45335180884C73F68EA020EF91DA5AED9566503BCC7E317C5166D1E54203C248FA5F2B6D39E4E17936319A36D2FE4D43E3BF5BBBAB458657D6A145CE91DFBBF28E5E6D68923BA9458499DB58C2AC1E9F1B3BBDE31924827422ABB9E258716399448B95AE3C587CA4BCB37DF467835CABB99D5C819C6AC6DC14E0E7D8CBBD6B4005B0ABCCAB9F60772B036503D2B2E0F813ECD623576E678ACCB686C59F8B180ACCEE1E21C02B4257BF42AE4AF84F0317B27E347ADD276465616D3425AD89D3ED636E2557B1E28540F2F15BFB8BE7C8735997B7A085C73987FCDC42E0A1DBEA1E218EFDB21FC3E85FDECAFE6E42E96AC6C8A3EB8758F6452AE462C5972B4C689A4A3DBA7EA28B02B282DF36285CC436A7C2669FED78E00F84FAE89F8A286CB3BEC109A1781C2D048D48BBD34FF73232E7CF0E2D49BF9C2B1051A2FD575F5EEE73E96A45356C24CE9AB856583C643E796D50AC716B056FB0B39D6EE741AA6B9BE1A25879C0905E58F4BA0A607E07F915720F608ABE172A5619A517A60C5A8D5AFEAF3B70326C827E0A37FBEC66D65555DE948F7D9A76732C30F0A9157EDF30C862FED0B5E6EABF55B4CC65976B36A9E6F13C91EC004BAF4FF903564FC852ADA3B5D3B1C865CE7DD9AA8AF65854BA6D52097F1276B23430BB938E7E505C5F204036B106FF5552F387B54B82E1FE5C43899212E1C1EE6A29EA924DDE6C11BCEAC1B6EAE81A31203FD9F6931045A6C8629B3DFDB3D171E5662EF8900E9DE9333F11EE5353DC943729B3B4B47F323C28943A8C2E289059BB5982CBC502BA8DAB3FBF3D47A83FBA9096B82F4F8EA07E76A3B95DFF24B8CFD9CF68A72D7EF3DEEB75CDAA2D3F503BCA91E8ED137960B22CBC5364687B5021A9EBAE7F19F9CBA50539B81EF0084E0E5B39D153B937935B01D80526333CBE5E617B2DEBDA8F88FF4F2D0123F89BB13638B53F967E71CBA898CAB07D302C36395A1890D531A88642571E6C3E0AFE0F7905311BE24B7D35A88CD66D4A6EEB990B9EF3E927209B81B28182F5B8ABE29FE995C9E38835C417CBB97FDAE81E0C77671258471C259FA4D5170951FFFFB2B8EA8F76F6286F71073A00DC9B030B0792F5511FDAD7B70B4E0D29CD3CDEFB69412FFA013528D1D535FA83A5B437AE677C37A9C1DDB03C587E886D5F03F1A55656D74FB03050F40F8FC36E4C074BFA2AE20897B068A325BDDB0A6A6A121A4A1B32DEBB45B539A846D2ACBAEA4ADF25EE30A1DAB05EEABEB5E21A7260116583C87490C4FC7384434A61759554C82751CC67E437CC3C60402F4C7A2CBDF5DB60905F21B30B53F4A5383F35BB5EFADDEBB568F9FF8C819364B6F88BD55E2D85D7DEE54DDF5ACA44835F17DFFABA18B917871DADED76FB87A7AF86C353EB5BE712ED7AA22C4C835CD22D859D28C8F32D7A4253EC2EED3BA292422A1ABDD552B8A65459D1DEB80326D3CDA502345D800EB9B01ECD1AE821168E0D93EDAC0D8CB20811D9E6204778F1EEA494A0E8E86A1DF0770F21776518905F36FC424AEA093820777DEC533D291F8E02060495040AD1B53B6976611167B64520B360E144CF97354DE5D6366FEE3B7255459078E81DF4834BD3E1E06F932F1CEA53872A44B2D81916F7B59BE8BDF4F47F8C18EC42C5C7A4FFABC21B22D930D8BB83A33F59B1242FAD011D9B41EDC8163CDDF51F7EC4CF539BDA8CB514729F8DDC0BA0D486561488964FC5862DAE4FDBD33D733C56C84645436FE5555C9D40390890445C58BE7F93C732B823557927A12B0F880FC4786865746C6F76446A47395F46A3B3B605AE38BDD23322B5DE684534C8CEAB9F80CD879D0D32F9EE0CEB27D4CEA3BAB8C70AF5738A0B599C32EDFFA3FD72E5C0790F0F4C1C209A17997F4A7537A9D317C5F61D6F41868C7DC0D1FC7CBD114B50C8E5FA7E98D1B713DB4FB0E28B6936A6C90FBA7E02C0413839D867661BED6865DD57F1FF08E1CF3A726ACC04859306E34E2E6ED3DC1828E452294434F8B083BA63DDB886A53C19894D8608E2910FF3461022128D4697892735F2EBD26BE407E905A207E8ADD74CA402FC0AB9B537455FF92C7AE9750C6C98F27FAD8193C47C665574484BC68A663EF6D44621EDE2757E5C4CD9BDCDDD0FAE6F9D7DDD13D8FD429F908E5C1A327BD199F179F5B8AED4E2DE44F553A973100A5D82B01FAEA99129C40A225D3322C214066B6A7424D23C694482320F936996D652FE888151964030B7765B4FB73E9078E86DB538C2FDD670463F587EB9A85128E38BB987AA9C3363FD6EDEA8E41A8E2F09EF645EF2C93C1577A287EF865D43DCA517522D7C37DFB12DF6CA9E3CBA39C1BFE0E7C39A2113A1A35BB9FF73D5F29D226EE2E58A0C8CF5DB39E0867589423634DE77B2A4E2F036B700B8A17DCA4E18ED94554B43023AB2F70F1B5415E904227BDBBB1D74773FE8C2A18F767CD358B9B1A0AB4A7FF234250E6CB5D5961A60BB693C705AC2B87D0989E7EFDC19D7E94B7BFCD59307C4E762D54ED6F8FBD9CD45CA47D2C59383DF96573EB1CD3D00AE6FD3F54B2C88B4DAE6DB4F66E91E39AD9D0D88E54DE37D0F26A79CD1710F58DC21A54CF93F8566C951C585314BA3B34B805260E330246C909885334817447A1E221E783C2DF302D9FB5AC2AAE70653FECE53A63A63E4D1F6439A10DB4FCE210F60EBC5178FABD9DAD0F313808E1201AF99E4F3B027B9BAAC379330FAF9D2256CD2C45974D5CAC4C3A05E18712D1BCFE29B6FB2A19C9C540789B58DD3627E679312450C7AB538D87A81E98DD6422EC2F62BD0D380207DCFE71AD0CB686966106A064E881A1FB6FA055969F4DDFE516D02B2C3E938F7C6A6C66B03238D931298CEDA1E18E837DED0A0E79073EB7EA1AE122597728F25C49F5614BCD9DCDF242539B39C1EF1B5BD55D23537018844D8C69CB9C2C5F71D7FC2C7291DFD128B1C21F3692FDB5B55036354CE43610141A4313567D8EA2F219EA9798D5C05F34888AF55576639F6AC44454EF277B31FE65E5D5CC213A20DA4A5A15B7F72639AF50FCE26BF8C5B9DFDB6F3C6B3015DD1E53CE02F85C8F627A2ED522B6B534644441A33CE3DE8A300F98737BA06099458277A4BCBA880629B401FFF6A744A4472A067E4C5C8C503D5B702EE76F71A7B7B6734A8648753AB5C6B1B1A7EEAE5B58A094C067B675090EF785D03D1E1D45AAC76A5D7D1587E1F3BF19EBBDAAF8118DC1DD9F68D50377E7BC391CB693913D2D9138FCED296723349F96B1FC8A5519ABE3CA8B5B036754C4233B77D303CD8B53F5FB5A48F210F888F9419C0B73E1EEC5157D15E269051CDAC13830203F8CDCD2647D33CFB090851503610F14EB6922F46FAB4225B007C821367F1515F4E726E5E9A64F84C17E57C88E7CDBCC62A02F3E1507F1F5859EFDCA825449010DAED201C86BFA813E7C44454E7965F44F738D9FB7C9D6BCB4A32D14B65E332854850B72F9799151B9273A33013D9DE00C983F827A61F0A662E354FF989C2FEC42ACCF8423BC6F013908AB2C94291F93B56BC67FA850384F6768B88A5A3A56D263B09582F0220AE15933F570FBE16B9FCA8A0F0F490D89ABDE4E348767ED19D4E05805E293F965E86E8414A63B44B017E8541AA6C02D991003960EB05620468D7F27FCDC049B67DC9C7D296B0BCF1D072AD8B90EDFAF4B76A582FFA2FBF1D6BC944EF8F27F23BEB93326A1B664F4280BEFF4BCDA2D19ACDC9FCE321A16921364E304134D977AAACA050CA30591CCDD2AE583496DFD5FC5272DECFE8EAE8E86777B851B1EB7B969124FCFE9315D5F9F64E6ACE12DEE989C53F25453943E2CA96B2EDC57DE306BA2431931C152959A3CA51133964756D5D8A95AEBEA4C1D259E5978D7E9A53BEF581D8973AAFBF3C04189C25039FB43B9D88DFF52372772C9D2CEA6A7AFE979C1F91478A60D6064BD1AD2111D5CAC94BD07D776AA79462F749B4871781E015B8AE67FA266CE8B10BD7BFE29B388A6A4D06E3D0B571D593207D7FABB27C2130A624CED20AD99C118D65B7D76E49AF6D1011B1DB11AF831887C3BDC62B6FFC6CCCBDAFB86BCFD539CE8D665A49D1D698F51035F2A384A4AB6644E4F797F92D159B8A944BFA26C9231FF920239B1ABEF4CA8E183BF4779C82B2AEFA83E9D535A646D37CFB09C84525FD806C202794A71F0B8AFA7C73843F953031D675A2AC281FBD8796641767FC3D2A266D4F14533671BDBABECC8E03E2AD6EC7F613C0450670A84ADB220B7D6FD5F6D3C8D3A962DED9BB77CE233131FDB4B662B0BB685743FC854897F89C36E08C5002F04F90BD40F185886F9A9FF0CB91A82476DE1628A484DE6BE3049F315E0FD2A949E00030439B0DC4756BCE665AE4176B767D4683A482A1EF2BD29E6913C828CEC03C2030C7884703FC4179436BCB4C23B8324560FA15E88E13A8B2A21B532F203DE08496FF03287E13CD881B613E9C7DFF088F3ABA71CFDFDF3F321B29C9FD0FBE918ADCFF64F30AF5BC32D7C1F6771C0EF7BF17E112E208FC6610C033C56FC654B8A0F38F001E0EF38F31DEC3C22060F811CF859101EF05470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047E0FE4260215F7AB2909AE3BF135F48B47FC77D693BD2EF3558EE43F3CD2BD4F3CAFC3E04735E45FA159956B71EE7BCCA79EF99FFAADA26F75E9C7BC3117955F1B98E7BC30AE78223A04240F5FE6B2453E8D740C621BAE708CC5F5EC2ED78CF8D3527869A81131D7BD7C48D95055C2EAF42DE264C62BEB675DBEB96C35C8275802E5F75A17608B64A0A0A79CEC321848E3011D7F5B49EE4569EE89E0096E6D0E573AFBFAB54D0E53A5D569E66E1FC7C48D0C34EECC56829CABE53E505C7DB195710AD359788852319CDDC67EF365501DE91AE537E68767A5D61F0EFA620A0CCF2CAE224A65C653CED7CF30749F2DFEA17248FC1768AA54FCA96C838526FE279B521E8962ECF2F0B38E2C876211344133D9F9614BCDE6D794D2B8ED4FC24ADF13F6466684249870F85EEF85CF8B2279C6D1CD197DDF38B3BEA5E29E226F3416F4F372822E6C9E96C309D0190BCB6D8CEE398AFD73E271B7B224128184E6BA97AA9ACB94242C46E879CD0ACA8C37FA65E989D031A2127CF8D1DD19CFC3B17621AF853C54EB0F3D2B4E74376CE916911661FA5667D85BCF9DDC463DEB33436CEC84BED29E13E115F04BA8599112582C1EF2BF28FD50D8D9295A30C069E398D6C2CBBCC117F6C9C4D440E40AED157EB8E53266DA72D798255F5F4A094CEF27E9036392913BDFCC319346DE9873A44DFBF2AE15571C59337F3F2C7C504B279B09DCB237E41B103776E9A58591020A0E9CD533565F4A54534B0F0BEBCC177805B905030D02C21B9B09D1EF1F68EE8E92268E6861091EC64EDF474E4F25B2BC47E591D83A0E21FA6D29BAE077E058EC0FD8200CC7A61D552466D5981979D4A249A95DF8D8D3E035545DB8BFAAA85721B246402FD9677E5AD3E73665A6688F164C2E6873BCB72A626A03A7C88567F8A5FB9A7BF20F1A78E0A6579B5AD8131E7E3E551D7B9B5F76AE8C4BC33232F7A33D8AEBDB97463E1601D5F46A523FDAE48594D8CBA3DF906667B6AC32C7A9964278816E76E59D335EAE96E67DBD8DCA3CC30C0BCA4E60CD93B47A6CE75D4242C4096C6C49900D9BBC6FC12A878F3F68FAB87C44C1BCF4FE3D6FE5B786557EBCC726C537E022DFAD73DC41F0B67930C658858A3AFF6C039FC6523F98F7EB6AF640F46FABAF01B6B2A96380059C0AC039C89BF5FAE535736168DE7B571F3DA80E4FFED13D484D0206655F2E61A55216B69435FD30B7D4DC884E0658D640AB9A463A8E5C52CDADA4D1ECBE08ED4D9867F5D7AC8F9D6AE6577EBC613BC16FB518469A5B792B8FDC3486C90183B96457F80D45386A58D1D150FE57273901AB124D6BB5BD7B0722F3DDE8FA61673DBE89A15A2AD574ACA48533332ED69322A2291C23EB67CC5ABAE4C2641CC6D2D7F38AFA60829F8AE334598FE0AD9D8FAFE33CC6F3BC71C299C3632DAF9AFF292375A4626806600D363CA8F4C2861E66351B1EF78B058B2896BD52D8EDE9CBF21B78604E75B49CB153CC26A0EB9ACA1B28015F8071B796669F2C6CA6101261F54E0C0EBA5BCC420CF1574A270A2F3CDECEC77FBC5F2E9692C4159830C39740199A10A888F01DC34335FA3F8239D419448AFB0F7035C573290FBACA13377F39EA91F1A43731F397049E817CBBC62E884DE81FA3F67179D434A5E23F2EC5A5A50C74FF275722389CB9B4B8FE4D795231E05D20BC14DFBDE5ADBAC282BA3FD0A2DDDCD7A326AC55BEE2C6BD9C48D9A566BED7ADB40EB834E505686AC7A5A541A5525F84A3D70523786FA93CB93F7A9E388D03DD47AFC76EBCCEB218E53E8ABF4A6EDB5A39A95023D3E248B55E623EF9637172BEBE789F943DF97573E99E8EE4E020C9C14C7F3EB03F81D8DA79BDA728DA9AB0A5248D27D24A57BEAA4505348DC5F9186DD0E37681518D7D70BD40D763B445D748839FACFF4A623F11E31D4E60BA8EE86F312326A46A545503F4CCD3A65FABD262A84812C8D198F33FDE75A4DAB9337FBF58BA62FF940E6DBFDD8F905973FED470B624FF4D73E5EE05019B0D8A9ADAE6DFA86440B4FE9E83DC41F0B6740FC6A19CA82E5F76DB46D724ECEFF8E4841374DDA76D5DEE394D5373577ACF3DBC86C3E623FF945EAD82E0303A76CECE638F3EDE8604555EBCDC1D13EA3FAC2F6A7856885993BD882732513B38D8608BEC87FA61CDAF464EB476D5A765ECBBD2365FD35DA2B92DC9F2C262D0B8E3FC16E3D72E576A6C86C6B58FCB988A1C0ECEE11D9E8F976D9650F96797FFF24015EEAE1206CCFA845966164CA1999326FCE1482B23A7CCD71B822E187462E81F94874FCA5F061BFDC9E1925C7675895F3FE2A7FA834DDF3E6C8A082ECCE59FC988F6F5427525818A01A0CA207C84F80A342E2DFA4D56CF9E1C65D85D543D1EB3EA7280B142B8FA6B22B49F2E0B2041F72EA4FB6B2C0FC18EFA0EA2231260E083599F3678796A45FCE158828D1FEAB2F2FF7B974B5A25A6B1A6BEC522D261F39003793F9937CFCD6FEE239F25CD6E52D686164CE213FB71078E836822799FDA483F083D4FFAC1B272EF38BBB14EB997FA3B605D58BF538B361E38F99150AE6C3D16B2E870E07E4F74F80FA355C5FD078BF229063C2D6BC4AE626FCA7A10A623D1ABDF663324F631653FF851639477EEFCA3B7AB5A149AE292E0B33B7B184593D3E37767AC7334804E9445673C5B1E2C6328956AA81D92F862FCA2CBA5CA8BEDDC4E223E59DEDA33F1BE45ACDEDE40AE45433E6A6003FC75EEE5DD01689A4FFB5D296431E9E6713A36923EDDF3434FEBBB5BB1ACDC9BFE280884C73F68EA020EF915A34F4A60E50BBAE5E26776DCD710F9E687E7CB81B9E587A9843BDD8215218CA4B4407E7A8EC48D617D793E7386A220202B33430AE5784AE7E855C85F80F17B27E347ADD272AFFD19AF069A90D9ECBA213A3C96B83C8D45E752878839DED743B0F525DDBF422848E9F6818FF6AFC31702600E257DD27C4B15FF66318FDCB5BD9DF4D285DC1087D673C1C24996CFB98B7F4DD68A639AFE4C149F92E2D90743FCAC73E4DBB391618F8D40ABF6F186464CE78ADB9FA6F152D15DA21A47BCD7FEF3B91EC004BAF4FD9114B1064A9D6D1DAE958E432680B6F0F0000200049444154E7BEEC3250006B5DA84B8FD4C8958EBC9157953A8E2C36F5BE9EDE8BD2C2ACC75D15FF4CAF4C461BC517CBB97FDAE81E0C77674A65B52DEDE2351EC170FF1D02EBB0A3ECE78CA9E2D558C2C1D607ED851FA5D6170A103E835F16D73CBECE3D08EEC9C6A255B5490924776BCE0A3E54393ADEDED7F0D7DE06302D7A069B1E243F81F590B3F493B4DA3BA83C435F95543D6DAF599C908D67F084838ABE16092B8D271850F477923DD954D6664C1C908E65BC778B6A732691109366D55557FA2E718709D573D8D4C4E42307E066847D67C045B23EEA43FBFA76C1A921655C8DF77E5AA0B42F72487A8E66F5A83EE637D4D5FBBA7AC1CA81533AFA41717D81D25EFF2AA9F9C3DA2588AD734DED57C5D778BF22583FE828FE38B5BE4888F43BF0BFC55547EDECD5729AF80F99E1F1F50ADB6B59D77E440A864F8DEB481C99B13638B53F967E71CBA898CAB07D302C36395A1830BDB541F4F6893C305916DE2952ADB962F351F07FC82B88D9105FEAAB116BB46E53729B6AF512435285A4AEBBFE65E42F9716E4E07AC02338396CE5444FE5DE4C6E85C9BB7E33D322BF79EFF5BA6695ACDAE952BB1D1548572F0C216769A24478B0BB5A8ABA6493375B04AF7AB0AD3ABA460CE425B2ED27218A4C91C5367BFA67A3C866D89C0E50965600F2128175C451F2499ACA7F903C53F54795FF4CED821929051166116583C8584062FE39C221A5B0BA4A2AE49328E6D3B5B8B0F0BC37F863E10C8A5FD4B189AEAED11F2CA5BD713DE33B340B290F23F49DF954AD4270A3BAE7C45A87E4B4AE3EC522C328C944835F17DFFABA185DB673B4B6DBED1F9EBE1A0E4FAD6FFD751341C39DCEF1AC5CD22D859D2810417F96AA55795C2A1ABDD552B8A6B463C0800A06E8E5C24675BAD08849A4BA33AC9F483CF4CEB4DC3D564AEF118EB65C92AF3E640D9711DC13E4EDDB470D2600645087C5D7D16C881E62E1280F5EA4E233CD58FB9374E0AFE9452F062E7979F9526F0B9A997CEC5C7EFAC30D63CA8531AC03440F949FE24A16DD9C9667AC5F3EB5AA2F573EE121932AD41FE4101106F22110E4E236CD844621974A2122F2B0C85C0E4C3EA6E206EA9844F322F34FA966A33368209B45FE9F85FB6EB3A19BA9DB7B69AA250BB9B05E0B9F61B29DF59C2BF899E0571467587C43CB4FFAE5731A3889964FC5862DAE4FDBD33DD3A115B251D1D05B79155727D00811201388C2F2FD5A5B1B24BAEB3FFC889FA736A957E4407C20C6432BA3637BB323523BCAF9321A9DB52D70C5E9959E11A9F55A4B7998C65028080AE440CE99B632A4CD4C951621920D83BD3B38FA93154BF2D21ADA1196A07664BF45472F4CD10C37926D0E728417EF4E4A098A8EAED6017FF71072578681BC241B7E2125F5041C90BB3EF6A99E940F0DE70770D7D8593A930FC84B1417B238E5D7FB8F5CCA9391D86488201EF9306F04918E44A3D165E249750203E0794FF0C7C41902C52F328BB27DC75B9021631F70343F5F6FC492A4066ADD9FA38C74653255DBFC86978FB44DA59076F13A3F2EA6ECDEE6EE07D7B782D603C1D69DF733D2914B43662F3A333EAF56ED716A7568EA83E306E975075CB9A869BCEFC1E49433C8B45DE7908D9E6B57FCE4C1B9487094B4DFAE31386E12E4922E19C593462428F3188566692DE58F221F890AB18248D7646498C260A93F2BC6784D2F6436BD805013A9416EE1BF842F5BD192990EBCE301D083E487C5AD12AA8F963CB6864705109FD97C4C41800C33D64555E73B08370D99B1FC65C20689593883744134D34E30E7ED95BEA4F2DBBEADBC0EB18C60B6246FBB879A379136652FB2D25E239AAC8110E8F50BB2A39A99AEF780F084C56D92197EC2991B7CB0D5565B6A80EDA6F1C06940E3F625249EBF7307D9C19D71688F5F94554B43023AB2F70F6B68407C2E56ED648DBF9FDD5CA47C045FACD96B0C80EBB5F614B5BA81C8C8430207DDDD0FBA70E8A31DDF34566E2CE8AAD29F04CF946C966F0AD9D078DFC9928AC3DBDC02E086F6A9AC85D1AEA7D72CAC314E9B5BBBADA75B1F483CF4B6FAA470BF359CD10FCE4B7251A350C617730F553967C6FADDBC51C9359C2230FA9CD9A49DA589E5D87909167748B1FCC788A5CB199DC9C6B3F8E69B6C282727D546B2B6715ACCEF6C52AB6010CF5F873F36CE4380F84584160F3C9E967981EC7D2D61D57383297FE72953A411FAEA0E9CB3E2AF26203B9C8E736F6C6ABC3630D2382981E9ACED81817EE30D0DBFD2BAC6766F2A9D28B9947B2C21FEB4A2E0CDE6FE2629C999E5F488AFEDAD922E531999462FE59D6C255F8CF4692D6ECAE3139C388B8FFA729273557B8DB2EA960EE9DAD0F7088ACB6923C07B41557FD2E1EF7A68DF867AA6DE41F7381F0EF5E3F466572226264EE408994F7BD9DEAA1A18A3721E0A0B08228DA157901DBE5AE9C2ADAFFFB177B84741A4906022B254624074103D507EDEE94EF872B84F466E7DA9DCEAC1103F1F189D57020F101FE005CA137271BBCC629B9D7972C7A4FEC4C3F0A5EAB320DC54A78DE72F1BFEA24E9C1313519D5B7E11DDE364EFF375AE2D2BC9541019907C4428E449157473DBC3A14B23E07175D7B0D55F423C53F31AB90AE691105FABAECCF2A9598B7EBF52801D414A82F094F0CE74917F08599272A7A91AB27E2434C0079ED31EA7CE529572D35DB9D90CB9344AD39707B516D6A68E4968E6B60F8607BBF6E7ABB636682CBF8F9D78CF5DED57BAA0F200F1913203F8D6C7833DEA2ADACB944FD526060506F09B9B41D9836CFB46A81BBFBDE1C8E5B49C5FF37010D9E1D42AD7DA86869F7A79AD620293C1DE1914E43B5ED7407438B516AB5D290F865E1AFD8CFE97E4EF663FCCBDBAB884A78C74D2D2D0AD3FB931CDFA0767CB4B326E75F6DBCE1BCF06744597F34CFEA51F284B8B407969F84C17E57C88E7CDBCC62A34CFF8FBC0CA67178C58BA9C018562F2E7EAC1D722971F15149E1E125BB3977C1CC9CE2FBAD3A99C0062E009B28BC9F8837006C42F2A8E6C5CA61009EAF6E532B36243726E146622CBE246E83BD78153D2FF560DEB45FFE5B7632D99688A9BC8EFAC4FCAA86DD09A56CF80F2BFFD45345AB339997F3C24342DC4C609268826FB4E9515144A91674EE7F5909595A71F0B8AFA7C73843F953031D675A2AC285F33B7158E345F91FBFD4951FD87114DC2D09AE9289FF69CDA7E176714DEFA203A3A6D4F9415415CDD56B9B3B0071DA9E4A39FDDE146C5AEEF594692F0FB4F5654E7DB3BA1FA48FADFABE7BC111CFF3F6BCC6082B47DA0EDDDDBA505C0DB4D03F420F9A5F92519AF44C55C4F0A67CAC62F73EB4AEC6C75EF8A66E00AE063F88E533AF85EF9C0A5D85D7CD449C14F221832200037D52526F097D554A56D9185BEB76AFB69064C10F3CEDEBD731EC153D1FF4241C7F7918963AB8952C1E0BFB9B5058E8E6A7124BCD3138B7F4A8A7286C4952D65DB8BFB34232AB2FDA9AF17C08E40D5007812A4B925B7DE8A8A49DFBB9C299FB8515D5F6EC706F298CB09455B63D643D4C88F1292AE9A1191DF5FE6B7546C2A526E6D408CC3E15EE395377E36668E231FF920239B1ABEF4CA8E183BF4779C82B2AEFA83E9D535A0EC21EEDA73D5C4392E7628F5FDADCAF285C09892384B2BC40EA2B1ECF6DA2DE9B50D2222763B228F497A81202531931C15295953CF31C8EADABA142B5D7D4983A5B3E625D9E8A739E55B1F887DA9F3FACB43066218AB6F60969613B0F39224BB38E3EF5131489E61CA26AE57D797D971B0F86AB561E3ACE86ECDD94C8BFC62CDAECF68905430F47D45DA336D0234CD61E22901D8C554FC0DE08C19BFC88329EA4331D85DB4AB21FE42A44B7C4E5BAF815C867D333A0B48F7D9694487234714E85FC236C329F83E13FC77260ECCF029DA15133BD739D8EF0C0D541D34BAEE339FC48365C1FC6C5EA19E57E63A10DD876EBC6046C43BC211981704C8F61F450724585268648B1DCBB777C43A58CF4B37BF4DA678C6F96DDA0D977A0602B81B831D02BF4D0063839F31808064F0EB01F7339BF72D254BEB3B2AF6E7F64CFF90D3C055F8291C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C011C81DF08020BF9128DDF08240B27260EFE82613DAF50CF2BF30583C8C88E7E1FBFE8FF7D6861A4C970B27B8F00EE40F71653C8ECC8C6BD69AE54D8DCAB606FFC5663DE62889BE0DE9A0093DB0280BC005D60AAB6C08DFF47D45C6054FF4F76A7797310EA526BE2742140DFAC7D456E951414F29C8743081D2116D7F5B49EE4569EE89E30F955FDBACCEFF577B00A979575606916CECF87043DECC45E0C1384137DA7CA0B8EB733AE68692D168E6434739FBDDB54057A97B2561742E1686177CB47E55597C6A406DE093C27252127CF8D1DD19CFC3B17621AF8531523B0E55797AD40FA81EC9C23D322CC3E4ACDFA6A0C54668240A4B09F0C8F78C18DE3442288F88317AB8A9EA9E9E7A91480990F58F09387240C6B27B789AE0AF465F4A4C5761EC77CBDF639D9D8130942C1705A4BD54B65CD7329573E0D9DF6EBDA41FC89D8FD424E185E2A698DFF21330364B2391900B98862E993B225328ED49B781EA90A8272A15BBA3CBF2CE08823DB854C104DF47C5A52F07AB7E535FDA899298F0E1F0ADDF1B9F0654F38DB38A22F37E71777D4BD52C44D56963035FD98473F010903C1F39C0DB0FD04248EAA1D1B07C3D7187716E49FD311AF635FECF82263655790DFC276DF6E0F2B4EBEFED1F8742FB0855FC1069BBFFC9C7DFBDEF839ECEEE87DDCDF73879D150B29522C184E6FA93AAE8A6B8812EE13F145A05B9819512218FCBE22FF58DDD0A802400F8CC7DCD64500FE98B823469FCE639814BFBA115B2F2CB606C79129FFC7BA126923593D9DB0B73ED29E45A41F884FAA8BF5596345A3138974AAC5729780AFD646AF9F7EAF3C80C3023483E68F58ED140BEF94DD89DFFADAFBD0600A89EAB9C8E3DD9551F1E6D32FE3868864671BB7F71FD8DFBFCA990D2A92ABE14C24926D2D383B0256D6EED9F857E61C4B2F031182CC0E26ECAD5E9B3898E06EAF916436F9217BE728EECED58F5A1A1406A2ED58BDB7778D7FBC05850A91384CA7D7D6EDB8E169AE9A3DD15821753BA3A2605258C48EC6701BB43233D9E14CC2CA373D1D82CD2934886465CE3E14B5AD67BDA7CB143E585003F5424EE8D083F85366EB57D507C47872C3DEA2002B63EE8D0D49A57F0E66BDBA656F516870BEE65DED342BBFCCBD3B2E063A2FA353A844D8C1C6F59DB8E56B75A2405F1E1D3E44ABE7B7ECAB8C740FA3932910D1826E732072DBC896001FC355334120DF433F0175A1830CB450D9C04879D46E80112FFA26455B4C628BD083FC73CAFF75EC6B30BEA645D2F7136D7121C6339B777F6737E365A80CBBD8CECDBE6EA0BC84AD2DB895EC707643DC3B5E4E610CAA19916869CE7964C5F6FE759E8B21C8DE6DCD40D2EA676CE90C12EC64EBFB73D29E9F5DCD4840FA995D4CE96524FDD4D5A6DA05AC19E00C402F00B5BA595F2A2DFFC7BA14A2C485270E6EF0F5459230D9E997BD0F1C36BB5716C3EA6ECE6DFA8AA95861B453B7C4ED2EF0B3D01DEEF52861866FE99EB875BA741A1175E92157EF8D5DF12E1CEACC6A185364C887FD5BDE0D8D6F3E889470D95716EB1D0CE2AC050244734DD9B3F131B657CE9E75BB69AA1386E54746CDE5553BE31E313C6A229CC80E3FEFD9FC84F9B43591C226D91BFD02ED6287D5756654D5668035672033F7DCBD6B1F98D2421790D96C391BBD2E7F0D3FAC7688E3BCAA6747789481D72D531CCF6F4EF83AD82396011B1E9B66CA4D5919B17D60BD97076DCAACD4ED6B76DFF1D5F39F1997E9CBA3C7078DA68D07D436452F8668EE39DA7862E20700ED5EFA09A00B5D710C6403126347D8FAE60388E71C685813184355FB1844661D8DDDC243BCEBE0CEABA1A177F71B5734C6487994F261E180B45222BDA33377EE47AB27EDDDFC6F6F1B4B44222DB6162CBFCB9BE39E64C226A5B6997EA86F5FECF8F298D187BE9FE8C00CAF59B9BBD807295F377540AE3E9BBB56DA3310F931EB41A17A3DF0AC7754CEEE4388BE829DF12FDA524C717802D1CC23774FFC060AE3E8A6A4AB2E1AE311208E4B7CEF26EFE989B2462235FD8C6C66482F2C7A2DAD0D981BD3AF4CD5173256AF1996D0974ACBFFF5B30ED1C53DE6BCCBE0C3D76B6B90053FC5D8CD71E6DBD1C18AAAD69B83A37DF77C5552C767E6E92BCCDCC1169C2B99982AF30EEC07229812488ACEAED69E40675F521B902199F538B361E38F99150AE6C3D16B2E870E07E4F74F00A9D113D61CF7E089E6C787BBE189A58739D48B1D228521F9890ECE51D991AC2FAE279F02AFD04E75285728741696CD2C38B64399D6670A13E3139FEFB8B6B29D73639BCF375752BED129AC081199E6EC1D4141DE23B5B5C09560838A193E09E20F6A87D92F862FCA2CBA5C6860F14AD2FF5A69CB210FCFB389D1B491F66F1A1AFFDDDA5DAD2E4A0F92065AE41CF9BD2BEFE8D58626B9B2B82972C0CC6D2C61568FCF8D9DDEF10C12413A91D55C71ACB8B14CA285A5AE3C587CA4BCB37DF467835CABB99D5C819C6AC6DC14E0E7D8CBBD6B40059098F3EC27D8DDCA40D980B42C38FE04BBF5C895DB9922B3AD61F1E7228602B3BB4708F08AD0D5AF90AB12FED3C085AC1F8D5EF7095959581B4D496BE274FB985BC955AC7821907CFCD6FEE239F25CD6E52D68E171CE213FB71078E8B6BA478863BFECC730FA97B7B2BF9B50BAB231F2E8FA21967D910AB958F1E50A139AA6528FAE9FE8A280ACE0B70D0A17B1CDA9B0D9673B1EF803A13EFAA7220ADBAC6F7042281E5F7DE60C2AED4E3FDDCBC89C3F3BB424FD72AE404489F65F7D79B9CFA5AB15D5B09138438E0EAE4E23EDD50A8B87CC27AF0D8A356EADE00D76B6D3ED3C48756D335C5443AFDD68482F2C7A5D0530BF83FC0AB9073045DF0B15AB8CD20B5306AD462DFFD71D381936413F859B7D7633EBAA2A6FCAC73E4DBB391618F8D40ABF6F1864317FE85A73F5DF2A5AE6B2CB359B54F3789E487680A5D7A7FC01AB2764A9D6D1DAE958E432E7BE6C55457B2C2ADD36A9843F093B591A98DD49473F28AE2F10209B5883FF2AA9F9C3DA25C1707FAEA1444989F06077B51475C9266FB6085EF5605B75748D18909F6CFB4988225364B1CD9EFED9E8B872330E7C4887CEF4999F08F7A9296ECA9B94595ADA3F191E144A1D461714C8ACDD2CC1E56201DDC6D59FDF9E23D41A12B4D30ABF79EFF5BAE6B96DC981E402F107B5A37C88DE3E910726CBC23B4586645148EABAEB5F46FE7269410EAE073C8293C3564EF454EECDE45600C67E32C3E3EB15B6D7B2AEFD88F8FFD4123082BF196B8353FB63E917B78C8AA90CDB07C36293A38501591D836A9C74E5C1E6A3E0FF905710B321BED45783C568DDA6E4B61E9DB90C08A819EDF3E927200140D940C17ADC55F1CFF4CAE471C41AE28BE5DC3F6D740F86BB3309AC238E924FD2EA8B84A8FF7F595CF5473B7B94B7B8031D00EECD818503C9FAA80FEDEBDB05A78694661EEFFDB4A017FD801A94E8EA1AFDC152DA1BD733BE9BD4E06E581E2C3FC4B6AF81F8522BABEB27581828FA87C76137A683257D1571844B58B4D192DE6D053535090DA50D19EFDDA2DA1C542369565D75A5EF127798506D582F75DFA425EECB9323A89FDD686E871C5844D920321D2431FF1CE19052585D2515F24914F319F94D8B7EDA6F0DE885498FA5B77E1B0CF22B6476618ABE14E7A766D74BBF7BBD162DFF9F317092CC167FB1DAABA5F0DABBBCE95B4B9968F0EBE25B5F1723AB1FB0A3B5DD6EFFF0F4D570786A7DEB5CA25D4F948569904BBAA5B01305D907D7139A627769DF11951452D1E8AD96C235A5CA8AF6C61D30996E2E15A0E90274C885F568D6400FB1706C986C676D60944588C8360739C28B7727A504454757EB80BF7B08B92BC380FCB2E11752524FC001B9EB639FEA49F970143020A8245088AEDD49B30B8B38B32D0299050B277ABEAC692AB7B67973DF91AB2A82C443EFA01F5C9A0E077F9B7CE1509F325455E107916C18ECDDC1D19FAC589297D6D06E34442AC686FE0FE20F6A47B6E0E9AEFFF0237E9EDAD466AC18C87D36722F80521B5A51205A3E151BB6B83E6D4FF7CCF158211B150DBD9557717502E52040127161F9FE4D1ECBE08E54E59D84AE3C203E10E3A195D1B1BDD911A91DE57C198DCEDA16B8E2F44ACF88D47AA315D10039AF7E02B6167636C8E4BB33AC9F503B8FEAE21E2BD4CF292E6471CAB4FF8FF6CB9503E73D3C307180685E64FE29D5DDA44E5F14DB77BC051932F60147F3F3F5462C412197EBFB6146DF4E6C3FC18A2FA6D998263FE8FA090007E1E4609F996DB4A395755FC5FF23843FEBC8A93113144E1A0C6DB9B84D7363A0904BA510D1E0C30EEA8E2192C5CEB0B8AFDD44EFA5A7FF63444680A53C19894D8608E2910FF3461022128D4697892735F2EBD26BE407E905A207E8ADD74CA402FC0AB9B537455FF92C7AE9750C6C98F27FAD8193C47C665574484BC68A663EF6D44621EDE2757E5C4CD9BDCDDD0FAE6F9D7DDD13D8FD429F908E5C1A327BD199F179F5B8AED4E2DEC41FD58F4D9A2E15BA04613F5C532353881544BA664484290CD6D4E848A479D28804651E26D32CADA5FC1103A32C81606EEDB69E6E7D20F1D0DB6A6984FBADE18C7EB0FC7251A350C617730F553967C6FADDBC51C9351C5F12DEC9BCE493792AEE440FDF0DBB86B84B2FA45AF86EBE635BEC953D797473827FC1CF875543A636220AD9D078DFC9928AC3DBDC02E086765D1C4D074FE70A107F8C76CAAAA521011DD9FB870DAA8AF087C8DEF66E07DDDD0FBA70E8A31DDF34566E2CE8AAD29F3C4D49025B6DB5A506D86E1A0F9C162E6E5F42E2F93B77C675FAD21E7FF5E401F1B958B59335FE7E767391F29174F1E4E0B7E5954F6C730F80EBDB4CC473BEFD6476736A67036279D378DF83C929677496F76171879432E5FF149A25471517C62C8DCE2E014A818DC390B0416216CE205D10E9798878E0F1B4CC0B64EF6B09AB9E1B4CF93B4F99EA8C9147DB0F69426C3F39876412BDF8E271ABD5F954CF4F003A4A04BC6692CFC39EE4EAB2DE4CC2E8E74B97B0491367D1552B130F837AD1ADDCFFB96AF94E1137F1724586CA70B2F12CBEF9261BCAC949759058DB382DE677362951C4A0578B83AD1798DE682DE4226CBF023D0D08D2F77CAE01BD8C966606A166E084A8F161AB5F909546DFED1FD526203B9C8E736F6C6ABC3630D2382981E9ACED81817EE30D0D7A0E39B7EE17EA2A517229F75842FC6945C19BCDFD4D529233CBE9115FDB5B255D73138048846DCC992B5C7CDFF1277C9CD2D12FB1C811329FF6B2BD55353046E53C141610441A537386ADFE12E2999AD7C855308F84F85A75659663CF4A54E4247F37FB61EED5C5253C21DA405A1ABAF52737A659FFE06CF2CBB8D5D96F3B6F3C1BD0155DCE03FE52886C7F22DA2EB5B236654444A431E3DC833E0A907F78A36B90408975A2B7B48C0A28B609F4F1AF463522921D4EAD72AD6D68F8A997D72A263019EC9D4141BEE375F7CCFA20FE4487536B81FDD2587E1F3BF19EBBDAAF81186C43B2ED1BA16EFCF6862397D37226A4B3271E9DA52D240ED54FC9432E8DD2F4E541AD85B5A963129AB9ED83E1C1AEFDF9AA257D0C79407CA4CC00BEF5F1608FBA8AF632818C6A669D181418C06F6E36399AE6D94F408882B2818877B2957C31D2A715D902E0139C388B8FFA729273F3D224C367BA28E7433C6FE6355611980F87FAFBC0CA7AE7462D218284D06E07E130FC459D382726A23AB7FC22BAC7C9DEE7EB5C5B5692895E2A1B97294482BA7DB9CCACD8909C1B8599C8F606481EC43F31FD503073A979CA4F14F6275661C617DA31869F8054944D168ACCDFB1E23DD32F1C20B4B75B442C1D2D6D33D949C07A11C8819E911723170F54DF0AB8DBDD3BB56CA398FCB97AF0B5C8E5470585A787C4D6EC251F47B2F38BEE742A00F44AF9B1F432440F521AA35D0AF02B0C526513C88E04C8015B2F102340BB96FF6B064EB2ED4B3E96B684E58D87966B5D846CD7A7BF55C37AD17FF9ED584B267A7F3C91DF599F9451DB307B1202F4FD5F6A168DD66C4EE61F0F094D0BB1718209A2C9BE536505855286C9E2689676C5A2B1FCAEE69792F37E465747473FBBC38D8A5DDFB38C24E1F79FACA8CEB777527396F04E4F2CFE2929CA191257B6946D2FEE1B37D0258999E4A848C91A558E9AC821AB6BEB52AC74F5250D96CE2ABF6CF4D39CF2AD0FC4BED479FDE521C0E02C19F8A4DDE944FCAE1F91BB63E9645157D3F3BFE4FC883C5204B336588A6E0D89A8564E5E82EEBB533BA592BEBF5559BE101853126769856C9E88C6B2DB6BB7A4CFC9FA5A93C138746D5CF5240880BF8808EC17621C0EF71AAFBCF1B3CECD0D26AAE2AE3D57E738379AC94FD1D698F51035F2A384A4AB6644E4F797F92D159B8A944BFA26C9231FF920239B1ABEF4CA8E183BF4779C82B2AEFA83E9D535A646D37CFB09269848A3A41F900DE484F2F46341519F6F8EF0A71226C6BA4E9415E5A3F7D092ECE28CBF47C5A4ED8962CA26AE57D797D97140BCD5EDD87E02B8C8000E55695B64A1EFADDA7E1A793A55CC3B7BF7CE792426A69F02550C7617ED6A88BF10E9129FD3363D72E8F463AAFF83E20B616B9A9FF0CB91A82476DE1628A484DE6BE3049F315E0FE224268103C00C6DA6D87D12EDE145207805AEEB995E5C197AECC2F5AF5A7336D322BF58B3EB331A24150C7D5F91F64C9B40467106D20BCC31E2D1007F3E6073456BCB4C23B8324560FA15E88E13A8B2A21B532F203DE08496FF03287E13CD881B613E9C7DFF088F3ABA71CFDFDF3F321B29C9FD0FBE918ADCFF64F30AF5BC32D7C1F6771C0EF7BF17E112E208FC6610C033C56FC654B8A0F38F001E0EF38F31DEC3C22060F811CF859101EF05470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047004700470047E0FE4260215F7A727F69FEDB94E65EFDFEFD9EF0C19D67C19C685EA19E57E60B06D10277744F2268CE32FF777B9FB3D8BF9F0B7103FC7E6CF95FD20477A105007E01405E802E1600A805EB0287EB5743AD79C93B0AE59AB8B1B280CBE555C8DB8449CCD7B66E7BDD72984BB00ED0ED435DA81D82AD9282429EF37008A1234CC4753DAD27B99527BA2780A53974F9DCEBEF2A1574B94E9795A759383F1F12F4B0137B315A8AB2EF5479C1F176C615446BCD2562E1484633F7D9BB4D558077A41B557E485700F077446075F10D308DEACC4CD590F7CBDF69AF7DB5B4365BBBDCB43E0FE3F9EB5F8BB70010A058AAD735160000133A49444154FAA46C898C23F5269E5757A3A35BBA3CBF2CE08823DB854C104DF47C5A52F07AB7E5352DBF527392B4C6FF9099A1712D1D3E14BAE373E1CB9E70B671445FFECE2FEEA87BA5889BCC37F5EDEF00A191E669179A8E0824CE17DB791CF3F5DAE764634F240805C3692D552F9535574888D8ED90139A25743A99A9175802FD339093E7C68E684EFE9D0B310DFCA9E21FD8713A1D29909D73645A84D947A9595F216F4237F198E7AC05C273FACDE63A762752D84F8647BCE0C671221144FCC18B5545CFD4F4F3C8CA6C6C32CED8789A8810801CDB7FB08861BB6FB78715275FFF687C5A6BD8C2AF6083CD5F7ECEBE0D4AAD589CC06DB0BBA3F7717FCF1D76562CA4C8B26038BDA5EA38EAB70A6C3C1560BB60EB05E4AF271272FDC1036DFB767ECA4687523A27B265DFAE89839A1794A3DC67BEAC1CA21F884FAA8BF5596345A3138974AAC5729780AFD646AF9FAE3FA0D7C53D6FD0974AD505563BC5C23B6577E2B7BEF63E349842A27A2EF278776554BCF9B45E1091EC6CE3F6FE03FBFB5739B341C58EB138CF5D2DE3B969512215CD1659D91F8DD931FC80AF87E117261ACF7FEE3AFCC6AF34152298F5EA96BD45A1C1F99A70A059F965EEDD7131D079199D4225C20E36AEEFC42D5FAB130510E3C90D7B8B02ACA68B3AE8F0215A3DBF655F65A47B189D4C818816749B0391DB46B604F818B6EF1CB0D7D197EC702661E59B9E0EC1E6141A44B232671F8ADAD6B3DED3850268D7890B7DBD304502810C991D4CD85BBD367130C1DD5EC379B63885EC9DA3B83B573F6A39B34E33A80B1D79E63B6B81F09CC24DC7EE106DC7EABDBD6BFCE32D285488C4613ABDB66EC70D4F73AD22C94A058CC4190B4F4C83286751732A3E61CC8510E399CDBBBFB39BA104C32EB673B3AF1B28AF624B096E253B9CDD10F78E975318836A46245A9A731E59B1BD7F9DE7622200CF59EDA21717D8FCB5E4D7524F36FC6523F98F7EB6AF640F46FABAF01B6B2A9638006587590738137FBF5CA7AE802A1ACF6BE3E6B501C9FFDB27A809A141CCAAE4CD35AA42D6D286BEA617FA9A10077A592399422EE9186A79318BB67693C732B823D5C4C2C248C9A2C025A15F2CF38AA1137A07EAFF9C5D740E2D7D0CD9D8FAFE33CC6F3BC71C29603632DAF9AFF292375A4626503BAD895376ADACB1851CDAF701CA06C021974BFB467B4E94941DD8E6EE4DAA6982183B96457F80D46B86A58D1D150FE57273901AB406F823A7762DBB5B379EE0B5D88F224C2BBD95C4ED1F46A78658F223C43B03AF97F212833C57D089C289CE37B3B3DFED17CB0DE895B45CC123ACE690CB1A2A0B58817FB0916796266FAC63FCA2D657474D003E06F863F3212033CD63CB57BCEACA6412C4DCD6F287F36A8AC44A1CB0E507803B4B336565C8AAA745A5515582AFBCEC94B4D48DA1FEE4F2E47D6ABF22740FB51EBFDD3A930DC4710A7D95DEB4BD765453AE4D8F0FC96295F9C8BBE5CDC5CA7A7262FED0F7E5954F26BABB93B8B598F79C14C7F3EB03F81D8DA79BDA728DA9330AD24BD27D24A57BEAA4505358DB5F9186DD0E376815DCD6D70BD40D763B445D748839FACFF4A623F11E31D4E60BA8EE86E3141D35D322A81FA6669D32FD5E1315C240D62261C5115A0A9DF564D48AB7DC59D6B2896B35AD4EDEECD72F82EBDE83F054E3A667779875C876E2F56BD5E99368040E8C74FE3D8F712BD6C5A5B1BA69FA6ECD589CB1F04414A0447A85BD1FE0BA9281AC870C9DB99BF74CFD9076215B0B96DFB7D1B6C93939FF3B220554FCC2361FB05521E48E110E336970EF84E6F6126233ADA0B1C681E93BE99979C0D43895741F4A9EF65BC1E4C0E9D28A87B7BAFAD12641781AE1CF5A0A81F8C30DED9A71417B5E20AB6F6AEE58E7B791D97CC47EF28BD4B15D06064ED9D8CD71E6DBD1C18AAAD69B83A37DF70873A0317EE50998B9832D38573231FB680811E6382B22B39F74107E90FA9F75E3C4657E7197623DF36FD4B69038EFAFF2874AD33D6F8E0C2AC8EE9CC58FF9F84675E6A5A90AAEA2EEE2F7D18FE038C4D41A22599B5B6F0E08F01CA9AB9591962D8D3FC16E3D72E576A6C86C6B58FCB988A1C0ECEE11C3FCC9D68FDAB4ECBC967B47CAFA6BB45724B93F19C9E898F2230290397F766849FAE55C818812EDBFFAF2729F4B572BAA8900BD940237955D4992079725F890537FB29505E6C7780755E7AF3E7346398CF9CDD00906F05100DAB5F49A890D6575F89AE37045C20F8D5C02F391E8F84BE1C37EB93D6849764CF93147234CB4A71BA145CE91DFBBF28E5E6D68926B8AADC2CC6D2C61568FCF8D9DDEF10C12413A91D55C71ACB8B14CA2958260F68BE18B328B2E17AAB308161F29EF6C1FFDD920D76A6E275720A79A313705F839F672EF82D6B524FDAF95B61CF2F03C9B184D1B69FFA6A1F1DFADDDD5C884E9D71C1091F9FFDBBBF2A8A6AE34FE92BC4002080409B22A045076100414446CB555DB5A68B5AB4B6D676A673A3DE3F49CB6633BEDCCD4E9E64C57AAE5D4A93AB6D3A953B1D38E202004655164D1B20648D831246C5908647DC99BF7929004F2EE8330D4FA47EEF11CDEF9EE7DBFFB7DBFFBDDEDBB373E77DF871312D6C83A3B6D23A020F95CBB1CAE9BC5E6244EF51E940EC35349FBD9AE05431A94AC9F520343D657A7FB7C5654B2C859135310386AD1D62612F52308CE4CB9EB0D7AFBB67F0BDA28AC5F66DC934797E076DA2C4C6DCC9E3D19CCE58DA8DDB12F1CA3E89C66632E6387C2508F65A85A30CF047C42B4A898AD172365AF54FDB013FFA0377B5F4C58323C71C5AC34851DB0F6FC3AB7CF2F577F3D656CF285D8656330E0513F30AE5EE1EBEE0A338F3D7CDF73103FE3BB06175FE6C8F8945AAB201E073020C27E0A1385AC09F61894A0C0D060D9200F59009F73DB0560C42CB115DF229EB5A1D64D0F7C22497A2FC3DB5D72E3C0B4613709A661F2D3F24B93F1F12F64C67CE941C7D6C885BDBC375BFAB02833C94B3F5B16951E082345D816049CB0506D102BF850FADA9091EA26D08085BD0EFAE0AA56F47C95C8047F5DD0C58F0E5D0D77F6A11002D1382C76A692D22A570C8E085E160BC02A90E698EB45F510058B5249871BB757F07BA9BEF9A1E847DCD612053615680B9ADB5EDCC14984872B49F4C72A4164476ADBCBF057C47FE68ACDB5EA88F4C7F2F492F71A3A6BF0153152D5C56B8D8EE0C010CF00B00B8B45EA151512F5383AD2A7F32997A8C6D0D15BF4485FFCDC8ED83A627E60003E3106B69360ED0D507F5CC6AF5761468D7FDED871F01E4E022CAA06E96FF9523708D04E4EF7083F95E9575855781EFB80B625E48AF915D3677BF0E0B3DC829D72ADAB87DF8175592519EAB8AAA171B3AF51D744A5EF996E4ABDA5314DD6C438A8F2DBDABA8DDBB7DC8C9EA958DE757FC98008E4B0A8AE6B98FF3AF6EF2A232130744F7862C9BA4D53A2D6C72BDB5A003CDB196423B01D2E95BD8F1775F59A7405C9F157E7DA45864F9CE79216EE2BEC6B10EAA72FF5A9FE18EEEB35249491F453BA5F5E325AA9599613E0764CAE70BC018D4A80462DD4E720613F827C9E0AD2E595F31BD426BF6AFF8D7F008E635AC011DB357BFA99E193B8DD91893323EEF9A9511D8D3DB5D37A4FCF805FA726A4B84A99D6C5FBC27926E293C67A3E8A71EA4ADDC909A35B28C49FD619FB3BEEC0D4D0D08CF79318478A2ABE36EE77F1446E97B9D0BC7FD051A9020EF30EF474CBA6CADAA0153B3CDD86BD283D3D6AB26189709C59903EB408CE869234D763C5BD833A988C4F327F2631CA06DFA63FCE0EA7A3AA629E287F6B6049B970045D41028665E935E3A71A2F9F6AC4A2017010CBFF91D854EE5D706A19BF1FD4DBC9E17ED25C836E1881835DB073643BE56C26424423BFDC577FF7CDA131BB5256EDB4E25C823D2265F98AD863A9D139CBDD98E6A26206E6FDBAB197B90DAFC547BCBE2169CD3206D330F9CD75EE3382496340CEC164AD97E2C58AF8FBD6A417FD7BF78A5D391EAC5FE5EE7BD70A26F29AF760CCA0EE360FE396D700FA63F906EDC0CC8203352008858A1F2E212476198C375AF4086A7E3050A873CF6C2CD5827040721067D8A207D616E1A31B9EB46AB9043B0836F140A83F080724A77ABE90B56E25BFFCB1E1D9C4A17AB966E2ADDA960B53B8C7A8B081A9BEF9499B503FCD2DF48318EAF1B29E0193478170281E4F6FCAC81257A7950D352BF50C379F9CF8CCD39B22D3CAF8E617418A41D87E05DBB3E0E88B8C94E07C0DE1FB000A6DB987EF238919799911B5E582410C1224C7EE14CDB10BA81E3883BE7C2F5B5DF0E33402A143C2FEB1584E325D5841D24FF5D2C3A565F970DCD57BB35E10957E285FC40201578678D4AA5402FA91CB2ABAB6D4C6AF460DC689933CD9F35631B28BD87F3485D7CAFDD7A59DC949C37699EA29D1E71D3DCDDECC49B3233BC233219F14C66ABAF2A4693739476717BF77D7A82AF4BE7B82DCCFF217108A233779762E16F31F61FA650479B1465A7E07A5BE14C4EE60AAEAA7499B6C51FD94425BB66BDDE653619AA35CEE07320C5F4FC6A77DBB98FC1C6C9A1DBEB5E8DC314D26ACF43E63CCB6DE6400039B72504428B9F549A3CB23399C1898DF3F7F3C743EC025CF4764DF4F305F0BF138CE339D71DA54403C113AA801CC7E675334ADF94A74BF6448AB879811B50F851B21D04949CFE1CA9EC3D823D535212CF562EADACCBE4AEECCD20B8528F34E7376AAA072A9E0B9AB7ECDEBE3522EF6F728460E94949EC1B6414409843FB734507F225012BB40C58172103F203900C8A013EA5D221954C838AFB9303C5988528E3D3A4E2E7105B0D7837EAE717EF72BE2ADF99B9FD8967BF6DA35FC24DB36D9CE5F2ED949C97143D54F4A67CA80700ADA77F928FE5ADDDB60BC92AE9D396B8C83F936678A36B550E8D8A1F65E0E67EF2AB69B7CE8CBEED61D75C276FB4521B1310029AA9F508C9CB8D1B23F272CCEE62C072290DBD905802411BBB3C2EE7563EDC9DDF78EB990FA49165C310AEEA7064DB75AAFD4B6ED6B0FA9CC8AB954DCDA463A0E93546DCEB21DB5A8CDC4FD08D60E21B3FC8A6DF2A88584346D7963A889FDE71BEC984672A2B6E444AD49296A78F4F6DD92362CE4684C0EF04CCCE7845AA063A67AD0CE69ECC8D28E1D2CAF3C475F53B82DFB95F1D2B725C62A176297993EB23F3A95A49716F54C249DD724AE84E4C793227C69535FE1D1200713A93E6E5E9C8FB237ECD2B4E5FED062BE6A83ADF375247C1A6B27F06762AD08F12D45E74E9CC418F6527AE0E9CD9CEE9EEEC23159F7B40E76F379283E3E462110D83590FDAB3F87445372B3EDD0B62DA7D1BABFF48EF620B4109FE05F44FB5DBE215C2265A81E14834CAD9620A89BBBDFFE94A434588123D303BFD8B4AA8DCF3F2F968AB09BD234988AA895962A0DDA41FDB21C7FF792A169C0C407D44E2A6ECDD36D7F6305EF4FFDF46FD3A3FAB1508F120A66AF7C3E9A5D72B5B6DCB47671001FA03FA87E72BB406FD9CB413820B93D82498248BF1631FE991259760D3FE37C2625862DAE6EC58682852FFE40C826F99C9011D69FCD87D39455DD087743427F7D67D9A48EE1EE7720353174F4BA29D4CFF089F92458F2CA8551EB5D0C100EE21DA764BD9A18DED532D8A4D2BB3259B909F171CADE5E506FA2FB1D4909530E0A9EFAA1BCE6FFB91C440F3C991DDA29107C2796F46B216F0FDF5D0909D18A2E0135F0E45622B9511F02BBC8D923C8A5C5860548DB2EACBC2131465F6849290F7E17E6CD1C1D9FAF9FEADB78D5EF84ECF82A4E98D12C71F8976FA0514B2339D14F2F20E847D2334297B3C991976ABBDB71BF8A8D82A5B8BEA01022C627216F2AE39EDE922CFE8306E467FB97B57696CA345486F7664EC2C771860F8B85E3C6928EF00CE253FA5997B666631AEF6A73017EC6E9FB44744867D38D4A1C5EAFD0A31A55D71357BDABB2926B8AEB2BB1F037C82EABEA0B7BD24FD76BDCDFF592FC76543D060D0E2E4B4B92DF1C0039330924501F7A7C647A41FACA31DEE5B81F87C5967D003D203F83884F909F035502E0DBA8BAD8895337FA5687CF6BB11BAE64797AE3F1BCA9EBB7F88F56740A1C5F5590F0B684591A79C70325CA579353CA939707C390667AE464535D3D82DD755D8A848C1EAE1BFA577AEEE45D544435FE8FB6CEBAA0201C57377A94CF3E92B8E56F7733B163BBC1B181F7AEDCACB344FA91F1A3CD63DF67ED56E28DB0D05BB566750D8A2F5B265E4A089B2AE61E8A5B7FFC81B45857686A5298DFD470DDB2E35F383E487F103720BB401395CDCAD1788B78C658100E04E00D8403692BEA2FBF9F9151FED87A2F48CB1B68DD552F9281945F4A393AD05DF5B46BFAC7DB1EBDC0A462BFBFBCDED7727F8331D44FF1D89FBA5AD15AFC9F85AC890CB2F72BAA5D5393FEFBF0467FFC3C58D524E4EFE5F23A40BD492B7CEC82836B3E62EA46DE6CF73C1CBFF1C6664F2F2C00AF99AC1EECDCC9ED1468A8C4724C1F87EC02514DF37E34082DAD92CF9C59E8BB0684E8A6D068DAF8CD79FBA95EFE694DF383F765FDE156D1EB1364A766049503472D03D4CC3D9460DF8F74D58D156FAFDF88F995B77EAA88C76FF26713C05A443A009FA076D48DE50D06E76FD97DDE8D0A21D30DC29EDF5FAC396FBA30EC10CF247CB697EFD4A71CCD7EE8B4070C69255FFD78ED2CC699F5E752E8F870C36EC19673E9ABB6D40C5867207B2389FDC7BE9C516250366356506F5D51A108242E54405193121146824320006C5CECE29F9711BE1A8256C7DF23B20681269E3D570AE013DC2E842A4120FCA22F94E6597AF127232476DDA62CABCD0ECE3AB7493F67357730034EE7B96D8DF39352FD9382CFA108AB6B11D7E06F1BCFCE8A9C0C38197032E064C0C9C09DC5003E492FEAFF0DB8B3CC706AB3040C2CD5F5892550C509E164C0C980930127034E06EE7C06FE07271D5D89AC4B903A0000000049454E44AE426082>|png>|616px|184px||>>
    Example of Fast Retransmit in network traffic. (Measured in wireshark)
  </big-figure>

  A connection between the network hosts <strong|MTS> and <strong|ZS>. The
  left column indicates the sender of a segment. In this example <strong|MTS>
  is bulk sending data to <strong|ZS>(sender), while <strong|ZS> is only
  receiving and sending ACK segments(receiver).\ 

  <strong|MTS> starts with a data packet marked with Sequence number 2049
  (the Seq=... field) of Length 1448 Bytes (the Len=... field).\ 

  <strong|ZS> acknowledges the receiving of this whole segment send an ACK
  segment with ACK number 3497 (<math|=2049+1448>). Therefore the SEQ number
  <strong|ZS> expects is <strong|3497> (the 2049th byte is the first of the
  1448 delivered ones, therefore <strong|ZS> just got all bytes up to
  including 3496).\ 

  But instead of 3497 <strong|ZS> gets a segment with the SEQ number
  <strong|4945>, so a part of the stream is missing and <strong|ZS> sends the
  first DUPACK for 3497.

  The 2 subsequent arriving segments with SEQ \ numbers greater than 4945 are
  also answered with a DUPACK.

  Until finally <strong|MTS> sends the correct segment containing the SEQ
  number 3497.

  <subsubsection|Discussion of Advantages and Disadvantages>

  While the fast retransmit extension brings a faster detection of packet
  losses and therefore faster re-transmissions it has one big problem: it
  can't distinguish between packet loss and packet reordering. It simply
  get's a number of segments like 2,5,6,4, diagnoses packet loss and triggers
  re-sending, also if packet 3 arrives shortly after that and actually the
  segments just got delivered out of order.

  Of course the receiver will send a ACK segment for segment 6 as fast as
  possible, after he received segment 4, but the 3 DUPACKS have already been
  sent so the sender will halve his <verbatim|cwnd> and with this the
  connection bandwidth will lower.

  This type of reordering, without packet loss, called
  <em|persistent-reordering>, is the Achilles heel of the TCP Fast Retransmit
  extension as you will see in the following chapters.

  \;

  <section|Ways to Make the Linux TCP Implementation Less Vulnerable to
  Packet Reordering>

  When packet reordering induced throughput reduction becomes a problem,
  there a two ways to take countermeasures for a performance engineer.\ 

  One way is to avoid or reduce reordering. In Chapter
  <reference|seeking-cause-of-reordering> we will try to understand the
  reasons for reordering using Multipath VPN and reason about possibilities
  to avoid it.

  Another way is to make the operating systems TCP implementation more
  resistant to packet reordering, in this section we will show and explain
  several measures to do this, some of them will be used and tested in
  section <reference|linux-tcp-options>.

  <subsection|Configuration via <verbatim|/proc/sys/net/>
  Switches><label|tcp-switches-def>

  Linux offers several switches to configure TCP internals via the virtual
  <verbatim|proc> filesystem. Two of these switches are relevant for TCP
  reordering resistance and will be explained in this section.

  <\description-long>
    <item*|/proc/sys/net/ipv4/tcp_reordering>The Linux programmer's
    manual<cite|man-tcp> on this option says:

    <\quote-env>
      [tcp_reordering (integer; default: 3; since Linux 2.4)]

      The maximum a packet can be reordered in a TCP packet stream without
      TCP assuming packet loss and going into slow start. \ It is not
      advisable to change this number. \ This is a packet reordering
      detection metric designed to minimise unnecessary back off and
      retransmits provoked by reordering of packets on a connection.\ 
    </quote-env>

    \;

    In section <reference|linux-tcp-options> we will change this options to
    significant higher values and check the results.

    <item*|/proc/sys/net/ipv4/tcp_fack>The Linux programmers's
    manual<cite|man-tcp> on this is quite short:

    <\quote-env>
      tcp_fack (Boolean; default: enabled; since Linux 2.2)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ Enable TCP Forward Acknowledgement support.
    </quote-env>

    <cite|sarolahti2002linux> gives a more elaborate explanation and
    reasoning in regards to packet reordering:

    <\quote-env>
      The Forward Acknowledgements (FACK) algorithm [14] takes a more
      aggressive approach and considers the unacknowledged holes between the
      SACK blocks as lost packets. Although this approach often results in
      better TCP per- formance than the conservative approach, it is overly
      aggressive if packets have been reordered in the network, because the
      holes be- tween SACK blocks do not indicate lost packets in this case.
    </quote-env>

    So another part of our experiments in section
    <reference|linux-tcp-options> will be measuring the effect of turning out
    tcp_fack on the tcp throughput performance.
  </description-long>

  <subsection|A New TCP for Persistent Packet Reordering>

  In 2006 Stephan Bohacek, Katia Obraczka and several others released the
  paper \PA New TCP for Persistent Packet Reordering\Q <cite|bohacek2006new>
  covering an alternative TCP algorithm which performs better than existing
  methods in case of persistent packet reordering.

  TCP-PR realizes this by not using duplicate acknowledgements (DUPACKs) at
  all and relying only on timers. Additionally it contains concepts to detect
  packet loses that belong to one \Ploss event\Q and accordingly reduces the
  send window size only once.\ 

  Since this concept sounded quite promising and there existed a provisional
  Linux kernel implementation we wanted to test this approach in our
  experiments. Unfortunately the code<\footnote>
    Kindly provided by Katia Obraczka, thanks.
  </footnote> was developed for Linux 2.4.18, which in terms of kernel
  development progress is very old. We obtained a corresponding kernel and
  operating system (Debian woody from the Debian archives) but these were too
  old to support our test hardware. Even booting in a Xen virtual machine
  (HVM) did not work since the network interface provided by Xen was not
  supported by Linux 2.4.18. Therefore we decided (despite of the promising
  idea and simulation results in the paper) not to use TCP-PR for the
  experiments in this work.

  <chapter|A Closer Analysis of the Multipath VPN Implementation>

  <section|Involved Networking Resources>

  Multipath VPN uses two different kinds of network entities: TUN devices and
  UDP Sockets in the following structure.

  <big-figure|<image|Diagramme/multipath_vpn_interna/multipath_vpn_interna.png|761px|142px||>|Diagram
  of the network interfaces and resources used by Multipath VPN>

  These entities have the following characteristics and usage:

  <\itemize>
    <item>The TUN or TAP interface <cite|tuntap-linux>

    A TUN as well as a TAP interface is a network interface on a UNIX
    Operating System comparable to eth0 or or wlan0.\ 

    But while conventional network interfaces transport packets between the
    network stack and Hardware (like Ethernet chips or Wifi cards), TUN and
    TAP interfaces transport data between the network stack and user space
    processes:

    <big-figure| \ \ <render-small-figure|||<tree|OS Network
    Stack|<tree|tun<em|x>/tap<em|x>|User Space Process>>|TUN or TAP
    interface> \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ <render-small-figure|||<tree|OS
    Network Stack|<tree|eth<em|x>/wlan<em|x>|Networking Device>>|Conventional
    Network Interface>|A Simplified Comparison of tun/tap Interfaces to
    Conventional Network Interfaces>

    MultipathVPN runs as one user space process and uses such a interface to
    get all the packets it has to handle. Therefore on startup the following
    is done:

    <\enumerate>
      <item>A TUN interface is created and MultipathVPN associates itself
      with it.

      <item>An IP route is configured which directs all (or the traffic which
      shall be tunneled according to the configuration file) packets to the
      TUN interface.
    </enumerate>

    The <strong|difference> between TUN and TAP interfaces is the type of
    packet it delivers to and from the user space process:

    <big-table|<block*|<tformat|<table|<row|<cell|TAP
    Interface>|<cell|Delivers OSI Layer 2 Frames.>>|<row|<cell|TUN
    Interface>|<cell|Delivers OSI Layer 3
    Packets.>>>>><tabular|<tformat|<table|<row|<cell|>>>>>|TUN and TAP
    Interfaces>

    \ 

    Multipath VPN uses a TUN interface by which it get's IP packets which it
    wraps to the other end of the tunnel, where they get unwraped. There they
    are injected into the Operating Systems networking stack via a TUN
    interface and thereby processed and delivered to their destination.\ 

    <item>UDP Sockets

    The tunnel <strong|endpoints> are connected to each other via UDP
    connections. Each UDP connection ends in a UDP Socket on each host. The
    number of UDP connections available and used corresponds to the number of
    internet uplinks available.

    <\description-long>
      <item*|Sending tunnel part (MTC)>Each packet obtained from the
      <strong|TUN> interface will be sent through one of the available UDP
      sockets. Remember that the UDP Sockets an operating system offers to
      user space expect data, wrap it into an UDP packet for you and send it
      to its destination. This means the <strong|IP packets> will be sent as
      application layer payload, which means some attention has to be spent
      on the <strong|MTU> of the different interfaces to avoid performance
      consuming fragmentation.

      <item*|Receiving tunnel part (MTS)>If packets are received via a UDP
      socket the data multipath VPN assumes them to be IP datagrams and puts
      them into the TUN device on its site through which they will be
      delivered to their destination.
    </description-long>
  </itemize>

  <section|The Event Driven Design>

  Multipath VPN works event-driven which means:

  <\definition>
    event-driven (program)

    Per default an event driven program rests and waits for events from the
    \Poutside\Q (like an network packet from the TUN interface which has to
    be processed).\ 

    For every considered event there exists an <strong|event handler>
    function to handle this.

    Often there exists one <strong|main loop> which iterates over all the
    possible sources of events and checks for new events.
  </definition>

  <subsection|The Perl POE Framework>

  Also since Multipath VPN makes excessive use of the <name|POE> Framework
  for event-driven programming in Perl a few words about this framework and
  it's concept will help to understand Multipath VPNs code. An overview over
  the most important entities and concepts in POE:\ 

  <\description-long>
    <item*|Kernel>The POE Kernel is the main loop this Framework provides the
    programmer. It gets all events as first entity and decides which event
    handler will be called. Also elementary scheduling and timer
    functionality is done by the kernel.

    <item*|Session>A session is a \ set of event handler which belong
    semantically together. A session gets initialised on its definition and
    has one initialisation event-handler called <strong|_start>. Furthermore
    each session has its own heap of private data. Additionally sessions
    build one semantic unit for the scheduling of the POE Kernel and events
    have to be addressed to a specific session. All this makes a session in
    some regards comparable to a task or even a process.
  </description-long>

  All this can be understood better with a simple example:

  With these knowledge of the concepts and frameworks used the foundations
  have been laid to understand the networking internals of Multipath VPN.

  <section|Working>

  Two types of Sessions of Multipath VPN are especially relevant for
  understanding the networking logic: The <em|TUN-Interface Session> and the
  <em|UDP-Socket Session>.

  In this example we will briefly show the most relevant code snippets of
  these sections and explain them.

  <\description>
    <item*|TUN-Interface Session>Handles receiving packets from and sending
    packets through the TUN Interface

    Contains 3 Event Handlers:

    <\description-long>
      <item*|_start>Creates and configures the TUN interface.

      <item*|got_packet_from_tun_device>Simplified implementation code:

      <\cpp-code>
        got_packet_from_tun_device =\<gtr\> sub {

        \ \ 

        \ \ \ \ # read data from the tun device

        \ \ \ \ while ( sysread( $heap-\<gtr\>{tun_device}, my $buf = "",
        TUN_MAX_FRAME ) )

        \ \ \ \ 

        \ \ \ \ \ \ \ \ <with|color|dark blue|#Decision begin>

        \ \ \ \ \ \ \ \ foreach my $sessid (

        \ \ \ \ \ \ \ \ \ \ \ \ sort( {( $sessions-\<gtr\>{$a}-\<gtr\>{tried}
        \|\| 0 )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<less\>=\<gtr\> (
        $sessions-\<gtr\>{$b}-\<gtr\>{tried} \|\| 0 ) }

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ keys( %$sessions))

        \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ {

        \ \ \ \ \ \ \ \ \ \ \ \ if ($sessions-\<gtr\>{$sessid}-\<gtr\>{factor})

        \ \ \ \ \ \ \ \ \ \ \ \ {\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ $sessions-\<gtr\>{$sessid}-\<gtr\>{tried}
        += ( 1 / $sessions-\<gtr\>{$sessid}-\<gtr\>{factor} );

        \ \ \ \ \ \ \ \ \ \ \ \ }

        \ \ \ \ \ \ \ \ \ \ \ \ unless ( $nodeadpeer \|\|
        $sessions-\<gtr\>{$sessid}-\<gtr\>{con}-\<gtr\>{active} )

        \ \ \ \ \ \ \ \ \ \ \ \ {\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ next;

        \ \ \ \ \ \ \ \ \ \ \ \ }

        \ \ \ \ \ \ \ \ \ \ \ \ <with|color|dark blue|#Decision end>

        \ \ \ \ \ \ \ \ \ \ \ \ $_[KERNEL]-\<gtr\>call( $sessid =\<gtr\>
        "send_through_udp" =\<gtr\> $buf );

        \ \ \ \ \ \ \ \ \ \ \ \ last;

        \ \ \ \ \ \ \ \ }

        \ \ \ \ }

        },
      </cpp-code>

      Here we see at least some of the reasons for the high CPU load. The
      code between the <with|color|dark green|#Decission begin> and
      <with|color|dark green|#Decision end> comment is responsible for
      deciding what UDP socket to use for sending the current packet. It
      involves a call to the sort() function, resolving of the keys of a
      hash-map ( keys() function) and definition of an internal sorting order
      via the <verbatim|\<less\>=\<gtr\>> operator. Additionally every
      <verbatim|-\<gtr\>> operator means reference resolving overhead. All
      this could be implemented much cheaper using a state machine, instead
      of sorting the elements of a hash map every time and calculating
      factors using division.

      One should also keep in mind that each <verbatim|-\<gtr\>{...}> in Perl
      means a hash map lookup which also of course means some key hashing and
      lookup overhead.

      <new-page>

      <item*|put_into_tun_device>Consists of the following code

      <\cpp-code>
        \ \ \ \ \ \ \ \ put_into_tun_device =\<gtr\> sub {

        \ \ \ \ \ \ \ \ \ \ \ [...] # POE specific argument passing

        \;

        \ \ \ \ \ \ \ \ \ \ \ \ # write data of $buf into the tun-device

        \ \ \ \ \ \ \ \ \ \ \ \ my $size = <with|color|blue|syswrite>(
        $heap-\<gtr\>{tun_device}, $buf );

        \;

        \ \ \ \ \ \ \ \ \ \ \ \ unless ( $size == length($buf) )

        \ \ \ \ \ \ \ \ \ \ \ \ {\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print $size . " != " . length($buf) .
        "\\n";

        \ \ \ \ \ \ \ \ \ \ \ \ }

        \ \ \ \ \ \ \ \ },
      </cpp-code>

      Fortunately this event handler is quite straightforward. The most
      important part is the blue marked <with|color|blue|syswrite()> method
      call. Syswrite tells the Perl vm that it should not use its own perlio
      buffering system but directly call the system call
      <with|color|blue|write()>. This event handler gets called for every
      single packet received from each one of the UDP socket sessions.
    </description-long>

    <item*|UDP-Socket Session>Handles receiving packets from and sending
    packets through the UDP Socket

    From the 5 Event Handlers in this session the following 2 are relevant
    for our examination:

    <\description>
      <item*|got_data_from_udp>

      This event handler gets invoked by the POE framework if new data
      arrives on the udp socket this handler belongs too. It begins with a
      completely fine

      <\cpp-code>
        while ( defined( $heap-\<gtr\>{udp_socket}-\<gtr\>recv( $curinput,
        1600 ) ) )
      </cpp-code>

      loop header, calling the recv function on the socket. One performance
      issue we should note is, that this call again involves one hashmap
      lookup (<verbatim|-\<gtr\>{..}> in Perl) and two reference resolvings,
      which (if happening very often) are also problematic for performance.

      The next two lines have similar problems:

      <\cpp-code>
        $heap-\<gtr\>{con}-\<gtr\>{lastdstip} \ \ =
        $heap-\<gtr\>{udp_socket}-\<gtr\>peerhost();

        $heap-\<gtr\>{con}-\<gtr\>{lastdstport} =
        $heap-\<gtr\>{udp_socket}-\<gtr\>peerport();
      </cpp-code>

      The involve altogether 6 hashmap lookups, 8 de-referencing operations
      and 2 method calls. Since this happens for every packet received it
      looks like a good source of CPU time consumption.

      A few words about the last relevant part:

      <\cpp-code>
        $kernel-\<gtr\>call( $tuntapsession =\<gtr\>"put_into_tun_device",
        $curinput);
      </cpp-code>

      In essence <verbatim|$kernel-\<gtr\>call()> is equivalent to a function
      call. One could think that this function call means expensive copying
      of data, fortunately it doesn't since Perl by default uses call by
      value for all function calls.<cite|christiansen2012programming><new-page>

      <item*|send_through_udp>

      This event handler gets called from
      <verbatim|get_packet_from_tun_device> and basically has the same issues
      as <verbatim|got_data_from_udp>. Additionally it contains the following
      lines:\ 

      <\cpp-code>
        if ( $heap-\<gtr\>{con}-\<gtr\>{dstip} &&
        $heap-\<gtr\>{con}-\<gtr\>{dstport} ) {

        \ \ \ \ if ( my $dstip = inet_aton( $heap-\<gtr\>{con}-\<gtr\>{dstip}
        ) ) {

        \ \ \ \ \ \ \ \ $to = pack_sockaddr_in(
        $heap-\<gtr\>{con}-\<gtr\>{dstport}, $dstip );

        }
      </cpp-code>
    </description>

    which involve the <verbatim|inet_aton()> function. <verbatim|inet_aton()>
    converts a string containing nothing but a IP address to a binary
    representation which is used and needed by most syscalls
    <cite|christiansen2012programming> <cite|stevens2004unix>. The
    <verbatim|pack_sockaddr_in()> call packs it's parameters into a data
    structure needed by the Perl socket implementation. These two function
    calls could be avoided if the conversion would be executed once and the
    result stored in the heap of the session. Even if the addresses change
    due to ip changes or other circumstances, it is possible to trigger an
    event for this and only reconvert the structures in this case, instead of
    for every packet to be sent.
  </description>

  In this chapter we looked closer at the implementation of Multipath VPN and
  the networking resources it uses. In addition to a closer understanding of
  its mechanics we indicated several code hunks which constitute potential
  performance problems.

  \;

  \;

  \;

  \;

  \;

  <chapter|Seeking the Cause of Reordering><label|seeking-cause-of-reordering>

  How does the reordering observed in the explorative experiments develop? Is
  it possible to prevent or avoid it? In this chapter we take a closer look
  at the Multipath VPN software and the Linux networking system. This will
  reveal, that the reordering is a exigent consequence of how Berkeley
  network sockets and the I/O Buffering system of Linux work.

  <section|Multipath VPN Implementation>

  The previous chapter explained the details of how Multipath VPN processes
  incoming and outgoing packets. This whole process is quite straightforward,
  packets are processed in the order Multipath VPN gets them from the tun
  interface (or a udp socket). Multipath VPN does not buffer several packets
  or actively reorder them. So we can safely assume the Multipath VPN
  software is not directly responsible for the reordering observed at the
  connection endpoints.\ 

  So Multipath VPN is not directly responsible but a technology it uses is,
  like the next section will explain.

  <section|Linux IO Buffering and Scheduling>

  Multipath VPN uses the Networking capabilities of the Linux kernel to send
  it's packet i.e. sockets, network interfaces.

  Linux handles the packet queue of every network interfaces
  separately.<cite|linux-networking-overview><\footnote>
    The Raoul Rives Docs are some introductory slides about Linux kernel
    networking, accessible at: <hlink|his university
    page|http://web.engr.illinois.edu/~caesar/courses/CS598.S11/slides/raoul_kernel_slides.pdf>.
    The diagram and description relevant here can be found in chapter ``Data
    Link Layer'' on slide 20.
  </footnote><cite|rosen2013linux>

  There exists no concept like \Puser space program x first put P1 into eth0
  then P2 into eth1 then P3 into eth0, therefore I best should process one
  packet of eth0, then one of eth1 and then one of eth0 again\Q. In the
  kernel the execution of each interface queue is handled separately and
  independent of such a \Puser space interfaces hopping order\Q.

  Even worse: from the point of an operating system scheduler often it makes
  sense to send several packets in the queue of an interface at once and then
  doing something else like file-system or terminal I/O or give control to
  another user space process. And then several milliseconds later send some
  packets in the queue of the other network
  interface.<cite|rosen2013linux><cite|haldar2010operating>

  <subsection|Avoidability of Operating System Buffering induced Reordering>

  To avoid operating system buffering induced reordering it would be
  necessary to turn of the packet buffering the Linux kernel does. There are
  two buffers on the way of every packet through the
  kernel:<cite|rosen2013linux><cite|wu2007performance>

  <\enumerate>
    <item>The socket buffer, belonging to the socket the application is using

    <item>The ring buffer of the network interface
  </enumerate>

  To avoid any buffering and therefore buffering induced reordering it would
  be necessary to set both of this buffers to size zero or avoid using them
  at all, which would in our case mean \Psend a udp packet directly without
  any buffering in the kernel\Q. To find out if it is possible to use the
  Linux kernel this way, we asked the kernel developer and subsystem
  maintainer Richard Weiberger via Email. His answer was (full mail including
  our quoted question):

  <\quote-env>
    <\code>
      Richard,

      \;

      Am 16.02.2016 um 16:27 schrieb Richard Sailer:
    </code>

    <\quotation>
      <\code>
        Hello Mr. Weinberger,

        \;

        I have a question regarding the kernel networking stack and NIC
        ringbuffers.

        \;

        As a userspace process, is it possible to force immediate sending of
        a udp datagram?

        (i.e. without any buffering of the datagram with following ones in
        the Ringbuffer of NIC) ``just to set the frame on the wire
        immediately"?
      </code>
    </quotation>

    <\code>
      if you're using sockets the packet will always go though the kernel
      networking

      stack and my be queued int some buffers. Most likely within the buffer
      of the BSD socket.

      To have the frame immediately you'd have to implement your own
      interface.

      i.e. passing a packet directly to the network card driver or implement
      the driver in userspace using a framework like DPDK.

      \;

      Thanks,

      //richard

      \;

      \;

      --\ 

      sigma star gmbh - Bundesstrasse 3 - 6111 Volders - Austria

      ATU66964118 - FN 374287y

      \;
    </code>
  </quote-env>

  So unfortunately, in the case of Multipath VPN, avoidance of the operating
  system buffering induced reordering would mean some quite intricately
  additional software development.

  <chapter|Refined Experiments><label|refined-experiments>

  The results of the first explorative experiments as well the thoughts of
  the previous chapters clarified the necessity of further refined
  experiments. In this chapter we will analyse the following aspects of the
  implementation Multipath VPN:\ 

  <\enumerate-Roman>
    <item>Context switches and detailed CPU statistics in relation to
    throughput

    <item>Stability of connection and throughput when one link goes down

    <item>The effect of changing several Linux internal TCP options on
    throughput<line-break>
  </enumerate-Roman>

  Each of this aspect got his own experiment, often several, at the beginning
  of each experiment we will explain what we changed in the configuration,
  what we wanted to measure and what we measured.\ 

  Especially for measuring the correlation between CPU speed and throughput
  other, more capable computers were necessary for the tunnel entrance and
  exit (MTC and MTS), the next section descries the hardware used, the test
  setup and the differences to the first explorative experiments.

  <section|Test Setup and Hardware><label|general-test-setup>

  The following picture shows the hardware and test setup used:

  <big-figure|<image|Bilder/20160211_005.jpg|700px|||>|Photography of the
  refined Experiment Setup>

  While this picture is very illustrative it does not show very much detail
  about routing or network configuration, so we included the following
  diagram to show the network architecture:\ 

  <\big-figure>
    <\verbatim-code>
      \ \ \ \ \ \ \ \ \ \ (Old notebook)

      \ \ \ \ \ \ \ \ \ +-------------+

      \ \ \ \ \ \ \ \ \ \| \ \ \ (C0) \ \ \ \ \|

      \ \ \ \ \ \ \ \ \ \| \ \ Sender \ \ \ \| \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \| \ \ \ \ \ \ \ \ \ \ \ \ \|
      \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \| \ \ eth0.12 \ \ \|

      \ \ \ \ \ \ \ \ \ \| 10.1.1.5 \ \ \ \|

      \ \ \ \ \ \ \ \ \ +----+--------+

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \|VLAN12

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ +-----------+----------------+

      \ \ \| \ \ \ \ \ \ 10.1.1.1 \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \| \ \ \ \ \ \ \ \ eth1.12 \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \| \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \| \ \ \ \ \ \ \ \ \ MTC \ \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \| \ \ \ IG1 \ \ \ \ \ \ \ \ \ \ \ IG0 \ \ \ \ \ \|

      \ \ \| \ \ eth1.6 \ \ \ \ \ \ \ \ \ eth1.5 \ \ \|

      \ \ \| \ 10.2.2.1 \ \ \ \ \ \ 10.3.3.1 \ \ \|

      \ \ +----+--------------+--------+

      \ \ \ \ \ \ \ \| \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \ \ \ \ \ \| \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \ \ \ \ \ \|VLAN6 \ \ \ \ \ \ \ \ \| VLAN5

      \ \ \ \ \ \ \ \| \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \ \ \ \ \ \| \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ +----+--------------+--------+

      \ \ \| \ 10.2.2.2 \ \ \ \ \ \ 10.3.3.2 \ \ \|

      \ \ \| \ \ eth2.6 \ \ \ \ \ \ \ \ \ eth2.5 \ \ \|

      \ \ \| \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \| \ \ \ \ \ \ \ \ \ \ MTS \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \| \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \| \ \ \ \ \ \ \ \ \ \ eth2.13 \ \ \ \ \ \ \ \ \ \|

      \ \ \| \ \ \ \ \ \ \ \ 10.4.4.2 \ \ \ \ \ \ \ \ \ \ \|

      \ \ +-------------+--------------+

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \| VLAN13

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \|

      \ \ \ \ \ \ \ \ \ +------+------+

      \ \ \ \ \ \ \ \ \ \| \ \ 10.4.4.3 \ \|

      \ \ \ \ \ \ \ \ \ \| \ \ \ \ eth0.13 \|

      \ \ \ \ \ \ \ \ \ \| \ \ \ \ \ \ \ \ \ \ \ \ \|
      \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \| \ Receiver \ \ \| \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \| \ \ \ (ZS) \ \ \ \ \|

      \ \ \ \ \ \ \ \ \ +-------------+

      \ \ \ \ \ \ \ \ \ \ \ \ (Thinkpad)\ 
    </verbatim-code>
  </big-figure|<label|ref-net-arch>Ascii art diagram of the refined test
  network architecture>

  In Figure <reference|ref-net-arch> boxes are computers while lines are VLAN
  connections (more on these in section <reference|vlan-conf>). The gentle
  reader may have noticed that two computers from the first explorative
  experiment were omitted: The routers of the internet gateways IG0 IG1.

  <subsection|Differences to First Explorative Experiments>

  Mainly because of practical and time constraint reasons several differences
  to the first explorative experiments were chosen.

  <subsubsection|Omitted \PInternet\Q Gateway Routers IG0 and IG1>

  At our current level of understanding of OSI Layer 3 Link aggregation, the
  two router computers used in the first explorative experiments were
  omittable and their existence had no relevant effect on the results.
  Additionally The results of the first experiments (which are very similar
  to the explorative ones in design on purpose) affirm this.\ 

  The theoretical background for this decision is the following:\ 

  <\enumerate>
    <item>The latency created by them is almost similar and negligible low.

    A small check using ping in the explorative experiments measured about
    0.8 ms.

    <item>Creating artificially latency is still possible without them.

    By lying the same <verbatim|tc add ...> configuration on the output and
    input VLAN devices on MTC and MTS.
  </enumerate>

  <subsubsection|VLANs Instead of Physical Networks and Ethernet
  Cards><label|vlan-conf>

  In the explorative Experiments MTC and MTS had 3 NICs and 3 LAN ports each,
  which were necessary (1 for connection to C0/ZS, 1 for IG0 and 1 for IG1).
  For the refined experiments it was not possible to recreate this
  configuration since not enough PCI-e network cards were available to extend
  the provided computers. Therefore we used tagged VLANs according to IEEE
  802.1q to create 3 virtual OSI Layer 2 networks for each NIC.

  <paragraph|Tagged VLANs Explanation and Configuration Details>

  Using VLAN every ethernet frame contains an additional attribute its
  <verbatim|vlanid> or <verbatim|vid>. When a adequate configured Linux host
  receives a ethernet frame containing such a <verbatim|vid> he automatically
  associates this frame with the belonging virtual network interface. So in
  our experiment every host had 3 virtual network interfaces, each one
  receiving and sending ethernet frames containing complying <verbatim|vid>s.
  So for example the network interface <verbatim|eth2.6> was a virtual
  network interface on top of <verbatim|eth2> sending and receiving frames of
  the VLAN <verbatim|6>.

  Additionally the switch was configured to know the <verbatim|vid>s and to
  switch the right ethernet frames to the right ports. This is why in the
  picture you see only 4 ethernet wires, 2 wires from MTC and MTS to the
  switch, each one transporting frames of 3 different vlans. The two wires
  between C0 or ZS and the switch only transported frames of 1 vlan.\ 

  Additional details on the vlan configuration are noted in Figure
  <reference|ref-net-arch>. A good explanation for a deeper understanding of
  VLANs can be found in <cite|tanenbaum2003computer>. Howtos for concrete
  usage and configuration are available on the documentation websites of most
  Linux distributions, for example<\footnote>
    https://wiki.ubuntu.com/vlan
  </footnote>.

  <paragraph|Throughput or Performance Impacts>

  For the experiments it was important to know the performance and Throughput
  impact of using tagged VLANs. It can be broke down to the following facts:

  <\description>
    <item*|Throughput>Since all 3 virtual network interface of MTC and MTS
    base on one physical gigabit ethernet network interface their maximal
    combined throughput is of course limited by the physical interfaces'
    maximal throughput. To rule out this fact would become the bottleneck we
    did some pretests to measure the pure throughput of the interface
    (traffic between MTS and MTC, no tunneling) and fortunately the final
    throughput of Multipath VPN was always less than <math|1/2><\footnote>
      Imagine 10 Frames reach MTC via eth1.12, after Multipath VPN has
      divided them 5 leave through eth1.5 and 5 leave to eth1.6. So in the
      end 10 frames have reached and 10 frames (=20) have left MTC to tunnel
      a payload of 10 frames. So the throughput MTC can transport
      (physically) is half of the throughput the ethernet interface can
      handle since every frame passes this interface twice.
    </footnote> of this pure throughput. So in our experiments the VLAN
    throughput never was the bottleneck. For the details on this see the
    pre-measurements in chapter <reference|pre-measurements>.

    <item*|Performance>One could think that parsing and understanding the
    <verbatim|vid>s for every single frame means additional CPU load.
    Fortunately it doesn't since the NICs used in MTC and MTS supported VLAN
    offloading (verified via the ethernet configuration utility
    <verbatim|ethtool>), which means all the CPU-intensive vlan handling was
    done by the NIC hardware.
  </description>

  So fortunately for our experiments the choice of another OSI Layer 2
  switching method had no measurable effect on any of the results.

  <subsubsection|More Capable Hardware for MTC and MTS>

  In the explorative experiments we discovered that the network throughput of
  Multipath VPN is CPU-bound. To be more precise bound to the CPU performance
  of the computers used for MTC and MTS in the network, these computers had a
  permanent CPU load of 100%, measured with the unix command top. Compared to
  this on the C0 and ZS computers the CPU load was about 10% i.e. no
  significant bottleneck.

  To measure how significant CPU performance is for throughput in the refined
  experiments several changes were chosen for the refined experiments:

  <\enumerate>
    <item>We used computers with much more powerful CPUs: Intel Core i7-2600
    (4 real cores, 8 hyper threading cores with 3,4 GHz each), instead of the
    500 MHz single-core AMD Geode low power processor in the first
    experiments.

    <item>We did extra measurements for CPU load and CPU usage details using
    the tool <verbatim|pidstat>
  </enumerate>

  Those two measures gave us extensive possibilities to measure the CPU usage
  behaviour of Multipath VPN.

  <subsection|About the Traffic Used to Measure>

  The traffic used to measure had the following properties worth mentioning:

  <\enumerate>
    <item>It's One-directional bulk traffic

    So none of the following experiments can tell any information on the
    capabilities of Multipath VPN for interactive Applications over TCP.\ 

    On the other hand, this way we simulate a very common use case: the
    download of one single file from a fast server.

    \;

    <item>It's One singular TCP connection

    This property has 2 reasons:

    <\enumerate>
      <item>It's much easier to create one connection, than to create
      several.

      <item>It's much easier to observe and analyse the sequence numbers and
      details of one connection than of several.
    </enumerate>

    \;

    <item>It's entirely consisting of binary zeroes.

    Created by the command <verbatim|nc \<less\>target-ip\<gtr\>
    \<less\>target-port\<gtr\> \<less\> /dev/zero>

    And received by the command: <verbatim|nc -l \<less\>port\<gtr\> \<gtr\>
    /dev/null>

    \;

    <item>Usually we sent those zeroes from C0 to ZS. On ZS the number and
    details of incoming traffic was measured using the <verbatim|tcpdump>
    utility and written to a .pcap file, which we later analysed using the
    software <verbatim|wireshark>. <verbatim|wireshark> was also used for
    generating the throughput graphs in this works. All .pcap files of all
    experiments can be found on the disk accompanying this document in the
    subfolder of every experiment.

    If we changed traffic direction or measurement points in a experiment it
    will be noted explicitly in the evaluation of the experiment.
  </enumerate>

  While most of the properties were chosen for test-setup-practical reasons
  the choice for bulk traffic was done because bulk traffic is necessary
  measure the CPU performance and maximal possible throughput.

  <section|Pre Measurements>

  <subsection|Pre-Measurement without Tunneling Daemon, 1
  Link><label|pre-measurements>

  A short test of the network connection without any tunneling or vpn daemon
  enabled gave a pure netto throughput rate of about 92.1 MByte/s. The CPU
  Load was about 18% for the nc process (about 80 of this in kernel space) on
  one of the 8 hyper threading cores of MTC.

  <big-table|<tabular|<tformat|<table|<row|<cell|<block*|<tformat|<cwith|1|1|3|3|cell-hyphen|n>|<table|<row|<cell|>|<cell|Throughput
  in MByte/s>|<\cell>
    CPU time percentage of related nc process

    (of one virtual hyperthreaded core)
  </cell>>|<row|<cell|IG0>|<cell|92.1>|<cell|18>>>>>>>>>>|<label|pre-measurement-1>Netto
  Bandwidth and CPU Load without Tunneling, 1 Link>

  <subsection|Pre-Measurement without Tunneling Daemon, 2 Links>

  Using 2 Ethernet physical links between MTC and MTS (and 2 netcat processes
  one for each interface) the throughput measured was:

  <big-table|<tabular|<tformat|<table|<row|<cell|<block*|<tformat|<cwith|1|1|3|3|cell-hyphen|n>|<table|<row|<cell|>|<cell|Throughput
  in MByte/s>|<\cell>
    CPU time percentage of related nc process

    (of one virtual hyperthreaded core)
  </cell>>|<row|<cell|IG0>|<cell|46.2>|<cell|10.9>>|<row|<cell|IG1>|<cell|46.2>|<cell|10.9>>|<row|<cell|Total>|<cell|92.4>|<cell|<math|->>>>>>>>>>>|Netto
  Bandwidth and CPU Load without Tunneling, 2 Links, measured on MTC>

  Again, about 80% of the CPU time related to nc were spent in kernel space.
  The values on MTS were equivalent. Here you see the throughput stays
  equivalent no matter if we use one virtual VLAN interface (Table
  <reference|pre-measurement-1> ) or two. Actually using 2 virtual interfaces
  the traffic is a little higher but 0.3 MB/s are in the area of the normal
  throughput fluctuations we observed, the same is true for the CPU time
  percentage.\ 

  <subsection|Pre-Measurement Multipath-vpn, 2 Links, without tcpdump>

  <big-table|<tabular|<tformat|<table|<row|<cell|<block*|<tformat|<cwith|2|2|3|3|cell-hyphen|n>|<cwith|2|2|4|4|cell-hyphen|n>|<cwith|2|2|2|2|cell-valign|c>|<cwith|3|3|3|3|cell-hyphen|n>|<cwith|2|-1|4|4|cell-valign|c>|<cwith|2|2|2|2|cell-row-span|2>|<cwith|2|2|2|2|cell-col-span|1>|<table|<row|<cell|>|<cell|Throughput
  in MByte/s>|<cell|CPU Load>|<cell|Times:
  user-mode/kernel-mode>>|<row|<cell|MTC>|<cell|19>|<\cell>
    <space|4em>98%\ 

    (only one core used)
  </cell>|<cell|<math|\<approx\><space|1.2spc>60>%/<math|40%>>>|<row|<cell|MTS>|<cell|>|<\cell>
    <space|3em>98%

    (only one core used)
  </cell>|<cell|<math|\<approx\><space|1spc>60>%/<math|40%>>>>>>>>>>>|Rough
  Throughput Values of Network with Multipath-VPN enabled>

  The fact we already schematically mentioned in section
  <reference|vlan-conf> you see here in concrete numbers, fortunately the
  tunnel throughput of 19 MB/s is less than half of the pure untunneled
  throughput 92.1 MByste/s.

  <new-page>

  <section|Results on CPU Performance (I)>

  The questions to be answered regarding CPU performance are several.
  Therefore this section will answer the following 4 questions, each in a own
  subsection:

  <\enumerate-Roman>
    <item>\PAre the CPU loads on MTC and MTS different, so we have to measure
    them separately in every experiment or is there a correlation\Q.

    <item>\PIs there a correlation between throughput and CPU time and if
    yes, is it linear?\Q

    <item>What percentage of the CPU load happens in user-space which
    percentage happens in kernel space. Where lies the optimisation
    potential.
  </enumerate-Roman>

  \;

  <new-page>

  <subsection|Comparison of CPU Time Usage on MTC and on MTS (I)>

  <subsubsection|Goals>

  By means of these experiments we wanted to find out whether there is a
  correlation between CPU time usages on MTC on MTS.\ 

  From a theoretical point of view there should be a correlation. Every
  package processed on MTC has to be processed on MTS in a comparable way and
  vice versa. Nevertheless this should not be assumed quietly for the
  following experiments there we did these measurements first.

  <subsubsection|What we Did>

  Our results were measured in a experiment in the following configuration:

  <\itemize>
    <item>The general test setup according to <reference|general-test-setup>y

    <item>Artificial latency created the same way as in the explorative
    experiments in <reference|Creation_of_artificial_latency> (using the
    <verbatim|tc> utility and the <verbatim|netem> module). Set to 100ms on
    one link and 200ms on the other.

    <item>Unidirectional bulk traffic

    <item>On MTC and MTS the CPU time usage was measured using the
    <verbatim|pidstat> utility of the sysstat package (available on all major
    GNU/Linux distributions). The concrete command used
    was:<space|1em><verbatim|pidstat -wrud 1 \<gtr\> results>.

    The full pidstat output results are available on the CD accompanying this
    work<\footnote>
      In the Folder: <samp|Experimente/second_experiment_series(07.02.16)/orig/100ms_200ms/with_perf_measurements>s
    </footnote> (or in the github repo belonging to this work, if you're
    currently reading the online version of this document)
  </itemize>

  Also we did a second performance measurement experiment with the following
  configuration:

  <\itemize>
    <item>Similar to the previous first one

    <item>But producing no artificial latencies at all.
  </itemize>

  <subsubsection|Results and Interpretation>

  Figure <reference|cpu-time-comparison> shows the CPU time usage on MTC and
  MTS side by side:

  <big-figure|<image|Anhang_CD_Daten/Experimente/second_experiment_series(07.02.16)/orig/100ms_200ms/with_perf_measurements/MTC_CPU_graph_100_200_orig.ps||||><image|Anhang_CD_Daten/Experimente/second_experiment_series(07.02.16)/orig/100ms_200ms/with_perf_measurements/MTS_CPU_graph_100_200_orig.ps||||>|<label|cpu-time-comparison>CPU
  Time Usage over Time on MTS and MTC compared Side by Side>

  \;

  As you can see the CPU Time usage over time is quite similar quantity and
  quality, every time there is a usage Time breakdown on MTC an equivalent
  one happens on MTC, the same is true for spikes. These correlation gets
  even more visible if you look at the concrete percentage values in the full
  results included in Appendix <reference|perf-log-appendix>, there the
  percentage values for a corresponding time entry since transfer start often
  match with little to no difference.

  The same results were observed for measurements with no artificial delay on
  both links (second experiment), the CPU usage values showed strong
  similarity. Since they were quite redundant no graphs were included for
  them, but the <verbatim|pidstat> output is included on the CD as well.

  We have to mention that all this CPU usage happened on 1 core, therefore
  all this graphs only contain the load of one core. Multipath VPN has no
  multithreading functionality at all, this will be discussed more thoroughly
  in the next two sections.

  <new-page>

  <subsection|Correlation between Throughput and CPU Time (II)>

  <subsubsection|Goals>

  Through these experiments we wanted to find out if there is a connection
  between CPU time usage and throughput.

  <subsubsection|What we Did>

  Our results were measured in a experiment in the following configuration:

  <\itemize>
    <item>The general test setup according to <reference|general-test-setup>

    <item>No artificial latency

    <item>CPU time measurement with <verbatim|pidstat> exactly like in
    experiment series (I)

    Again, the full results are available on the disk accompanying this
    document.

    <item>Unidirectional bulk traffic
  </itemize>

  <subsubsection|Results and Interpretation>

  A side by side comparison of CPU time usage on MTS and the throughput
  received at ZS is visible in figure <reference|trafic-cpu-comarison>.

  <big-figure|<image|Anhang_CD_Daten/Experimente/second_experiment_series(07.02.16)/orig/100ms_200ms/with_perf_measurements/MTS_CPU_graph_100_200_orig.ps||||>
  <image|Anhang_CD_Daten/Experimente/second_experiment_series(07.02.16)/orig/100ms_200ms/with_perf_measurements/zs_traffic_diag_small.pdf|400px|||>|<label|trafic-cpu-comarison>Side
  by Side comparison of CPU Time Usage on Tunnel Exit (MTS) and Data
  Throughput>

  While the two graphs are not completely equal they are quite similar. Every
  time the throughput rate drops (most likely because of reordering induced
  send window reductions), the CPU time usage drops in a similar fashion. For
  example this can be observed at second 7, 14, 29, 41, 51 and finally at the
  transmission termination at second 60.

  After this results we can safely assume that throughput and CPU time usage
  are directly linked in Multipath VPN. Especially since this findings match
  with our understanding of the code and the way Multipath VPN works. Every
  packet has to be processed separately and this processing of course costs
  CPU time.<new-page>

  <subsection|Differentiated CPU Usage Analysis (III)>

  <subsubsection|Goals>

  By means of these experiments we wanted to find out where exactly all the
  CPU time is used and for what. Since the used measurement tool
  <verbatim|pidstat> shows <em|system-time> and <em|user-time> separately, we
  can get some insights on this question.

  <subsubsection|What we Did>

  Our results were measured in a experiment in the following configuration:

  <\itemize>
    <item>The general test setup according to <reference|general-test-setup>

    <item>No artificial latency

    <item>CPU time measurement with <verbatim|pidstat> exactly like in
    experiment series (I)

    Again, the full results are available on the disk accompanying this
    document.

    <item>Unidirectional bulk traffic
  </itemize>

  <subsubsection|Results and Interpretation>

  Since we are not interested in the changing of the <em|system-time> to
  <em|user-time> ratio over time but the average values throughout the whole
  experiments the results are displayed in table <reference|time-ratio>:

  <\big-table|<block|<tformat|<table|<row|<cell|Average <em|user-cpu-time>
  share>|<cell|56.4833 %>>|<row|<cell|Average <em|system-cpu-time> share
  >|<cell|39.4666 %>>|<row|<cell|<em|user-time/system-time>
  ratio>|<cell|1.431>>>>>>
    <label|time-ratio>Percentages of User and System Time of the Multipath
    VPN Perl Process in a Network with no Artificial Latency and 100% cpu
    load of one core.
  </big-table>

  We were expecting that Multipath VPN would spent most of it's time in
  kernel space (i.e. system time) since the context switches necessary
  between user-mode (taking the packets from tun interface) to system-mode
  (processing and sending the packets through the network interfaces), are
  usually a quite time consuming task<cite|rosen2013linux> and are accounted
  as system time<cite|benvenuti2006><cite|rosen2013linux>.

  This is a strong indicator that in userspace the process is doing some
  extremely expensive and perhaps (non necessary) work. This could be
  frequent copying of data between functions or processing or reading the
  data in some way like for example with a regular expression engine (This
  suspicion is mentioned because using regular expressions on data is a very
  common way often used to solve problems in Perl).

  \;

  \;

  \;

  \;

  \;

  <new-page>

  <section|Results on Connection Stability (II)>

  <subsection|Goals>

  For this section we wanted to stress test the connection stability features
  of Multipath VPN. Or in other words: How changes the throughput over time
  if one of the links between MTC and MTS becomes unavailable?

  <subsection|What we did>

  Our results were measured in a experiment in the following configuration:

  <\itemize>
    <item>The general test setup according to <reference|general-test-setup>

    <item>No artificial latency at all

    <item>At second 45 we took the virtual network interface eth2.5 on MTS
    down and with this disconnected the link IG0 to MTC. 20 seconds later we
    took eth2.5 up again and therefore reconnected.<\footnote>
      Since these timings and manipulations were done manually and using by
      looking on a stopwatch, perfect accuracy can not be guaranteed. It's
      also possible the real interrupt time were 19 or 22 seconds, therefore
      the results of these experiments have to be taken with a grain of salt
      and are rather roundabout qualitative values.
    </footnote>

    <item>Traffic sent from CO to ZS and measured via tcpdump on ZS. (Same as
    in general setup)
  </itemize>

  <subsection|Results>

  <big-figure|<image|Anhang_CD_Daten/Experimente/second_experiment_series(07.02.16)/plug_out_perf/opt_0ms,0ms/zs_traffic_C0-\>ZS.pdf|700px|||>|Throughput
  over time when disconnection one uplink for 20 seconds>

  \;

  <new-page>

  <subsection|Evaluation and Interpretation>

  Here you can observe several things:

  <\itemize>
    <item>After we disconnected one link the throughput over Multipath VPN
    suddenly dropped to zero Bytes/s and stagnated completely for about 7
    seconds. It took Multipath VPN about 8 seconds to recover completely.

    <strong|Explanation:>

    We currently assume that this drop to zero happens as a result of the
    following process:\ 

    <\itemize>
      <item>In the code of Multipath VPN there exists no feature to get the
      state of the used network interface or to be informed of the
      unavailability of an interface.

      <item>So short-time-speaking Multipath VPN does not know about a link
      loss and continues to put packets into the socket belonging to the
      broken link.

      <item>Since all this packets won't be delivered this means a huge
      packet loss.

      <item>This packet loss causes the sender (C0) to reduce his send window
      (cwnd) further and further.\ 

      <item>And during this time no stream traffic will can be transported
      because only every second packet arrives.

      <item>There exists a Target Reach-ability Check loop, but it runs all 5
      seconds. So eventually this loop notices that the link is down and
      disable the corresponding

      <item>Now a continuous packet stream is possible again and TCP can
      restore it's original throughput and send window size (cwnd).
    </itemize>

    The Target Reach-ability Check loop interval of 5 seconds fits quite well
    to the observed values.

    <item>Nevertheless the TCP Connection did not break or disconnect.

    <item>After recovering the throughput returned to its old level, although
    using only one link.

    <strong|Explanation:>

    In this experiment, without any artificial latency, the throughput
    bottleneck is not the network but the cpu. Even one Ethernet wire can
    transport the maximal CPU processable throughput of 20 MB/s.

    <item>It even seems the throughput is somewhat increased using one link
    and decreases a little when the link is reconnected again.

    <strong|Explanation:>

    This can have 2 reasons:

    <\enumerate-Alpha>
      <item>A lower amount of packet reordering means lesser spuriously
      assumed packet losses and send window reductions.

      <item>The existence of only one link means less computational work is
      necessary for Multipath VPN. The complete \Pdecision making\Q process
      which had to be done for every packet gets quite simple now, perhaps
      this reduced cpu power need is the reason for the slightly increased
      throughput.
    </enumerate-Alpha>

    <space|2em>In the end, the time span in which the increased traffic
    occurred was to short to decide which one of this reasons is responsible.
    Also the increase in throughput is not that significant to decide
    anything for sure. It is up to future studies or experiments to analyse
    this phenomenon more precisely.
  </itemize>

  This experiment though not very sophisticated and without any additional
  measurement besides traffic, gave several deep insights into the workings
  und logic of Multipath VPN.

  <new-page>

  <section|Results of Changing Linux Internal TCP Options
  (III)><label|linux-tcp-options>

  In section <reference|tcp-switches-def> we introduced two Linux internal
  TCP configuration switches which can improve the throughput performance in
  a network suffering of reordering. With these experiments we will evaluate
  how much throughput or traffic regularity can be approved with several
  different configurations.

  <subsection|Goals>

  In this section we want to find out what effect changing the Linux tcp
  options <verbatim|tcp_reordering> \ on the sending computer and on sender
  and receiver to different values higher than 3, has on throughput through
  an OSI Layer 3 Link Aggregation Network.\ 

  Additionally we will try disabling <verbatim|tcp_fack> and observe the
  effects.

  <subsection|What we did>

  Our results were measured in a experiment in the following configuration:

  <\itemize>
    <item>The general test setup according to <reference|general-test-setup>

    <item>No artificial latency at all
  </itemize>

  Additionally to this base configuration we carried out several experiments
  in two different series:

  <subsubsection|Series 1: Only Changing Sender TCP Configuration>

  On the Sender (C0) the configurations were:

  <\itemize>
    <item>tcp_reordering = 5

    <item>tcp_reordering = 10

    <item>tcp_reordering = 15

    <item>tcp_reordering = 15 + tcp_fack disabled
  </itemize>

  <subsubsection|Series 2: Changing Sender and Receiver Configuration>

  On both computers the configurations were:

  <\itemize>
    <item>tcp_reordering = 15 + tcp_fack disabled

    <item>tcp_reordering = 30 + tcp_fack disabled

    <item>tcp_reordering = 300 + tcp_fack disabled

    <item>tcp_reordering = 0 + tcp_fack disabled
  </itemize>

  \;

  <subsection|Results and Interpretation>

  Frustratingly adjusting the mentioned options does not change very much at
  all in means of throughput. This subsection contains 3 throughput over time
  figures, the first one is measured with the default settings for these 2
  options, in the second one we changed <verbatim|tcp_reordering> to 15 and
  disables <verbatim|tcp_fack> on sender site, for the third one set this
  values for sender and receiver site:

  \;

  <big-figure|<image|Anhang_CD_Daten/Experimente/second_experiment_series(07.02.16)/orig/0ms_0ms/without_perf_+_ctext_etc/zs_traffic_orig_0,0_diagramm.pdf|650px|||>|Network
  Throughput Diagram, Without any TCP Options>

  <big-figure|<image|Anhang_CD_Daten/Experimente/second_experiment_series(07.02.16)/fack_+_reorder_on_sender_mpvpn/0,0ms/reorder=15+fack/zs__fack+reorder_send_on.pdf|650px|||>|Network
  Throughput Diagram, with Sender side modifications: tcp_reordering=15 and
  tcp_fack disabled>

  \;

  <big-figure|<image|Anhang_CD_Daten/Experimente/second_experiment_series(07.02.16)/fack_+_reorder_on_both_mpvpn/0ms,0ms/reorder=15+fack/zs_traffic_fack_+reorder=15.pdf|650px|||>|Network
  Throughput Diagram, with Sender and Receiver-side modifications:
  tcp_reordering=15 and tcp_fack disabled>

  \;

  None of the three figures displays a smooth transfer rate, all 3 contain
  oscillations of comparable amplitude. We assume all this oscillations are a
  result of tcp performing fast recovery after receiving several reordered
  packets.

  Another possibility to compare these three scenarios is by total
  throughput, table <reference|total-throughput> contains the total
  throughput of all 3 experiments, measured by the last Acknowledgement
  number of the last ACK segment sent by the receiver.

  <big-table|<tabular|<tformat|<table|<row|<cell|>>>>><block*|<tformat|<table|<row|<cell|Experiment>|<cell|Total
  Throughput>>|<row|<cell|No Options set>|<cell|1105.945953
  MByte>>|<row|<cell|<verbatim|tcp_reorder>=15 and <verbatim|tcp_fack>
  disabled on sender>|<cell|1091.303905 MByte>>|<row|<cell|<verbatim|tcp_reorder>=15
  and <verbatim|tcp_fack> disabled on both hosts>|<cell|1096.380697
  MByte>>>>>|<label|total-throughput>Total Throughput in the three TCP
  Options experiments, compared>\ 

  Again the values don't vary very much, there doesn't seem to be a big
  difference.

  <subsubsection|Explanation>

  Since the two TCP options used are sparely documented kernel internals
  currently we can only make assumptions by reading the provided
  documentation. For <verbatim|tcp_reordering> reading the official
  documentation very precisely word by word can give an answer:

  <\quote-env>
    The maximum a packet can be reordered in a TCP packet stream without TCP
    assuming packet loss and going into slow start.
  </quote-env>

  Here the term is \Pand going into slow start\Q which means the sender
  starts again with a cwnd window of 1. It does not say anything about
  preventing halving or reducing cwnd, so we assume this option would have
  solved a problem we never had(an even more critical processing of DUPACKs)
  but not our problem.

  \;

  Similar would be a are a explanation for the lacking efficacy of
  <verbatim|tcp_fack>. As a reminder <verbatim|tcp_fack> works together with
  <verbatim|tcp_sack>, the <em|Selective Acknowledgement> extension of TCP.
  With <verbatim|tcp_sack> a receiver can tell the sender \PI received packet
  7,9 and 13\Q, usually the packets in between are assumed as in flight, and
  measures are only taken if DUPACKs or Timeouts occurs. The change
  <verbatim|tcp_fack> introduces that such \Pgap packets\Q are explicit
  assumed lost, resent and cwnd is adjusted.\ 

  Such \Pgap packets\Q and corresponding of SACK messages often occur in
  networks suffering from a high rate of reordering, where the packets are
  not really lost, in these cases <verbatim|tcp_fack> assumes packets as lost
  which aren't and overcorrects to aggressively, so disabling
  <verbatim|tcp_fack> can bring advantages. Unfortunately in our case the
  reason for the frequent cwnd adaptions doesn't seem to be SACK and FACK
  induced retransmission and cwnd reducing, so disabling <verbatim|tcp_fack>
  showed no big effect.

  <chapter|Conclusion>

  <section|Evaluation Summary and Optimisation Possibilities>

  Finally we can conclude that the OSI Layer 3 Link Aggregation Tunneling
  implementation evaluated <verbatim|Multipath VPN> is still in it's child
  shoes. It works but throughput, cpu time need and reliability behaviour
  have issues. For most of these issues fixes are possible which are
  summarised:

  <\description-long>
    <item*|CPU Time Need>Through several experiments we detected that the CPU
    time need of Multipath VPN is quite high. On a Intel Core i7-2600 the
    maximum reachable throughput was 20 MB/s. Depending on the capability of
    the internet uplinks and latencies this can be a boundary.

    <strong|Possibilities for Optimization:>

    Fortunately several possibilities for optimisation exist:

    <\description>
      <item*|Multithreading>Since Multipath VPN is single threaded only one
      core of the 8 ones in the experiment was used. Here Multithreading
      would help. One way to distribute the workload would be to assign one
      thread for the \Preceiving direction\Q and one core for the \Psending
      direction\Q.

      All further splitting salvages the possibility of locking problems or
      creation of additional packet reordering. To avoid additional
      reordering every thread could handle one TCP connection. Nevertheless
      without further research we can not safely tell how well such further
      splitting to more than 2 threads perform since additional locking for
      sockets and the tun interface may be necessary with an correlative
      performance penalty.

      <item*|Algorithmic Optimizations>In all the experiments we measured CPU
      time the amount of CPU time spent in user space was larger than that
      spent in kernel space. In the least extreme case the ratio of
      <em|user-time> to <em|system-time> was 1.4. This is strange for a
      program that does a lot of context switches, since these are expensive
      and are accounted \ as <em|system-time>.\ 

      This high ratio of <em|user-time> is a strong indicator for available
      optimisation potential. And Fortunately optimisation of user space code
      is way less complicated than optimising kernel space and getting the
      changes merged into the upstream project.

      <item*|Kernel Space Reeimplementation>This of course would be the most
      drastic and costly measure. And the most effective, in kernel space all
      data copying between kernel space and user space would vanish as well
      as all privilege mode switches.
    </description>

    <item*|Reliability Behaviour>If one of several links goes down the
    traffic tunneled through Multipath VPN stagnates to zero. After five
    seconds Multipath VPN realizes the unavailability of this links and
    adapts its distribution of packets to links, and the packet flow
    regenerates. The 5 second interval is hardcoded. While tcp connections
    survive this stagnation for voip sessions over UDP this stagnation is
    problematic.

    <strong|Possibilities for Optimization:>

    On most modern Linux systems it is possible to register for the event
    notification of connection loss and so to get informed of every
    connection loss via DBUS <strong|immediately>. This would allow a much
    quicker handling of connection loses, a smoother drop to the new
    throughput rate and therefore a much less disturbing users experience.

    <item*|Throughput and Reordering>Our experiments showed that a packet
    stream being tunneled through Multipath VPN gets reordered, especially
    heavy in networks with low latencies. This reordering is noxious for the
    way TCP tries to detect packets losses and triggers spurious retransmit
    and send rate reductions. Although this effect never was the limiting
    factor for the maximum possible throughput (CPU power, or latency and
    Receive Window size was), it was the reason for serious staggering of the
    throughput rate. In one experiment, the reordering induced a number of
    Duplicate Acknowledgements that high, the sender stopped to send at all
    for about 0.4 seconds.

    <strong|Possibilities for Optimization:>

    The source of packet reordering is not Multipath VPN or different
    latencies, but the way the Linux kernel buffers and processes packets. On
    Linux it is not possible to send a UDP packet <strong|immediately> to the
    wire, forcefully pushing it through the ring buffer of the network
    device. Packets get buffered in this device ring buffer and sent together
    in a way a user space process has no influence on. So if the avoidance of
    the OS buffering induced reordering is impossible, what can we do?

    Basically there exist two options:

    <\description>
      <item*|Re-reordering on Both sites>It is possible to create a buffer of
      the unpacked packets (one buffer for each TCP connection) and
      re-reorder an array of pointers to the segments according to their
      sequence numbers. While this solves the reordering issue it introduces
      two new problems: additional cpu time need and a higher latency for
      every packet, since it will stay in this re-reordering buffer for some
      time.

      <item*|Making TCP Resistant to Packet Reordering>Linux TCP offers two
      switches accessible via the <verbatim|/proc/sys/net> virtual file
      system which can make TCP more resistant to reordering and avoid the
      possibilities of spurious retransmit and send rate reduction. \ In our
      experiments we evaluated two of them but could not measure any change
      in throughput stability.
    </description>
  </description-long>

  <section|About the Application Domain>

  Following the tradition of TCP/IP Illustrated by Richard
  Stevens<cite|Stevens:1993:TIP> we distinguish between two different uses of
  transport layer protocols:

  <\enumerate>
    <item>Interactive Data Flow

    Examples for this category of traffic are:

    <\itemize>
      <item>Remote shell or remote desktop sessions (like ssh or windows rdp)

      <item>Remote Procedure Calls (RPC)

      <item>Online Gaming (Quake, OpenArena)
    </itemize>

    <space|1em>For a good interactive data flow service a low network latency
    is very important, a high network throughput is no core requirement.

    <item>Bulk Data Flow

    Examples for this category of traffic are:

    <\itemize>
      <item>Downloads

      <item>Movie Streaming

      <item>Uploads

      The requirements on the network of this category are the opposite of
      the previous category. For bulk data flow applications a high
      throughput is very important to work satisfactory whereas low latency
      is secondary.
    </itemize>
  </enumerate>

  Knowing these examples it gets clear that bulk data flow is the preferred
  application domain of OSI Layer 3 Link Aggregation Tunneling solutions,
  since in this domain it's advantages, higher throughput and reliability are
  needed. Of course the additional packet processing means a small additional
  latency. This small additional latency means no significant problem for
  interactive data flow. Nevertheless compared to load balancing it makes OSI
  Layer 3 Link Aggregation Tunneling less optimal for users only needing
  interactive data flow.

  <appendix|Detailed Performance Measurement
  Results><label|perf-log-appendix>

  <section|MTS: 100ms_200ms latency>

  <space|1em>

  <\verbatim>
    #Time \ \ \ \ \ %usr %system \ \ %CPU \ \ CPU \ \ \ \ cswch/s nvcswch/s
    \ Command

    01001 \ \ \ \ \ 1.00 \ \ \ 0.00 \ \ 1.00 \ \ \ \ 0 \ \ \ \ \ \ \ 7.00
    \ \ \ \ \ 0.00 \ perl

    01002 \ \ \ \ \ 0.00 \ \ \ 0.00 \ \ 0.00 \ \ \ \ 0 \ \ \ \ \ \ 15.00
    \ \ \ \ \ 0.00 \ perl

    01003 \ \ \ \ 10.00 \ \ \ 5.00 \ 15.00 \ \ \ \ 0 \ \ \ \ \ \ 99.00
    \ \ \ \ 15.00 \ perl

    01004 \ \ \ \ 25.00 \ \ 12.00 \ 37.00 \ \ \ \ 0 \ \ \ \ \ 724.00
    \ \ \ \ 25.00 \ perl

    01005 \ \ \ \ 28.00 \ \ 12.00 \ 40.00 \ \ \ \ 0 \ \ \ \ 1276.00
    \ \ \ \ 24.00 \ perl

    01006 \ \ \ \ 27.00 \ \ 14.00 \ 41.00 \ \ \ \ 0 \ \ \ \ 1087.00
    \ \ \ \ 29.00 \ perl

    01007 \ \ \ \ 25.00 \ \ 13.00 \ 38.00 \ \ \ \ 0 \ \ \ \ \ 950.00
    \ \ \ \ 26.00 \ perl

    01008 \ \ \ \ 25.00 \ \ 13.00 \ 38.00 \ \ \ \ 0 \ \ \ \ \ 965.00
    \ \ \ \ 24.00 \ perl

    01009 \ \ \ \ 23.00 \ \ \ 6.00 \ 29.00 \ \ \ \ 4 \ \ \ \ \ 415.00
    \ \ \ \ 12.00 \ perl

    01010 \ \ \ \ 21.00 \ \ 14.00 \ 35.00 \ \ \ \ 0 \ \ \ \ \ 456.00
    \ \ \ \ 22.00 \ perl

    01011 \ \ \ \ 22.00 \ \ 13.00 \ 35.00 \ \ \ \ 0 \ \ \ \ \ 528.00
    \ \ \ \ 25.00 \ perl

    01012 \ \ \ \ 29.00 \ \ 16.00 \ 45.00 \ \ \ \ 0 \ \ \ \ 1075.00
    \ \ \ \ 36.00 \ perl

    01013 \ \ \ \ 30.00 \ \ 11.00 \ 41.00 \ \ \ \ 0 \ \ \ \ 1011.00
    \ \ \ \ 24.00 \ perl

    01014 \ \ \ \ 31.00 \ \ 14.00 \ 45.00 \ \ \ \ 0 \ \ \ \ 1044.00
    \ \ \ \ 29.00 \ perl

    01015 \ \ \ \ 30.00 \ \ 12.00 \ 42.00 \ \ \ \ 0 \ \ \ \ \ 859.00
    \ \ \ \ 19.00 \ perl

    01016 \ \ \ \ 35.00 \ \ 13.00 \ 48.00 \ \ \ \ 1 \ \ \ \ 1264.00
    \ \ \ \ 25.00 \ perl

    01017 \ \ \ \ 21.00 \ \ 11.00 \ 32.00 \ \ \ \ 0 \ \ \ \ \ 551.00
    \ \ \ \ 28.00 \ perl

    01018 \ \ \ \ 26.00 \ \ 14.00 \ 40.00 \ \ \ \ 0 \ \ \ \ \ 923.00
    \ \ \ \ 27.00 \ perl

    01019 \ \ \ \ 31.00 \ \ 17.00 \ 48.00 \ \ \ \ 0 \ \ \ \ 1191.00
    \ \ \ \ 27.00 \ perl

    01020 \ \ \ \ 35.00 \ \ 12.00 \ 47.00 \ \ \ \ 4 \ \ \ \ 1396.00
    \ \ \ \ 19.00 \ perl

    01021 \ \ \ \ 35.00 \ \ 12.00 \ 47.00 \ \ \ \ 0 \ \ \ \ 1341.00
    \ \ \ \ 28.00 \ perl

    01022 \ \ \ \ 32.00 \ \ 14.00 \ 46.00 \ \ \ \ 0 \ \ \ \ 1696.00
    \ \ \ \ 17.00 \ perl

    01023 \ \ \ \ 35.00 \ \ 15.00 \ 50.00 \ \ \ \ 0 \ \ \ \ 1503.00
    \ \ \ \ 31.00 \ perl

    01024 \ \ \ \ 33.00 \ \ 14.00 \ 47.00 \ \ \ \ 1 \ \ \ \ 1561.00
    \ \ \ \ 21.00 \ perl

    01025 \ \ \ \ 38.00 \ \ \ 7.00 \ 45.00 \ \ \ \ 1 \ \ \ \ 1599.00
    \ \ \ \ 14.00 \ perl

    01026 \ \ \ \ 33.00 \ \ 13.00 \ 46.00 \ \ \ \ 0 \ \ \ \ 1265.00
    \ \ \ \ 20.00 \ perl

    01027 \ \ \ \ 38.00 \ \ 13.00 \ 51.00 \ \ \ \ 0 \ \ \ \ 1241.00
    \ \ \ \ 31.00 \ perl

    01028 \ \ \ \ 40.00 \ \ 15.00 \ 55.00 \ \ \ \ 1 \ \ \ \ 1574.00
    \ \ \ \ 20.00 \ perl

    01029 \ \ \ \ 39.00 \ \ 15.00 \ 54.00 \ \ \ \ 1 \ \ \ \ 1651.00
    \ \ \ \ 20.00 \ perl

    01030 \ \ \ \ 41.00 \ \ 17.00 \ 58.00 \ \ \ \ 0 \ \ \ \ 1453.00
    \ \ \ \ 30.00 \ perl

    01031 \ \ \ \ 29.00 \ \ 16.00 \ 45.00 \ \ \ \ 0 \ \ \ \ \ 813.00
    \ \ \ \ 38.00 \ perl

    01032 \ \ \ \ 33.00 \ \ 20.00 \ 53.00 \ \ \ \ 0 \ \ \ \ \ 991.00
    \ \ \ \ 37.00 \ perl

    01033 \ \ \ \ 36.00 \ \ 19.00 \ 55.00 \ \ \ \ 0 \ \ \ \ 1448.00
    \ \ \ \ 39.00 \ perl

    01034 \ \ \ \ 40.00 \ \ 21.00 \ 61.00 \ \ \ \ 0 \ \ \ \ 1196.00
    \ \ \ \ 37.00 \ perl

    01035 \ \ \ \ 41.00 \ \ 21.00 \ 62.00 \ \ \ \ 0 \ \ \ \ 1188.00
    \ \ \ \ 39.00 \ perl

    01036 \ \ \ \ 45.00 \ \ 15.00 \ 60.00 \ \ \ \ 1 \ \ \ \ 1662.00
    \ \ \ \ 24.00 \ perl

    01037 \ \ \ \ 41.00 \ \ 20.00 \ 61.00 \ \ \ \ 0 \ \ \ \ 1836.00
    \ \ \ \ 30.00 \ perl

    01038 \ \ \ \ 46.00 \ \ 20.00 \ 66.00 \ \ \ \ 3 \ \ \ \ 1857.00
    \ \ \ \ 37.00 \ perl

    01039 \ \ \ \ 44.00 \ \ 18.00 \ 62.00 \ \ \ \ 0 \ \ \ \ 2000.00
    \ \ \ \ 36.00 \ perl

    01040 \ \ \ \ 52.00 \ \ 12.00 \ 64.00 \ \ \ \ 0 \ \ \ \ 1929.00
    \ \ \ \ 22.00 \ perl

    01041 \ \ \ \ 42.00 \ \ 20.00 \ 62.00 \ \ \ \ 0 \ \ \ \ 2035.00
    \ \ \ \ 31.00 \ perl

    01042 \ \ \ \ 43.00 \ \ 15.00 \ 58.00 \ \ \ \ 0 \ \ \ \ 2173.00
    \ \ \ \ 37.00 \ perl

    01043 \ \ \ \ 32.00 \ \ 15.00 \ 47.00 \ \ \ \ 0 \ \ \ \ 1182.00
    \ \ \ \ 29.00 \ perl

    01044 \ \ \ \ 28.00 \ \ 17.00 \ 45.00 \ \ \ \ 0 \ \ \ \ 1316.00
    \ \ \ \ 35.00 \ perl

    01045 \ \ \ \ 34.00 \ \ 11.00 \ 45.00 \ \ \ \ 1 \ \ \ \ 1638.00
    \ \ \ \ 15.00 \ perl

    01046 \ \ \ \ 34.00 \ \ 10.00 \ 44.00 \ \ \ \ 0 \ \ \ \ 1236.00
    \ \ \ \ 16.00 \ perl

    01047 \ \ \ \ 30.00 \ \ \ 9.00 \ 39.00 \ \ \ \ 0 \ \ \ \ \ 892.00
    \ \ \ \ 19.00 \ perl

    01048 \ \ \ \ 32.00 \ \ 17.00 \ 49.00 \ \ \ \ 1 \ \ \ \ 1156.00
    \ \ \ \ 36.00 \ perl

    01049 \ \ \ \ 32.00 \ \ 17.00 \ 49.00 \ \ \ \ 0 \ \ \ \ 1490.00
    \ \ \ \ 29.00 \ perl

    01050 \ \ \ \ 33.00 \ \ 13.00 \ 46.00 \ \ \ \ 0 \ \ \ \ 1608.00
    \ \ \ \ 30.00 \ perl

    01051 \ \ \ \ 30.00 \ \ 15.00 \ 45.00 \ \ \ \ 0 \ \ \ \ 1440.00
    \ \ \ \ 31.00 \ perl

    01052 \ \ \ \ 23.00 \ \ 10.00 \ 33.00 \ \ \ \ 0 \ \ \ \ \ 621.00
    \ \ \ \ 23.00 \ perl

    01053 \ \ \ \ 23.00 \ \ 13.00 \ 36.00 \ \ \ \ 0 \ \ \ \ \ 854.00
    \ \ \ \ 25.00 \ perl

    01054 \ \ \ \ 28.00 \ \ \ 7.00 \ 35.00 \ \ \ \ 0 \ \ \ \ \ 849.00
    \ \ \ \ 18.00 \ perl

    01055 \ \ \ \ 25.00 \ \ 12.00 \ 37.00 \ \ \ \ 0 \ \ \ \ \ 808.00
    \ \ \ \ 26.00 \ perl

    01056 \ \ \ \ 23.00 \ \ 11.00 \ 34.00 \ \ \ \ 0 \ \ \ \ \ 735.00
    \ \ \ \ 22.00 \ perl

    01057 \ \ \ \ 30.00 \ \ \ 8.00 \ 38.00 \ \ \ \ 0 \ \ \ \ \ 845.00
    \ \ \ \ 17.00 \ perl

    01058 \ \ \ \ 29.00 \ \ 11.00 \ 40.00 \ \ \ \ 0 \ \ \ \ 1266.00
    \ \ \ \ 17.00 \ perl

    01059 \ \ \ \ 25.00 \ \ 16.00 \ 41.00 \ \ \ \ 0 \ \ \ \ 1130.00
    \ \ \ \ 27.00 \ perl

    01060 \ \ \ \ 28.00 \ \ 13.00 \ 41.00 \ \ \ \ 1 \ \ \ \ 1106.00
    \ \ \ \ 23.00 \ perl

    01061 \ \ \ \ 31.00 \ \ \ 6.00 \ 37.00 \ \ \ \ 2 \ \ \ \ 1025.00
    \ \ \ \ \ 8.00 \ perl

    01062 \ \ \ \ 19.00 \ \ \ 4.00 \ 23.00 \ \ \ \ 2 \ \ \ \ \ 624.00
    \ \ \ \ \ 9.00 \ perl

    01063 \ \ \ \ \ 0.00 \ \ \ 0.00 \ \ 0.00 \ \ \ \ 0 \ \ \ \ \ \ \ 7.00
    \ \ \ \ \ 0.00 \ perl

    01064 \ \ \ \ \ 0.00 \ \ \ 0.00 \ \ 0.00 \ \ \ \ 0 \ \ \ \ \ \ \ 7.00
    \ \ \ \ \ 0.00 \ perl
  </verbatim>

  <section|MTC: 100ms_200ms latency>

  <\verbatim>
    \ \ \ #Time \ \ \ \ %usr %system \ \ \ \ %CPU \ \ CPU \ \ \ \ cswch/s
    nvcswch/s \ Command

    97360 \ \ \ \ 0.00 \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0 \ \ \ \ \ \ \ 3.00
    \ \ \ \ \ 4.00 \ perl

    97361 \ \ \ \ 0.00 \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0 \ \ \ \ \ \ 10.00
    \ \ \ \ \ 4.00 \ perl

    97362 \ \ \ \ 9.00 \ \ \ 6.00 \ \ \ 15.00 \ \ \ \ 0 \ \ \ \ \ 122.00
    \ \ \ \ 13.00 \ perl

    97363 \ \ \ 25.00 \ \ 11.00 \ \ \ 36.00 \ \ \ \ 0 \ \ \ \ \ 769.00
    \ \ \ \ 28.00 \ perl

    97364 \ \ \ 28.00 \ \ \ 8.00 \ \ \ 36.00 \ \ \ \ 0 \ \ \ \ 1216.00
    \ \ \ \ 22.00 \ perl

    97365 \ \ \ 26.00 \ \ 13.00 \ \ \ 39.00 \ \ \ \ 0 \ \ \ \ 1101.00
    \ \ \ \ 22.00 \ perl

    97366 \ \ \ 25.00 \ \ 12.00 \ \ \ 37.00 \ \ \ \ 0 \ \ \ \ \ 904.00
    \ \ \ \ 25.00 \ perl

    97367 \ \ \ 30.00 \ \ 10.00 \ \ \ 40.00 \ \ \ \ 0 \ \ \ \ \ 884.00
    \ \ \ \ 21.00 \ perl

    97368 \ \ \ 21.00 \ \ \ 8.00 \ \ \ 29.00 \ \ \ \ 0 \ \ \ \ \ 424.00
    \ \ \ \ 19.00 \ perl

    97369 \ \ \ 23.00 \ \ \ 9.00 \ \ \ 32.00 \ \ \ \ 0 \ \ \ \ \ 525.00
    \ \ \ \ 22.00 \ perl

    97370 \ \ \ 24.00 \ \ 13.00 \ \ \ 37.00 \ \ \ \ 0 \ \ \ \ \ 557.00
    \ \ \ \ 24.00 \ perl

    97371 \ \ \ 28.00 \ \ 14.00 \ \ \ 42.00 \ \ \ \ 0 \ \ \ \ 1157.00
    \ \ \ \ 26.00 \ perl

    97372 \ \ \ 25.00 \ \ 13.00 \ \ \ 38.00 \ \ \ \ 0 \ \ \ \ 1095.00
    \ \ \ \ 28.00 \ perl

    97373 \ \ \ 29.00 \ \ 12.00 \ \ \ 41.00 \ \ \ \ 1 \ \ \ \ 1260.00
    \ \ \ \ 22.00 \ perl

    97374 \ \ \ 23.00 \ \ 15.00 \ \ \ 38.00 \ \ \ \ 0 \ \ \ \ 1035.00
    \ \ \ \ 30.00 \ perl

    97375 \ \ \ 37.00 \ \ \ 9.00 \ \ \ 46.00 \ \ \ \ 0 \ \ \ \ 1296.00
    \ \ \ \ 14.00 \ perl

    97376 \ \ \ 22.00 \ \ \ 9.00 \ \ \ 31.00 \ \ \ \ 0 \ \ \ \ \ 619.00
    \ \ \ \ 23.00 \ perl

    97377 \ \ \ 29.00 \ \ 12.00 \ \ \ 41.00 \ \ \ \ 0 \ \ \ \ \ 888.00
    \ \ \ \ 20.00 \ perl

    97378 \ \ \ 32.00 \ \ 13.00 \ \ \ 45.00 \ \ \ \ 0 \ \ \ \ 1147.00
    \ \ \ \ 23.00 \ perl

    97379 \ \ \ 30.00 \ \ 16.00 \ \ \ 46.00 \ \ \ \ 0 \ \ \ \ 1229.00
    \ \ \ \ 27.00 \ perl

    97380 \ \ \ 34.00 \ \ 11.00 \ \ \ 45.00 \ \ \ \ 0 \ \ \ \ 1328.00
    \ \ \ \ 25.00 \ perl

    97381 \ \ \ 33.00 \ \ 11.00 \ \ \ 44.00 \ \ \ \ 0 \ \ \ \ 1494.00
    \ \ \ \ 23.00 \ perl

    97382 \ \ \ 31.00 \ \ 14.00 \ \ \ 45.00 \ \ \ \ 0 \ \ \ \ 1595.00
    \ \ \ \ 22.00 \ perl

    97383 \ \ \ 29.00 \ \ 14.00 \ \ \ 43.00 \ \ \ \ 0 \ \ \ \ 1485.00
    \ \ \ \ 24.00 \ perl

    97384 \ \ \ 29.00 \ \ 16.00 \ \ \ 45.00 \ \ \ \ 0 \ \ \ \ 1374.00
    \ \ \ \ 29.00 \ perl

    97385 \ \ \ 28.00 \ \ 18.00 \ \ \ 46.00 \ \ \ \ 0 \ \ \ \ 1111.00
    \ \ \ \ 32.00 \ perl

    97386 \ \ \ 35.00 \ \ 12.00 \ \ \ 47.00 \ \ \ \ 0 \ \ \ \ 1369.00
    \ \ \ \ 27.00 \ perl

    97387 \ \ \ 36.00 \ \ 15.00 \ \ \ 51.00 \ \ \ \ 0 \ \ \ \ 1546.00
    \ \ \ \ 28.00 \ perl

    97388 \ \ \ 31.00 \ \ 19.00 \ \ \ 50.00 \ \ \ \ 2 \ \ \ \ 1697.00
    \ \ \ \ 24.00 \ perl

    97389 \ \ \ 38.00 \ \ 16.00 \ \ \ 54.00 \ \ \ \ 0 \ \ \ \ 1583.00
    \ \ \ \ 26.00 \ perl

    97390 \ \ \ 30.00 \ \ 13.00 \ \ \ 43.00 \ \ \ \ 0 \ \ \ \ 1046.00
    \ \ \ \ 23.00 \ perl

    97391 \ \ \ 31.00 \ \ 18.00 \ \ \ 49.00 \ \ \ \ 0 \ \ \ \ 1183.00
    \ \ \ \ 41.00 \ perl

    97392 \ \ \ 37.00 \ \ 17.00 \ \ \ 54.00 \ \ \ \ 0 \ \ \ \ 1461.00
    \ \ \ \ 32.00 \ perl

    97393 \ \ \ 39.00 \ \ 16.00 \ \ \ 55.00 \ \ \ \ 0 \ \ \ \ 1526.00
    \ \ \ \ 30.00 \ perl

    97394 \ \ \ 40.00 \ \ 16.00 \ \ \ 56.00 \ \ \ \ 0 \ \ \ \ 1533.00
    \ \ \ \ 31.00 \ perl

    97395 \ \ \ 41.00 \ \ 13.00 \ \ \ 54.00 \ \ \ \ 4 \ \ \ \ 1692.00
    \ \ \ \ 27.00 \ perl

    97396 \ \ \ 43.00 \ \ 12.00 \ \ \ 55.00 \ \ \ \ 0 \ \ \ \ 2033.00
    \ \ \ \ 19.00 \ perl

    97397 \ \ \ 43.00 \ \ 17.00 \ \ \ 60.00 \ \ \ \ 0 \ \ \ \ 1989.00
    \ \ \ \ 33.00 \ perl

    97398 \ \ \ 39.00 \ \ 20.00 \ \ \ 59.00 \ \ \ \ 0 \ \ \ \ 2010.00
    \ \ \ \ 38.00 \ perl

    97399 \ \ \ 37.00 \ \ 22.00 \ \ \ 59.00 \ \ \ \ 0 \ \ \ \ 2061.00
    \ \ \ \ 42.00 \ perl

    97400 \ \ \ 43.00 \ \ 16.00 \ \ \ 59.00 \ \ \ \ 0 \ \ \ \ 2006.00
    \ \ \ \ 34.00 \ perl

    97401 \ \ \ 43.00 \ \ 13.00 \ \ \ 56.00 \ \ \ \ 0 \ \ \ \ 2031.00
    \ \ \ \ 25.00 \ perl

    97402 \ \ \ 32.00 \ \ 13.00 \ \ \ 45.00 \ \ \ \ 0 \ \ \ \ 1407.00
    \ \ \ \ 23.00 \ perl

    97403 \ \ \ 27.00 \ \ 15.00 \ \ \ 42.00 \ \ \ \ 0 \ \ \ \ 1236.00
    \ \ \ \ 30.00 \ perl

    97404 \ \ \ 34.00 \ \ 12.00 \ \ \ 46.00 \ \ \ \ 0 \ \ \ \ 1245.00
    \ \ \ \ 26.00 \ perl

    97405 \ \ \ 29.00 \ \ 15.00 \ \ \ 44.00 \ \ \ \ 0 \ \ \ \ \ 969.00
    \ \ \ \ 39.00 \ perl

    97406 \ \ \ 30.00 \ \ 12.00 \ \ \ 42.00 \ \ \ \ 0 \ \ \ \ \ 791.00
    \ \ \ \ 21.00 \ perl

    97407 \ \ \ 30.00 \ \ 15.00 \ \ \ 45.00 \ \ \ \ 0 \ \ \ \ 1250.00
    \ \ \ \ 31.00 \ perl

    97408 \ \ \ 31.00 \ \ 15.00 \ \ \ 46.00 \ \ \ \ 0 \ \ \ \ 1471.00
    \ \ \ \ 34.00 \ perl

    97409 \ \ \ 32.00 \ \ 18.00 \ \ \ 50.00 \ \ \ \ 0 \ \ \ \ 1391.00
    \ \ \ \ 36.00 \ perl

    97410 \ \ \ 31.00 \ \ 13.00 \ \ \ 44.00 \ \ \ \ 0 \ \ \ \ 1346.00
    \ \ \ \ 24.00 \ perl

    97411 \ \ \ 22.00 \ \ 11.00 \ \ \ 33.00 \ \ \ \ 0 \ \ \ \ \ 586.00
    \ \ \ \ 25.00 \ perl

    97412 \ \ \ 29.00 \ \ 10.00 \ \ \ 39.00 \ \ \ \ 0 \ \ \ \ \ 786.00
    \ \ \ \ 18.00 \ perl

    97413 \ \ \ 22.00 \ \ 13.00 \ \ \ 35.00 \ \ \ \ 0 \ \ \ \ \ 757.00
    \ \ \ \ 20.00 \ perl

    97414 \ \ \ 25.00 \ \ 11.00 \ \ \ 36.00 \ \ \ \ 0 \ \ \ \ \ 827.00
    \ \ \ \ 21.00 \ perl

    97415 \ \ \ 25.00 \ \ 10.00 \ \ \ 35.00 \ \ \ \ 0 \ \ \ \ \ 685.00
    \ \ \ \ 24.00 \ perl

    97416 \ \ \ 26.00 \ \ 12.00 \ \ \ 38.00 \ \ \ \ 0 \ \ \ \ \ 841.00
    \ \ \ \ 24.00 \ perl

    97417 \ \ \ 28.00 \ \ 12.00 \ \ \ 40.00 \ \ \ \ 0 \ \ \ \ 1117.00
    \ \ \ \ 22.00 \ perl

    97418 \ \ \ 27.00 \ \ 14.00 \ \ \ 41.00 \ \ \ \ 0 \ \ \ \ 1001.00
    \ \ \ \ 23.00 \ perl

    97419 \ \ \ 28.00 \ \ 11.00 \ \ \ 39.00 \ \ \ \ 0 \ \ \ \ 1007.00
    \ \ \ \ 22.00 \ perl

    97420 \ \ \ 23.00 \ \ 15.00 \ \ \ 38.00 \ \ \ \ 0 \ \ \ \ \ 820.00
    \ \ \ \ 30.00 \ perl

    97421 \ \ \ 15.00 \ \ 10.00 \ \ \ 25.00 \ \ \ \ 0 \ \ \ \ \ 533.00
    \ \ \ \ 18.00 \ perl

    97422 \ \ \ \ 0.00 \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0 \ \ \ \ \ \ \ 3.00
    \ \ \ \ \ 4.00 \ perl

    97423 \ \ \ \ 0.00 \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0 \ \ \ \ \ \ \ 3.00
    \ \ \ \ \ 4.00 \ perl

    \;

    \;
  </verbatim>

  <appendix|Perl POE Framework Example>

  <\example>
    Sessions and the Kernel in Perl POE

    The following example is a very short session (and almost unchanged part
    of the Multipath VPN code). It knows 3 events:\ 

    <\enumerate>
      <item><strong|_start><space|1em>(the initialisation event)

      <item><strong|partial_init_step_completed><space|1em>(gets \Pcalled\Q
      when an initialisation step is completed)

      <item><strong|harakiri><space|1em>(de-initialise the session)
    </enumerate>

    The purpose of this Session is to notify the outside world, when
    Multipath VPN has set up all necessary networking resources and is
    working. For this 2 partial_init_step_completed events have to be
    dispatched, then a systemd-notification via the <verbatim|systemd-notify>
    shell utility will be executed. But now lets look at the Code:

    <\shell-code>
      <with|color|blue|# Sessions are created via:>

      POE::Session-\<gtr\>create(

      \ \ \ \ # Events are called inline_states in POE

      \ \ \ \ inline_states =\<gtr\> {

      \ \ \ \ \ \ \ \ <with|color|blue|# the _start event and its handler
      subroutine>

      \ \ \ \ \ \ \ \ <with|color|blue|# sub returns an anonymous function
      which is the event handler here.>

      \ \ \ \ \ \ \ \ _start =\<gtr\> sub {

      \ \ \ \ \ \ \ \ \ \ \ \ # store a reference to this session in the
      global variable

      \ \ \ \ \ \ \ \ \ \ \ \ $systemd_event_session = $_[SESSION];

      \ \ \ \ \ \ \ \ },

      \ \ \ \ \ \ \ \ <with|color|blue|# the partial_init_step_completed
      event and its handler.>

      \ \ \ \ \ \ \ \ partial_init_step_completed =\<gtr\> sub {

      \ \ \ \ \ \ \ \ \ \ \ \ my ( $kernel, $heap ) = @_[ KERNEL, HEAP ];

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ # increment the step counter

      \ \ \ \ \ \ \ \ \ \ \ \ $heap-\<gtr\>{init_step_counter}++ ;

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ if ( 2 \<less\>=
      $heap-\<gtr\>{init_step_counter} ) {

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ <with|color|blue|# Here the
      initialization is complete and systemd gets>

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ system("systemd-notify --ready");

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ # kill this now useless session

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ <with|color|blue| # Here we create an
      event and notify the kernel.>

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ <with|color|blue| # yield means "send the
      following event" to the session>

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ <with|color|blue| \ # we are currently in.
      As described above the kernel is>

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ <with|color|blue| # involved in the
      handling of every event.>

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ $kernel-\<gtr\>yield("harakiri");

      \ \ \ \ \ \ \ \ \ \ \ \ }

      \ \ \ \ \ \ \ \ },

      \ \ \ \ \ \ \ \ harakiri =\<gtr\> sub {

      \ \ \ \ \ \ \ \ \ \ \ \ # Actually no de-initialization code is needed
      here

      \ \ \ \ \ \ \ \ \ \ \ \ # because POE cleans up uneeded sessions
      automatically

      \ \ \ \ \ \ \ \ }

      \ \ \ \ }

      );
    </shell-code>
  </example>

  <appendix|Content of the Accompanying Disk>

  Due to limitations of the compact disk file system (in regards to file name
  length and directory depth) the disk contains one big tar archive. On unix
  systems it can be unpacked using:

  <verbatim|tar x -f BA_Anhang.tar>

  On windows it can be unpacked using the free software <verbatim|7zip>.

  \;

  The archive contains several folders the two most important ones are:\ 

  <\description>
    <item*|Websites>Contains snapshots all online resources

    <item*|Experimente>Contains the measured data of all experiments. Traffic
    dumps as well as generated diagrams and output of the performance
    measurements tools.\ 
  </description>

  <appendix|Acknowledgements>

  After finishing this work I want to thank several people and entities:

  <\enumerate>
    <item>Oliver Schoen and the company Inacon

    For letting me use the diagram of TCP Fast retransmit of their teaching
    material in my work.

    <item>The Hackerspace Openlab Augsburg.

    For lending me the professional Gigabit switch supporting tagged VLANs,
    used in the refined experiments

    <item>One important archaeology studying friend.

    Since she gave me personal backing and brought me food during the
    experiments.
  </enumerate>

  <\bibliography|bib|tm-alpha|bibliography.bib>
    <\bib-list|24>
      <bibitem*|15><label|bib-man-tcp>Linux<nbsp>Man<nbsp>Pages<nbsp>Project
      .<newblock> <with|font-shape|italic|Linux Programmers Manuel - TCP (man
      7 tcp)>.<newblock> 12 2015.<newblock>

      <bibitem*|APS99><label|bib-allman.paxson.stevens_2581rfc99>M.<nbsp>Allman,
      V.<nbsp>Paxson<localize|, and >W.<nbsp>Stevens.<newblock> RFC 2581: TCP
      congestion control.<newblock> 1999.<newblock>

      <bibitem*|BAR+><label|bib-beckecomparison>Martin Becke, Hakim Adhari,
      Erwin<nbsp>P Rathgeb, Fu Fa, Xiong Yang<localize|, and >Xing
      Zhou.<newblock> Comparison of multipath tcp and cmt-sctp based on
      intercontinental measurements.<newblock>

      <bibitem*|Ben06><label|bib-benvenuti2006>Christian Benvenuti.<newblock>
      <with|font-shape|italic|Understanding Linux network
      internals>.<newblock> O'Reilly, Sebastapol, Calif, 2006.<newblock>

      <bibitem*|BHL+06><label|bib-bohacek2006new>Stephan Bohacek, Joao<nbsp>P
      Hespanha, Junsoo Lee, Chansook Lim<localize|, and >Katia
      Obraczka.<newblock> A new tcp for persistent packet
      reordering.<newblock> <with|font-shape|italic|IEEE/ACM Transactions on
      Networking (TON)>, 14(2):369\U382, 2006.<newblock>

      <bibitem*|Bon13><label|bib-mptcp-slides>Olivier Bonaventure.<newblock>
      Decoupling tcp from ip with multipath tcp.<newblock> 2013.<newblock>

      <bibitem*|Chr12><label|bib-christiansen2012programming>Tom
      Christiansen.<newblock> <with|font-shape|italic|Programming
      Perl>.<newblock> O'Reilly, Sebastopol, CA, 2012.<newblock>

      <bibitem*|dSF><label|bib-linux-packet-processing>Bart
      de<nbsp>Schymer<localize| and >Nick Fedchick.<newblock>
      Ebtables/iptables interaction on a linux-based bridge.<newblock>
      <slink|http://ebtables.netfilter.org/br_fw_ia/br_fw_ia.html>.<newblock>

      <bibitem*|Gmb><label|bib-alix-boxes-doc>PC<nbsp>Engines GmbH.<newblock>
      Alix boxes homepage.<newblock> <slink|http://www.pcengines.ch/alix2d2.htm>.<newblock>

      <bibitem*|Gmb13><label|bib-2013anordnung>Viprinet<nbsp>Europe
      Gmbh.<newblock> Anordnung zum übermitteln eines datenstroms über
      gebündelte netzwerkzugangsleitungen, sowie sende- und
      empfangshilfsvorrichtung dafür.<newblock>
      https://www.google.com/patents/DE202008018396U1?cl=de, <nbsp>11
      2013.<newblock> DE Patent 202,008,018,396.<newblock>

      <bibitem*|HA10><label|bib-haldar2010operating>S.<nbsp>Haldar<localize|
      and >A.A.<nbsp>Aravind.<newblock> <with|font-shape|italic|Operating
      Systems>.<newblock> Pearson, 2010.<newblock>

      <bibitem*|Ins81><label|bib-isi_793rfc81>Information<nbsp>Sciences
      Institute.<newblock> RFC 793.<newblock> 1981.<newblock> Edited by Jon
      Postel. Available at http://rfc.sunsite.dk/rfc/rfc793.html.<newblock>

      <bibitem*|Kri><label|bib-sliding_window_webdoc>John Kristoff.<newblock>
      The transmission control protocoll.<newblock>
      <slink|http://condor.depaul.edu/jkristof/technotes/tcp.html>.<newblock>

      <bibitem*|Ran><label|bib-sctp-nat>Irene<nbsp>Ruengeler Randall R.
      Stewart, Michael Tuexen.<newblock> Stream control transmission protocol
      (sctp) network address translation support.<newblock>

      <bibitem*|Riv><label|bib-linux-networking-overview>Raoul
      Rivas.<newblock> Linux kernel networking - some introductorily
      slides.<newblock>

      <bibitem*|Ros13><label|bib-rosen2013linux>R.<nbsp>Rosen.<newblock>
      <with|font-shape|italic|Linux Kernel Networking: Implementation and
      Theory>.<newblock> Books for professionals by professionals. Apress,
      2013.<newblock>

      <bibitem*|Sar02><label|bib-sarolahti2002linux>Pasi Sarolahti.<newblock>
      Linux tcp.<newblock> <with|font-shape|italic|Nokia Research Centre>,
      2002.<newblock>

      <bibitem*|SFR04><label|bib-stevens2004unix>W.R.<nbsp>Stevens,
      B.<nbsp>Fenner<localize|, and >A.M.<nbsp>Rudoff.<newblock>
      <with|font-shape|italic|UNIX Network Programming>.<newblock>
      <localize|Number> v. 1<localize| in >Addison-Wesley professional
      computing series. Addison-Wesley, 2004.<newblock>

      <bibitem*|Sny><label|bib-linux-packet-processing-img>Joshua
      Snyder.<newblock> Packetflow.<newblock>
      <slink|http://ebtables.netfilter.org/br_fw_ia/PacketFlow.png>.<newblock>

      <bibitem*|Ste93><label|bib-Stevens:1993:TIP>W.<nbsp>Richard
      Stevens.<newblock> <with|font-shape|italic|TCP/IP Illustrated (Vol. 1):
      The Protocols>.<newblock> Addison-Wesley Longman Publishing Co., Inc.,
      Boston, MA, USA, 1993.<newblock>

      <bibitem*|Ste07><label|bib-RFC4960>R.<nbsp>Stewart.<newblock> Stream
      control transmission protocol.<newblock> Rfc 4960, RFC Editor,
      September 2007.<newblock> <slink|http://www.rfc-editor.org/rfc/rfc4960.txt>.<newblock>

      <bibitem*|Tan03><label|bib-tanenbaum2003computer>Andrew<nbsp>S
      Tanenbaum.<newblock> Computer networks, 4-th edition.<newblock>
      <with|font-shape|italic|Ed: Prentice Hall>, 2003.<newblock>

      <bibitem*|tun><label|bib-tuntap-linux>Linux kernel documentation on tun
      and tap devices.<newblock> Documentation/networking/tuntap.txt file in
      Linux source tree.<newblock>

      <bibitem*|WCB07><label|bib-wu2007performance>Wenji Wu, Matt
      Crawford<localize|, and >Mark Bowden.<newblock> The performance
      analysis of linux networking\Upacket receiving.<newblock>
      <with|font-shape|italic|Computer Communications>, 30(5):1044\U1057,
      2007.<newblock>
    </bib-list>
  </bibliography>

  <\list-of-figures|figure>
    <glossary-1|Example of a 2-gateway Multipath Tunneling network
    setup.|<pageref|auto-5>>

    <glossary-1|Diagram of the viprinet network(Fig.1) and
    encapsulation(Fig.2) concepts from the patent. |<pageref|auto-12>>

    <glossary-1|Multipath TCP Network Layout|<pageref|auto-17>>

    <glossary-1|The Network architecture of the Experiment|<pageref|auto-28>>

    <glossary-1|Photography of the Breadboard construction. (A concrete
    realisation of the testing network architecture in Figure
    <reference|experiment-architecture>)|<pageref|auto-30>>

    <glossary-1|Processing of Packets in the Linux Kernel (simplified)
    [<write|bib|linux-packet-processing><reference|bib-linux-packet-processing>]
    [<write|bib|linux-packet-processing-img><reference|bib-linux-packet-processing-img>]|<pageref|auto-33>>

    <glossary-1|Explorative Experiment 1: full bidirectional Network I/O
    Graph, Y-Axis in Bytes I/O (payload) per second|<pageref|auto-37>>

    <glossary-1|Explorative Experiment 1: bidirectional I/O Graph zoomed
    time-range : Second 16 to 28|<pageref|auto-38>>

    <glossary-1|Wireshark screenshot: packet details in previously discussed
    time-range.|<pageref|auto-39>>

    <glossary-1|Explorative Experiment 2: Bidirectional I/O
    Graph|<pageref|auto-41>>

    <glossary-1|Example of a simple TCP Connection|<pageref|auto-47>>

    <glossary-1|Illustration of the sliding window
    principle[<write|bib|sliding_window_webdoc><reference|bib-sliding_window_webdoc>]|<pageref|auto-51>>

    <glossary-1|Illustration of the Fast Retransmit
    mechanics.[frt]|<pageref|auto-56>>

    <glossary-1|Example of Fast Retransmit in network traffic. (Measured in
    wireshark)|<pageref|auto-57>>

    <glossary-1|Diagram of the network interfaces and resources used by
    Multipath VPN|<pageref|auto-64>>

    <glossary-1|A Simplified Comparison of tun/tap Interfaces to Conventional
    Network Interfaces|<pageref|auto-67>>

    <glossary-1|Photography of the refined Experiment
    Setup|<pageref|auto-78>>

    <glossary-1|Ascii art diagram of the refined test network
    architecture|<pageref|auto-79>>

    <glossary-1|CPU Time Usage over Time on MTS and MTC compared Side by
    Side|<pageref|auto-99>>

    <glossary-1|Side by Side comparison of CPU Time Usage on Tunnel Exit
    (MTS) and Data Throughput|<pageref|auto-104>>

    <glossary-1|Throughput over time when disconnection one uplink for 20
    seconds|<pageref|auto-114>>

    <glossary-1|Network Throughput Diagram, Without any TCP
    Options|<pageref|auto-122>>

    <glossary-1|Network Throughput Diagram, with Sender side modifications:
    tcp_reordering=15 and tcp_fack disabled|<pageref|auto-123>>

    <glossary-1|Network Throughput Diagram, with Sender and Receiver-side
    modifications: tcp_reordering=15 and tcp_fack
    disabled|<pageref|auto-124>>
  </list-of-figures>
</body>

<\initial>
  <\collection>
    <associate|info-flag|short>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-orientation|portrait>
    <associate|page-screen-margin|false>
    <associate|page-type|a4>
    <associate|page-width|auto>
    <associate|preamble|false>
    <associate|src-style|angular>
  </collection>
</initial>

<\attachments>
  <\collection>
    <\associate|bib-bibliography>
      <\db-entry|+SqkuGQvgUfkLe|book|Stevens:1993:TIP>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455694090>
      <|db-entry>
        <db-field|author|W. Richard <name|Stevens>>

        <db-field|title|TCP/IP Illustrated (Vol. 1): The Protocols>

        <db-field|publisher|Addison-Wesley Longman Publishing Co., Inc.>

        <db-field|year|1993>

        <db-field|address|Boston, MA, USA>

        <db-field|isbn|0-201-63346-9>
      </db-entry>

      <\db-entry|+f0YudrgiXZExWq|misc|2013anordnung>
        <db-field|newer|+XGqanJyuFlA7ow>

        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455506532>
      <|db-entry>
        <db-field|author|Viprinet Europe <name|Gmbh>>

        <db-field|title|Anordnung zum übermitteln eines datenstroms über
        gebündelte netzwerkzugangsleitungen, sowie sende- und
        empfangshilfsvorrichtung dafür>

        <db-field|howpublished|https://www.google.com/patents/DE202008018396U1?cl=de>

        <db-field|month|<nbsp>11>

        <db-field|year|2013>

        <db-field|note|DE Patent 202,008,018,396>

        <db-field|publisher|Google Patents>
      </db-entry>

      <\db-entry|+XGqanJyuFlA7os|article|mptcp-slides>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1448161749>
      <|db-entry>
        <db-field|author|Olivier <name|Bonaventure>>

        <db-field|title|Decoupling tcp from ip with multipath tcp>

        <db-field|year|2013>

        <db-field|optkey|>

        <db-field|optvolume|>

        <db-field|optnumber|>

        <db-field|optpages|>

        <db-field|optmonth|March>

        <db-field|optnote|Available on multipath-tcp.org>

        <db-field|optannote|>
      </db-entry>

      <\db-entry|+jVcx4n4zgl6L2e|article|beckecomparison>
        <db-field|newer|+jVcx4n4zgl6L2d>

        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1454201534>
      <|db-entry>
        <db-field|author|Martin <name|Becke><name-sep>Hakim
        <name|Adhari><name-sep>Erwin P <name|Rathgeb><name-sep>Fu
        <name|Fa><name-sep>Xiong <name|Yang><name-sep>Xing <name|Zhou>>

        <db-field|title|Comparison of multipath tcp and cmt-sctp based on
        intercontinental measurements>
      </db-entry>

      <\db-entry|+jVcx4n4zgl6L2f|techreport|RFC4960>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1454202702>
      <|db-entry>
        <db-field|author|R. <name|Stewart>>

        <db-field|title|Stream control transmission protocol>

        <db-field|institution|RFC Editor>

        <db-field|year|2007>

        <db-field|number|4960>

        <db-field|month|September>

        <db-field|note|<slink|http://www.rfc-editor.org/rfc/rfc4960.txt>>

        <db-field|howpublished|Internet Requests for Comments>

        <db-field|type|rfc>

        <db-field|issn|2070-1721>

        <db-field|publisher|RFC Editor>

        <db-field|url|<slink|http://www.rfc-editor.org/rfc/rfc4960.txt>>
      </db-entry>

      <\db-entry|+jVcx4n4zgl6L2g|misc|sctp-nat>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1454204227>
      <|db-entry>
        <db-field|author|Irene Ruengeler <name|Randall R. Stewart>
        <name-jr|Michael Tuexen>>

        <db-field|title|Stream control transmission protocol (sctp) network
        address translation support>
      </db-entry>

      <\db-entry|+f0YudrgiXZExWp|misc|alix-boxes-doc>
        <db-field|newer|+XGqanJyuFlA7oz>

        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455506356>
      <|db-entry>
        <db-field|author|PC Engines <name|GmbH>>

        <db-field|title|Alix boxes homepage>

        <db-field|howpublished|<slink|http://www.pcengines.ch/alix2d2.htm>>
      </db-entry>

      <\db-entry|+f0YudrgiXZExWj|misc|linux-packet-processing>
        <db-field|newer|+f0YudrgiXZExWi>

        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455497650>
      <|db-entry>
        <db-field|author|Bart <name-von|de> <name|Schymer><name-sep>Nick
        <name|Fedchick>>

        <db-field|title|Ebtables/iptables interaction on a linux-based
        bridge>

        <db-field|howpublished|<slink|http://ebtables.netfilter.org/br_fw_ia/br_fw_ia.html>>
      </db-entry>

      <\db-entry|+f0YudrgiXZExWl|misc|linux-packet-processing-img>
        <db-field|newer|+f0YudrgiXZExWk>

        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455497799>
      <|db-entry>
        <db-field|author|Joshua <name|Snyder>>

        <db-field|title|Packetflow>

        <db-field|howpublished|<slink|http://ebtables.netfilter.org/br_fw_ia/PacketFlow.png>>
      </db-entry>

      <\db-entry|+f0YudrgiXZExWe|article|tanenbaum2003computer>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455400208>
      <|db-entry>
        <db-field|author|Andrew S <name|Tanenbaum>>

        <db-field|title|Computer networks, 4-th edition>

        <db-field|journal|ed: Prentice Hall>

        <db-field|year|2003>
      </db-entry>

      <\db-entry|+XGqanJyuFlA7p1|misc|isi_793rfc81>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1448161750>
      <|db-entry>
        <db-field|author|Information Sciences <name|Institute>>

        <db-field|title|RFC 793>

        <db-field|year|1981>

        <db-field|note|Edited by Jon Postel. Available at
        http://rfc.sunsite.dk/rfc/rfc793.html>

        <db-field|url|<slink|http://rfc.sunsite.dk/rfc/rfc793.html>>
      </db-entry>

      <\db-entry|+f0YudrgiXZExWo|misc|sliding_window_webdoc>
        <db-field|newer|+f0YudrgiXZExWn>

        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455506191>
      <|db-entry>
        <db-field|author|John <name|Kristoff>>

        <db-field|title|The transmission control protocoll>

        <db-field|howpublished|<slink|http://condor.depaul.edu/jkristof/technotes/tcp.html>>
      </db-entry>

      <\db-entry|+XGqanJyuFlA7p0|misc|allman.paxson.stevens_2581rfc99>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1448161749>
      <|db-entry>
        <db-field|author|M. <name|Allman><name-sep>V.
        <name|Paxson><name-sep>W. <name|Stevens>>

        <db-field|title|RFC 2581: TCP congestion control>

        <db-field|year|1999>
      </db-entry>

      <\db-entry|+3kebRXkj7sDYRN|manual|man-tcp>
        <db-field|newer|+3kebRXkj7sDYRM>

        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455515765>
      <|db-entry>
        <db-field|title|Linux Programmers Manuel - TCP (man 7 tcp)>

        <db-field|author|Linux Man Pages Project>

        <db-field|month|12>

        <db-field|year|2015>

        <db-field|optorganization|>

        <db-field|optaddress|>

        <db-field|optedition|>

        <db-field|optannote|>
      </db-entry>

      <\db-entry|+3kebRXkj7sDYRJ|article|sarolahti2002linux>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455514842>
      <|db-entry>
        <db-field|author|Pasi <name|Sarolahti>>

        <db-field|title|Linux tcp>

        <db-field|journal|Nokia Research Centre>

        <db-field|year|2002>
      </db-entry>

      <\db-entry|+Y4K6v1VGB7fXoI|article|bohacek2006new>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455766586>
      <|db-entry>
        <db-field|author|Stephan <name|Bohacek><name-sep>Joao P
        <name|Hespanha><name-sep>Junsoo <name|Lee><name-sep>Chansook
        <name|Lim><name-sep>Katia <name|Obraczka>>

        <db-field|title|A new tcp for persistent packet reordering>

        <db-field|journal|IEEE/ACM Transactions on Networking (TON)>

        <db-field|year|2006>

        <db-field|volume|14>

        <db-field|number|2>

        <db-field|pages|369\U382>

        <db-field|publisher|IEEE Press>
      </db-entry>

      <\db-entry|+XGqanJyuFlA7or|misc|tuntap-linux>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1448161749>
      <|db-entry>
        <db-field|title|Linux kernel documentation on tun and tap devices>

        <db-field|howpublished|Documentation/networking/tuntap.txt file in
        Linux source tree>
      </db-entry>

      <\db-entry|+Y4K6v1VGB7fXoJ|book|christiansen2012programming>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455780837>
      <|db-entry>
        <db-field|author|Tom <name|Christiansen>>

        <db-field|title|Programming Perl>

        <db-field|publisher|O'Reilly>

        <db-field|year|2012>

        <db-field|address|Sebastopol, CA>

        <db-field|isbn|978-0-596-00492-7>
      </db-entry>

      <\db-entry|+Y4K6v1VGB7fXoK|book|stevens2004unix>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455781532>
      <|db-entry>
        <db-field|author|W.R. <name|Stevens><name-sep>B.
        <name|Fenner><name-sep>A.M. <name|Rudoff>>

        <db-field|title|UNIX Network Programming>

        <db-field|publisher|Addison-Wesley>

        <db-field|year|2004>

        <db-field|number|v. 1>

        <db-field|series|Addison-Wesley professional computing series>

        <db-field|isbn|9780131411555>

        <db-field|lccn|97031761>

        <db-field|url|https://books.google.de/books?id=ptSC4LpwGA0C>
      </db-entry>

      <\db-entry|+XGqanJyuFlA7ox|article|linux-networking-overview>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1448161749>
      <|db-entry>
        <db-field|author|Raoul <name|Rivas>>

        <db-field|title|Linux kernel networking - some introductorily slides>
      </db-entry>

      <\db-entry|+f0YudrgiXZExWc|book|rosen2013linux>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455255350>
      <|db-entry>
        <db-field|author|R. <name|Rosen>>

        <db-field|title|Linux Kernel Networking: Implementation and Theory>

        <db-field|publisher|Apress>

        <db-field|year|2013>

        <db-field|series|Books for professionals by professionals>

        <db-field|isbn|9781430261964>

        <db-field|url|https://books.google.de/books?id=96V4AgAAQBAJ>
      </db-entry>

      <\db-entry|+3kebRXkj7sDYRK|book|haldar2010operating>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455514842>
      <|db-entry>
        <db-field|author|S. <name|Haldar><name-sep>A.A. <name|Aravind>>

        <db-field|title|Operating Systems>

        <db-field|publisher|Pearson>

        <db-field|year|2010>

        <db-field|isbn|9788131730225>

        <db-field|lccn|2009037707>

        <db-field|url|https://books.google.de/books?id=orZ0CLxEMXEC>
      </db-entry>

      <\db-entry|+f0YudrgiXZExWd|article|wu2007performance>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455255350>
      <|db-entry>
        <db-field|author|Wenji <name|Wu><name-sep>Matt
        <name|Crawford><name-sep>Mark <name|Bowden>>

        <db-field|title|The performance analysis of linux networking\Upacket
        receiving>

        <db-field|journal|Computer Communications>

        <db-field|year|2007>

        <db-field|volume|30>

        <db-field|number|5>

        <db-field|pages|1044\U1057>

        <db-field|publisher|Elsevier>
      </db-entry>

      <\db-entry|+Y4K6v1VGB7fXoH|book|benvenuti2006>
        <db-field|contributor|richi>

        <db-field|modus|imported>

        <db-field|date|1455755666>
      <|db-entry>
        <db-field|author|Christian <name|Benvenuti>>

        <db-field|title|Understanding Linux network internals>

        <db-field|publisher|O'Reilly>

        <db-field|year|2006>

        <db-field|address|Sebastapol, Calif>

        <db-field|isbn|978-0596002558>
      </db-entry>
    </associate>
  </collection>
</attachments>

<\references>
  <\collection>
    <associate|Creation_of_artificial_latency|<tuple|3.1.3.1|18>>
    <associate|auto-1|<tuple|1|7>>
    <associate|auto-10|<tuple|2|11>>
    <associate|auto-100|<tuple|7.3.2|45>>
    <associate|auto-101|<tuple|7.3.2.1|45>>
    <associate|auto-102|<tuple|7.3.2.2|45>>
    <associate|auto-103|<tuple|7.3.2.3|45>>
    <associate|auto-104|<tuple|7.4|45>>
    <associate|auto-105|<tuple|7.3.3|46>>
    <associate|auto-106|<tuple|7.3.3.1|46>>
    <associate|auto-107|<tuple|7.3.3.2|46>>
    <associate|auto-108|<tuple|7.3.3.3|46>>
    <associate|auto-109|<tuple|7.4|46>>
    <associate|auto-11|<tuple|3|11>>
    <associate|auto-110|<tuple|7.4|47>>
    <associate|auto-111|<tuple|7.4.1|47>>
    <associate|auto-112|<tuple|7.4.2|47>>
    <associate|auto-113|<tuple|7.4.3|47>>
    <associate|auto-114|<tuple|7.5|47>>
    <associate|auto-115|<tuple|7.4.4|48>>
    <associate|auto-116|<tuple|7.5|49>>
    <associate|auto-117|<tuple|7.5.1|49>>
    <associate|auto-118|<tuple|7.5.2|49>>
    <associate|auto-119|<tuple|7.5.2.1|49>>
    <associate|auto-12|<tuple|2.2|12>>
    <associate|auto-120|<tuple|7.5.2.2|49>>
    <associate|auto-121|<tuple|7.5.3|50>>
    <associate|auto-122|<tuple|7.6|50>>
    <associate|auto-123|<tuple|7.7|50>>
    <associate|auto-124|<tuple|7.8|51>>
    <associate|auto-125|<tuple|7.5|51>>
    <associate|auto-126|<tuple|7.5.3.1|51>>
    <associate|auto-127|<tuple|8|53>>
    <associate|auto-128|<tuple|8.1|53>>
    <associate|auto-129|<tuple|8.2|54>>
    <associate|auto-13|<tuple|3.1|12>>
    <associate|auto-130|<tuple|A|55>>
    <associate|auto-131|<tuple|A.1|55>>
    <associate|auto-132|<tuple|A.2|56>>
    <associate|auto-133|<tuple|B|59>>
    <associate|auto-134|<tuple|C|61>>
    <associate|auto-135|<tuple|D|63>>
    <associate|auto-136|<tuple|3|65>>
    <associate|auto-137|<tuple|WCB07|67>>
    <associate|auto-138|<tuple|WCB07|67>>
    <associate|auto-139|<tuple|WCB07|52>>
    <associate|auto-14|<tuple|3.2|13>>
    <associate|auto-140|<tuple|3|53>>
    <associate|auto-141|<tuple|WCB07|53>>
    <associate|auto-142|<tuple|A.2|54>>
    <associate|auto-143|<tuple|B|57>>
    <associate|auto-144|<tuple|3|59>>
    <associate|auto-145|<tuple|WCB07|61>>
    <associate|auto-15|<tuple|3.2|13>>
    <associate|auto-16|<tuple|1|13>>
    <associate|auto-17|<tuple|2.3|13>>
    <associate|auto-18|<tuple|2|14>>
    <associate|auto-19|<tuple|2.1|14>>
    <associate|auto-2|<tuple|2|9>>
    <associate|auto-20|<tuple|2.2|14>>
    <associate|auto-21|<tuple|3|14>>
    <associate|auto-22|<tuple|3.1|15>>
    <associate|auto-23|<tuple|3.1.1|15>>
    <associate|auto-24|<tuple|3.1.2|15>>
    <associate|auto-25|<tuple|3|17>>
    <associate|auto-26|<tuple|3.1|17>>
    <associate|auto-27|<tuple|3.1.1|17>>
    <associate|auto-28|<tuple|3.1|17>>
    <associate|auto-29|<tuple|3.1.2|18>>
    <associate|auto-3|<tuple|2|9>>
    <associate|auto-30|<tuple|3.2|18>>
    <associate|auto-31|<tuple|3.1.3|18>>
    <associate|auto-32|<tuple|3.1.3.1|18>>
    <associate|auto-33|<tuple|3.3|19>>
    <associate|auto-34|<tuple|3.1.3.2|19>>
    <associate|auto-35|<tuple|3.2|19>>
    <associate|auto-36|<tuple|3.2.1|19>>
    <associate|auto-37|<tuple|3.4|20>>
    <associate|auto-38|<tuple|3.5|20>>
    <associate|auto-39|<tuple|3.6|20>>
    <associate|auto-4|<tuple|1|9>>
    <associate|auto-40|<tuple|3.2.2|21>>
    <associate|auto-41|<tuple|3.7|21>>
    <associate|auto-42|<tuple|3.2.2.1|21>>
    <associate|auto-43|<tuple|3.2.2.2|22>>
    <associate|auto-44|<tuple|3.2.3|22>>
    <associate|auto-45|<tuple|4|23>>
    <associate|auto-46|<tuple|4.1|23>>
    <associate|auto-47|<tuple|4.1|23>>
    <associate|auto-48|<tuple|4.1.1|23>>
    <associate|auto-49|<tuple|4.1.2|24>>
    <associate|auto-5|<tuple|2.1|9>>
    <associate|auto-50|<tuple|4.1.2.1|24>>
    <associate|auto-51|<tuple|4.2|24>>
    <associate|auto-52|<tuple|4.1.2.2|24>>
    <associate|auto-53|<tuple|4.1.3|25>>
    <associate|auto-54|<tuple|4.1.3.1|25>>
    <associate|auto-55|<tuple|4.1.3.2|25>>
    <associate|auto-56|<tuple|4.3|25>>
    <associate|auto-57|<tuple|4.4|26>>
    <associate|auto-58|<tuple|4.1.3.3|26>>
    <associate|auto-59|<tuple|4.2|26>>
    <associate|auto-6|<tuple|1.1|9>>
    <associate|auto-60|<tuple|4.2.1|26>>
    <associate|auto-61|<tuple|4.2.2|27>>
    <associate|auto-62|<tuple|5|29>>
    <associate|auto-63|<tuple|5.1|29>>
    <associate|auto-64|<tuple|5.1|29>>
    <associate|auto-65|<tuple|5.2|29>>
    <associate|auto-66|<tuple|5.2|29>>
    <associate|auto-67|<tuple|5.2|29>>
    <associate|auto-68|<tuple|5.1|30>>
    <associate|auto-69|<tuple|5.2|30>>
    <associate|auto-7|<tuple|2|10>>
    <associate|auto-70|<tuple|5.2.1|30>>
    <associate|auto-71|<tuple|5.3|31>>
    <associate|auto-72|<tuple|6|35>>
    <associate|auto-73|<tuple|6.1|35>>
    <associate|auto-74|<tuple|6.2|35>>
    <associate|auto-75|<tuple|6.2.1|35>>
    <associate|auto-76|<tuple|7|37>>
    <associate|auto-77|<tuple|7.1|37>>
    <associate|auto-78|<tuple|7.1|37>>
    <associate|auto-79|<tuple|7.2|38>>
    <associate|auto-8|<tuple|<with|mode|<quote|math>|\<bullet\>>|10>>
    <associate|auto-80|<tuple|7.1.1|39>>
    <associate|auto-81|<tuple|7.1.1.1|39>>
    <associate|auto-82|<tuple|7.1.1.2|39>>
    <associate|auto-83|<tuple|7.1.1.2.1|39>>
    <associate|auto-84|<tuple|7.1.1.2.2|39>>
    <associate|auto-85|<tuple|7.1.1.3|40>>
    <associate|auto-86|<tuple|7.1.2|40>>
    <associate|auto-87|<tuple|7.2|41>>
    <associate|auto-88|<tuple|7.2.1|41>>
    <associate|auto-89|<tuple|7.1|41>>
    <associate|auto-9|<tuple|1|10>>
    <associate|auto-90|<tuple|7.2.2|41>>
    <associate|auto-91|<tuple|7.2|41>>
    <associate|auto-92|<tuple|7.2.3|41>>
    <associate|auto-93|<tuple|7.3|41>>
    <associate|auto-94|<tuple|7.3|42>>
    <associate|auto-95|<tuple|7.3.1|43>>
    <associate|auto-96|<tuple|7.3.1.1|43>>
    <associate|auto-97|<tuple|7.3.1.2|43>>
    <associate|auto-98|<tuple|7.3.1.3|43>>
    <associate|auto-99|<tuple|7.3|43>>
    <associate|bib-2013anordnung|<tuple|Gmb13|65>>
    <associate|bib-RFC4960|<tuple|Ste07|65>>
    <associate|bib-Stevens:1993:TIP|<tuple|Ste93|65>>
    <associate|bib-alix-boxes-doc|<tuple|Gmb|65>>
    <associate|bib-allman.paxson.stevens_2581rfc99|<tuple|APS99|65>>
    <associate|bib-beckecomparison|<tuple|BAR+|65>>
    <associate|bib-benvenuti2006|<tuple|Ben06|65>>
    <associate|bib-bohacek2006new|<tuple|BHL+06|65>>
    <associate|bib-christiansen2012programming|<tuple|Chr12|65>>
    <associate|bib-haldar2010operating|<tuple|HA10|65>>
    <associate|bib-isi_793rfc81|<tuple|Ins81|65>>
    <associate|bib-linux-networking-overview|<tuple|Riv|65>>
    <associate|bib-linux-packet-processing|<tuple|dSF|65>>
    <associate|bib-linux-packet-processing-img|<tuple|Sny|65>>
    <associate|bib-man-tcp|<tuple|15|65>>
    <associate|bib-mptcp-slides|<tuple|Bon13|65>>
    <associate|bib-rosen2013linux|<tuple|Ros13|65>>
    <associate|bib-sarolahti2002linux|<tuple|Sar02|65>>
    <associate|bib-sctp-nat|<tuple|Ran|65>>
    <associate|bib-sliding_window_webdoc|<tuple|Kri|65>>
    <associate|bib-stevens2004unix|<tuple|SFR04|65>>
    <associate|bib-tanenbaum2003computer|<tuple|Tan03|65>>
    <associate|bib-tuntap-linux|<tuple|tun|65>>
    <associate|bib-wu2007performance|<tuple|WCB07|65>>
    <associate|change-skb-size|<tuple|7.6|50>>
    <associate|changle-skb-size|<tuple|tun|?>>
    <associate|chapter-experiments|<tuple|3|17>>
    <associate|chapter5|<tuple|5|?>>
    <associate|cpu-time-comparison|<tuple|7.3|43>>
    <associate|experiment-architecture|<tuple|3.1|17>>
    <associate|explor-exp-2|<tuple|3.7|21>>
    <associate|explorative-experiment-1|<tuple|3.4|20>>
    <associate|fig8|<tuple|3.3|19>>
    <associate|footnote-1|<tuple|1|13>>
    <associate|footnote-1.1|<tuple|1.1|?>>
    <associate|footnote-1.2|<tuple|1.2|?>>
    <associate|footnote-1.3|<tuple|1.3|?>>
    <associate|footnote-1.4|<tuple|1.4|?>>
    <associate|footnote-1.5|<tuple|1.5|?>>
    <associate|footnote-1.6|<tuple|1.6|?>>
    <associate|footnote-1.7|<tuple|1.7|?>>
    <associate|footnote-1.8|<tuple|1.8|?>>
    <associate|footnote-10|<tuple|10|15>>
    <associate|footnote-11|<tuple|11|16>>
    <associate|footnote-12|<tuple|12|18>>
    <associate|footnote-13|<tuple|13|19>>
    <associate|footnote-14|<tuple|14|20>>
    <associate|footnote-15|<tuple|15|20>>
    <associate|footnote-16|<tuple|16|20>>
    <associate|footnote-17|<tuple|17|22>>
    <associate|footnote-2|<tuple|2|13>>
    <associate|footnote-2.1|<tuple|2.1|11>>
    <associate|footnote-2.10|<tuple|2.10|15>>
    <associate|footnote-2.2|<tuple|2.2|11>>
    <associate|footnote-2.3|<tuple|2.3|11>>
    <associate|footnote-2.4|<tuple|2.4|11>>
    <associate|footnote-2.5|<tuple|2.5|13>>
    <associate|footnote-2.6|<tuple|2.6|13>>
    <associate|footnote-2.7|<tuple|2.7|14>>
    <associate|footnote-2.8|<tuple|2.8|14>>
    <associate|footnote-2.9|<tuple|2.9|14>>
    <associate|footnote-3|<tuple|3|14>>
    <associate|footnote-3.1|<tuple|3.1|18>>
    <associate|footnote-3.1.1|<tuple|3.1.1|18>>
    <associate|footnote-3.1.2|<tuple|3.1.2|18>>
    <associate|footnote-3.10|<tuple|3.10|?>>
    <associate|footnote-3.2|<tuple|3.2|19>>
    <associate|footnote-3.2.1|<tuple|3.2.1|19>>
    <associate|footnote-3.2.2|<tuple|3.2.2|20>>
    <associate|footnote-3.3|<tuple|3.3|19>>
    <associate|footnote-3.4|<tuple|3.4|21>>
    <associate|footnote-3.5|<tuple|3.5|22>>
    <associate|footnote-3.6|<tuple|3.6|?>>
    <associate|footnote-3.7|<tuple|3.7|?>>
    <associate|footnote-3.8|<tuple|3.8|?>>
    <associate|footnote-3.9|<tuple|3.9|?>>
    <associate|footnote-4|<tuple|4|14>>
    <associate|footnote-4.1|<tuple|4.1|23>>
    <associate|footnote-4.1.1|<tuple|4.1.1|23>>
    <associate|footnote-4.1.2|<tuple|4.1.2|23>>
    <associate|footnote-4.1.3|<tuple|4.1.3|23>>
    <associate|footnote-4.1.4|<tuple|4.1.4|25>>
    <associate|footnote-4.2|<tuple|4.2|23>>
    <associate|footnote-4.3|<tuple|4.3|23>>
    <associate|footnote-4.4|<tuple|4.4|25>>
    <associate|footnote-4.5|<tuple|4.5|27>>
    <associate|footnote-5|<tuple|5|14>>
    <associate|footnote-5.1|<tuple|5.1|29>>
    <associate|footnote-5.2|<tuple|5.2|23>>
    <associate|footnote-5.3|<tuple|5.3|23>>
    <associate|footnote-5.3.1|<tuple|5.3.1|34>>
    <associate|footnote-5.4|<tuple|5.4|25>>
    <associate|footnote-6|<tuple|6|15>>
    <associate|footnote-6.1|<tuple|6.1|35>>
    <associate|footnote-6.1.1|<tuple|6.1.1|37>>
    <associate|footnote-6.1.2|<tuple|6.1.2|37>>
    <associate|footnote-6.2|<tuple|6.2|37>>
    <associate|footnote-6.3|<tuple|6.3|41>>
    <associate|footnote-6.3.1|<tuple|6.3.1|41>>
    <associate|footnote-6.4|<tuple|6.4|44>>
    <associate|footnote-6.4.1|<tuple|6.4.1|44>>
    <associate|footnote-6.5|<tuple|6.5|?>>
    <associate|footnote-7|<tuple|7|11>>
    <associate|footnote-7.1|<tuple|7.1|39>>
    <associate|footnote-7.2|<tuple|7.2|39>>
    <associate|footnote-7.3|<tuple|7.3|43>>
    <associate|footnote-7.4|<tuple|7.4|47>>
    <associate|footnote-8|<tuple|8|11>>
    <associate|footnote-9|<tuple|9|15>>
    <associate|footnr-1|<tuple|1|13>>
    <associate|footnr-1.1|<tuple|1.1|?>>
    <associate|footnr-1.2|<tuple|1.2|?>>
    <associate|footnr-1.3|<tuple|1.3|?>>
    <associate|footnr-1.4|<tuple|1.4|?>>
    <associate|footnr-1.5|<tuple|1.5|?>>
    <associate|footnr-1.6|<tuple|1.6|?>>
    <associate|footnr-1.7|<tuple|1.7|?>>
    <associate|footnr-1.8|<tuple|1.8|?>>
    <associate|footnr-10|<tuple|10|15>>
    <associate|footnr-11|<tuple|11|16>>
    <associate|footnr-12|<tuple|12|18>>
    <associate|footnr-13|<tuple|13|19>>
    <associate|footnr-14|<tuple|14|20>>
    <associate|footnr-15|<tuple|15|20>>
    <associate|footnr-16|<tuple|16|20>>
    <associate|footnr-17|<tuple|17|22>>
    <associate|footnr-2|<tuple|2|13>>
    <associate|footnr-2.1|<tuple|2.1|11>>
    <associate|footnr-2.10|<tuple|2.10|15>>
    <associate|footnr-2.2|<tuple|2.2|11>>
    <associate|footnr-2.3|<tuple|2.3|11>>
    <associate|footnr-2.4|<tuple|2.4|11>>
    <associate|footnr-2.5|<tuple|2.5|13>>
    <associate|footnr-2.6|<tuple|2.6|13>>
    <associate|footnr-2.7|<tuple|2.7|13>>
    <associate|footnr-2.8|<tuple|2.8|14>>
    <associate|footnr-2.9|<tuple|2.9|14>>
    <associate|footnr-3|<tuple|3|13>>
    <associate|footnr-3.1|<tuple|3.1|18>>
    <associate|footnr-3.1.1|<tuple|3.1.1|18>>
    <associate|footnr-3.1.2|<tuple|3.1.2|18>>
    <associate|footnr-3.10|<tuple|3.10|?>>
    <associate|footnr-3.2|<tuple|3.2|19>>
    <associate|footnr-3.2.1|<tuple|3.2.1|19>>
    <associate|footnr-3.2.2|<tuple|3.2.2|20>>
    <associate|footnr-3.3|<tuple|3.3|19>>
    <associate|footnr-3.4|<tuple|3.4|21>>
    <associate|footnr-3.5|<tuple|3.5|22>>
    <associate|footnr-3.6|<tuple|3.6|?>>
    <associate|footnr-3.7|<tuple|3.7|?>>
    <associate|footnr-3.8|<tuple|3.8|?>>
    <associate|footnr-3.9|<tuple|3.9|?>>
    <associate|footnr-4|<tuple|4|14>>
    <associate|footnr-4.1|<tuple|4.1|23>>
    <associate|footnr-4.1.1|<tuple|4.1.1|23>>
    <associate|footnr-4.1.2|<tuple|4.1.2|23>>
    <associate|footnr-4.1.3|<tuple|4.1.3|23>>
    <associate|footnr-4.1.4|<tuple|4.1.4|24>>
    <associate|footnr-4.2|<tuple|4.2|23>>
    <associate|footnr-4.3|<tuple|4.3|23>>
    <associate|footnr-4.4|<tuple|4.4|24>>
    <associate|footnr-4.5|<tuple|4.5|27>>
    <associate|footnr-5|<tuple|5|14>>
    <associate|footnr-5.1|<tuple|5.1|29>>
    <associate|footnr-5.2|<tuple|5.2|23>>
    <associate|footnr-5.3|<tuple|5.3|23>>
    <associate|footnr-5.3.1|<tuple|5.3.1|34>>
    <associate|footnr-5.4|<tuple|5.4|24>>
    <associate|footnr-6|<tuple|6|15>>
    <associate|footnr-6.1|<tuple|6.1|35>>
    <associate|footnr-6.1.1|<tuple|6.1.1|37>>
    <associate|footnr-6.1.2|<tuple|6.1.2|37>>
    <associate|footnr-6.2|<tuple|6.2|37>>
    <associate|footnr-6.3|<tuple|6.3|41>>
    <associate|footnr-6.3.1|<tuple|6.3.1|41>>
    <associate|footnr-6.4|<tuple|6.4|44>>
    <associate|footnr-6.4.1|<tuple|6.4.1|44>>
    <associate|footnr-6.5|<tuple|6.5|?>>
    <associate|footnr-7|<tuple|7|11>>
    <associate|footnr-7.1|<tuple|7.1|39>>
    <associate|footnr-7.2|<tuple|7.2|39>>
    <associate|footnr-7.3|<tuple|7.3|43>>
    <associate|footnr-7.4|<tuple|7.4|47>>
    <associate|footnr-8|<tuple|8|11>>
    <associate|footnr-9|<tuple|9|15>>
    <associate|general-test-setup|<tuple|7.1|37>>
    <associate|linux-tcp-options|<tuple|7.5|49>>
    <associate|perf-log-appendix|<tuple|A|55>>
    <associate|pre-measurement-1|<tuple|7.1|41>>
    <associate|pre-measurements|<tuple|7.2.1|41>>
    <associate|ref-net-arch|<tuple|7.2|38>>
    <associate|refined-experiments|<tuple|7|37>>
    <associate|seeking-cause-of-reordering|<tuple|6|35>>
    <associate|tcp-switches-def|<tuple|4.2.1|26>>
    <associate|time-ratio|<tuple|7.4|46>>
    <associate|total-throughput|<tuple|7.5|51>>
    <associate|trafic-cpu-comarison|<tuple|7.4|45>>
    <associate|vlan-conf|<tuple|7.1.1.2|39>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|>
      <tuple|normal|TUN or TAP interface|<pageref|auto-65>>

      <tuple|normal|Conventional Network Interface|<pageref|auto-66>>
    </associate>
    <\associate|bib>
      Stevens:1993:TIP

      2013anordnung

      2013anordnung

      mptcp-slides

      beckecomparison

      RFC4960

      sctp-nat

      alix-boxes-doc

      linux-packet-processing

      linux-packet-processing-img

      linux-packet-processing

      linux-packet-processing-img

      tanenbaum2003computer

      isi_793rfc81

      isi_793rfc81

      isi_793rfc81

      isi_793rfc81

      sliding_window_webdoc

      allman.paxson.stevens_2581rfc99

      allman.paxson.stevens_2581rfc99

      man-tcp

      man-tcp

      sarolahti2002linux

      bohacek2006new

      tuntap-linux

      christiansen2012programming

      christiansen2012programming

      stevens2004unix

      linux-networking-overview

      rosen2013linux

      rosen2013linux

      haldar2010operating

      rosen2013linux

      wu2007performance

      tanenbaum2003computer

      rosen2013linux

      benvenuti2006

      rosen2013linux

      Stevens:1993:TIP

      linux-packet-processing

      linux-packet-processing-img

      sliding_window_webdoc
    </associate>
    <\associate|figure>
      <tuple|normal|Example of a 2-gateway Multipath Tunneling network
      setup.|<pageref|auto-5>>

      <tuple|normal|Diagram of the viprinet network(Fig.1) and
      encapsulation(Fig.2) concepts from the patent. |<pageref|auto-12>>

      <tuple|normal|Multipath TCP Network Layout|<pageref|auto-17>>

      <tuple|normal|The Network architecture of the
      Experiment|<pageref|auto-28>>

      <\tuple|normal>
        Photography of the Breadboard construction. (A concrete realisation
        of the testing network architecture in Figure
        <reference|experiment-architecture>)
      </tuple|<pageref|auto-30>>

      <tuple|normal|Processing of Packets in the Linux Kernel (simplified)
      [<write|bib|linux-packet-processing><reference|bib-linux-packet-processing>]
      [<write|bib|linux-packet-processing-img><reference|bib-linux-packet-processing-img>]|<pageref|auto-33>>

      <tuple|normal|Explorative Experiment 1: full bidirectional Network I/O
      Graph, Y-Axis in Bytes I/O (payload) per second|<pageref|auto-37>>

      <tuple|normal|Explorative Experiment 1: bidirectional I/O Graph zoomed
      time-range : Second 16 to 28|<pageref|auto-38>>

      <tuple|normal|Wireshark screenshot: packet details in previously
      discussed time-range.|<pageref|auto-39>>

      <tuple|normal|Explorative Experiment 2: Bidirectional I/O
      Graph|<pageref|auto-41>>

      <tuple|normal|Example of a simple TCP Connection|<pageref|auto-47>>

      <tuple|normal|Illustration of the sliding window
      principle[<write|bib|sliding_window_webdoc><reference|bib-sliding_window_webdoc>]|<pageref|auto-51>>

      <tuple|normal|Illustration of the Fast Retransmit
      mechanics.[frt]|<pageref|auto-56>>

      <\tuple|normal>
        Example of Fast Retransmit in network traffic. (Measured in
        wireshark)
      </tuple|<pageref|auto-57>>

      <tuple|normal|Diagram of the network interfaces and resources used by
      Multipath VPN|<pageref|auto-64>>

      <tuple|normal|A Simplified Comparison of tun/tap Interfaces to
      Conventional Network Interfaces|<pageref|auto-67>>

      <tuple|normal|Photography of the refined Experiment
      Setup|<pageref|auto-78>>

      <tuple|normal|Ascii art diagram of the refined test network
      architecture|<pageref|auto-79>>

      <tuple|normal|CPU Time Usage over Time on MTS and MTC compared Side by
      Side|<pageref|auto-99>>

      <tuple|normal|Side by Side comparison of CPU Time Usage on Tunnel Exit
      (MTS) and Data Throughput|<pageref|auto-104>>

      <tuple|normal|Throughput over time when disconnection one uplink for 20
      seconds|<pageref|auto-114>>

      <tuple|normal|Network Throughput Diagram, Without any TCP
      Options|<pageref|auto-122>>

      <tuple|normal|Network Throughput Diagram, with Sender side
      modifications: tcp_reordering=15 and tcp_fack
      disabled|<pageref|auto-123>>

      <tuple|normal|Network Throughput Diagram, with Sender and Receiver-side
      modifications: tcp_reordering=15 and tcp_fack
      disabled|<pageref|auto-124>>
    </associate>
    <\associate|table>
      <tuple|normal|TUN and TAP Interfaces|<pageref|auto-68>>

      <tuple|normal|Netto Bandwidth and CPU Load without Tunneling, 1
      Link|<pageref|auto-89>>

      <tuple|normal|Netto Bandwidth and CPU Load without Tunneling, 2 Links,
      measured on MTC|<pageref|auto-91>>

      <tuple|normal|Rough Throughput Values of Network with Multipath-VPN
      enabled|<pageref|auto-93>>

      <\tuple|normal>
        Percentages of User and System Time of the Multipath VPN Perl Process
        in a Network with no Artificial Latency and 100% cpu load of one
        core.
      </tuple|<pageref|auto-109>>

      <tuple|normal|Total Throughput in the three TCP Options experiments,
      compared|<pageref|auto-125>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>OSI
      Layer 3 Link Aggregation Tunneling>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      A Description of a OSI Layer 3 Link Aggregation Tunneling Network Setup
      and its Purpose <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      <with|par-left|<quote|1tab>|1<space|2spc>OSI Layer 3 Link Aggregation
      Tunneling <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|2tab>|1.1<space|2spc>Mechanics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2<space|2spc>Purpose
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      Implementations <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>

      <with|par-left|<quote|1tab>|1<space|2spc>Multipath VPN
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|2<space|2spc>MLVPN
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|3<space|2spc>Viprinet Bonding
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|2tab>|3.1<space|2spc>Network Architecture (Fig.
      1) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|2tab>|3.2<space|2spc>Encapsulation (Fig. 2)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      Related technologies <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>

      <with|par-left|<quote|1tab>|1<space|2spc>Multipath TCP
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|2<space|2spc>SCTP Multihoming
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|2tab>|2.1<space|2spc>SCTP Problems and Drawbacks
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|2tab>|2.2<space|2spc>Conclusion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1tab>|3<space|2spc>Internet-Connection-Load-balancing
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|2tab>|3.1<space|2spc>Comparison to OSI Layer 3
      Link Aggregation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|4tab>|Advantages
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Disadvantages
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>First
      Explorative Experiments> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25><vspace|0.5fn>

      3.1<space|2spc>The Testing Network <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>

      <with|par-left|<quote|1tab>|3.1.1<space|2spc>Network Architecture and
      Overview <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|1tab>|3.1.2<space|2spc>Used Hardware
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|1tab>|3.1.3<space|2spc>Software Configurations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <with|par-left|<quote|2tab>|3.1.3.1<space|2spc>Artificial Latency
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|2tab>|3.1.3.2<space|2spc>Setup of the Multipath
      VPN Software <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      3.2<space|2spc>Results <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>

      <with|par-left|<quote|1tab>|3.2.1<space|2spc>Default Linux Congestion
      Control: Same Latency <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|1tab>|3.2.2<space|2spc> Default Linux Congestion
      Control, 100ms and 200ms Latency <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|2tab>|3.2.2.1<space|2spc>Throughput Analysis
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|2tab>|3.2.2.2<space|2spc>Reordering Analysis
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|1tab>|3.2.3<space|2spc>Summary and Next Steps
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>The
      TCP Protocol and its Vulnerability to Packet Reordering>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45><vspace|0.5fn>

      4.1<space|2spc>A Short Description of the TCP Protocol
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>

      <with|par-left|<quote|1tab>|4.1.1<space|2spc>Reliability
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|1tab>|4.1.2<space|2spc>Flow Control and
      Congestion Control <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      <with|par-left|<quote|2tab>|4.1.2.1<space|2spc>The Sliding Window
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|2tab>|4.1.2.2<space|2spc>The Size of the Sliding
      Windows (Congestion Control and Flow Control)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      <with|par-left|<quote|1tab>|4.1.3<space|2spc>TCP Extensions: Fast
      Retransmit <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      <with|par-left|<quote|2tab>|4.1.3.1<space|2spc>Changes on Receiver Site
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|2tab>|4.1.3.2<space|2spc>Changes on Sender Site
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|2tab>|4.1.3.3<space|2spc>Discussion of Advantages
      and Disadvantages <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      4.2<space|2spc>Ways to Make the Linux TCP Implementation Less
      Vulnerable to Packet Reordering <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>

      <with|par-left|<quote|1tab>|4.2.1<space|2spc>Configuration via
      <with|font-family|<quote|tt>|language|<quote|verbatim>|/proc/sys/net/>
      Switches <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      <with|par-left|<quote|1tab>|4.2.2<space|2spc>A New TCP for Persistent
      Packet Reordering <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>A
      Closer Analysis of the Multipath VPN Implementation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62><vspace|0.5fn>

      5.1<space|2spc>Involved Networking Resources
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>

      5.2<space|2spc>The Event Driven Design
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>

      <with|par-left|<quote|1tab>|5.2.1<space|2spc>The Perl POE Framework
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70>>

      5.3<space|2spc>Working <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Seeking
      the Cause of Reordering> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-72><vspace|0.5fn>

      6.1<space|2spc>Multipath VPN Implementation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-73>

      6.2<space|2spc>Linux IO Buffering and Scheduling
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-74>

      <with|par-left|<quote|1tab>|6.2.1<space|2spc>Avoidability of Operating
      System Buffering induced Reordering
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-75>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Refined
      Experiments> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-76><vspace|0.5fn>

      7.1<space|2spc>Test Setup and Hardware
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-77>

      <with|par-left|<quote|1tab>|7.1.1<space|2spc>Differences to First
      Explorative Experiments <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-80>>

      <with|par-left|<quote|2tab>|7.1.1.1<space|2spc>Omitted \PInternet\Q
      Gateway Routers IG0 and IG1 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-81>>

      <with|par-left|<quote|2tab>|7.1.1.2<space|2spc>VLANs Instead of
      Physical Networks and Ethernet Cards
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-82>>

      <with|par-left|<quote|4tab>|Tagged VLANs Explanation and Configuration
      Details <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-83><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Throughput or Performance Impacts
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-84><vspace|0.15fn>>

      <with|par-left|<quote|2tab>|7.1.1.3<space|2spc>More Capable Hardware
      for MTC and MTS <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-85>>

      <with|par-left|<quote|1tab>|7.1.2<space|2spc>About the Traffic Used to
      Measure <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-86>>

      7.2<space|2spc>Pre Measurements <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-87>

      <with|par-left|<quote|1tab>|7.2.1<space|2spc>Pre-Measurement without
      Tunneling Daemon, 1 Link <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-88>>

      <with|par-left|<quote|1tab>|7.2.2<space|2spc>Pre-Measurement without
      Tunneling Daemon, 2 Links <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-90>>

      <with|par-left|<quote|1tab>|7.2.3<space|2spc>Pre-Measurement
      Multipath-vpn, 2 Links, without tcpdump
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-92>>

      7.3<space|2spc>Results on CPU Performance (I)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-94>

      <with|par-left|<quote|1tab>|7.3.1<space|2spc>Comparison of CPU Time
      Usage on MTC and on MTS (I) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-95>>

      <with|par-left|<quote|2tab>|7.3.1.1<space|2spc>Goals
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-96>>

      <with|par-left|<quote|2tab>|7.3.1.2<space|2spc>What we Did
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-97>>

      <with|par-left|<quote|2tab>|7.3.1.3<space|2spc>Results and
      Interpretation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-98>>

      <with|par-left|<quote|1tab>|7.3.2<space|2spc>Correlation between
      Throughput and CPU Time (II) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-100>>

      <with|par-left|<quote|2tab>|7.3.2.1<space|2spc>Goals
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-101>>

      <with|par-left|<quote|2tab>|7.3.2.2<space|2spc>What we Did
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-102>>

      <with|par-left|<quote|2tab>|7.3.2.3<space|2spc>Results and
      Interpretation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-103>>

      <with|par-left|<quote|1tab>|7.3.3<space|2spc>Differentiated CPU Usage
      Analysis (III) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-105>>

      <with|par-left|<quote|2tab>|7.3.3.1<space|2spc>Goals
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-106>>

      <with|par-left|<quote|2tab>|7.3.3.2<space|2spc>What we Did
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-107>>

      <with|par-left|<quote|2tab>|7.3.3.3<space|2spc>Results and
      Interpretation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-108>>

      7.4<space|2spc>Results on Connection Stability (II)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-110>

      <with|par-left|<quote|1tab>|7.4.1<space|2spc>Goals
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-111>>

      <with|par-left|<quote|1tab>|7.4.2<space|2spc>What we did
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-112>>

      <with|par-left|<quote|1tab>|7.4.3<space|2spc>Results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-113>>

      <with|par-left|<quote|1tab>|7.4.4<space|2spc>Evaluation and
      Interpretation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-115>>

      7.5<space|2spc>Results of Changing Linux Internal TCP Options (III)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-116>

      <with|par-left|<quote|1tab>|7.5.1<space|2spc>Goals
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-117>>

      <with|par-left|<quote|1tab>|7.5.2<space|2spc>What we did
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-118>>

      <with|par-left|<quote|2tab>|7.5.2.1<space|2spc>Series 1: Only Changing
      Sender TCP Configuration <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-119>>

      <with|par-left|<quote|2tab>|7.5.2.2<space|2spc>Series 2: Changing
      Sender and Receiver Configuration <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-120>>

      <with|par-left|<quote|1tab>|7.5.3<space|2spc>Results and Interpretation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-121>>

      <with|par-left|<quote|2tab>|7.5.3.1<space|2spc>Explanation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-126>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Conclusion>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-127><vspace|0.5fn>

      8.1<space|2spc>Evaluation Summary and Optimisation Possibilities
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-128>

      8.2<space|2spc>About the Application Domain
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-129>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      A<space|2spc>Detailed Performance Measurement Results>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-130><vspace|0.5fn>

      A.1<space|2spc>MTS: 100ms_200ms latency
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-131>

      A.2<space|2spc>MTC: 100ms_200ms latency
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-132>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      B<space|2spc>Perl POE Framework Example>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-133><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      C<space|2spc>Content of the Accompanying Disk>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-134><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      D<space|2spc>Acknowledgements> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-135><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-136><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|List
      of figures> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-137><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>