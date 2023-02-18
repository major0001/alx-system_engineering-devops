# Firewall – meaning and definition
A firewall is a computer network security system that restricts internet traffic in to, out of, or within a private network.

This software or dedicated hardware-software unit functions by selectively blocking or allowing data packets. It is typically intended to help prevent malicious activity and to prevent anyone—inside or outside a private network—from engaging in unauthorized web activities.

# What is a firewall?
Firewalls can be viewed as gated borders or gateways that manage the travel of permitted and prohibited web activity in a private network. The term comes from the concept of physical walls being barriers to slow the spread of fire until emergency services can extinguish it. By comparison, network security firewalls are for web traffic management — typically intended to slow the spread of web threats.

Firewalls create 'choke points' to funnel web traffic, at which they are then reviewed on a set of programmed parameters and acted upon accordingly. Some firewalls also track the traffic and connections in audit logs to reference what has been allowed or blocked.

Firewalls are typically used to gate the borders of a private network or its host devices. As such, firewalls are one security tool in the broader category of user access control. These barriers are typically set up in two locations — on dedicated computers on the network or the user computers and other endpoints themselves (hosts).

How do firewalls work?
A firewall decides which network traffic is allowed to pass through and which traffic is deemed dangerous. Essentially, it works by filtering out the good from the bad, or the trusted from the untrusted. However, before we go into detail, it helps to understand the structure of web-based networks.

Firewalls are intended to secure private networks and the endpoint devices within them, known as network hosts. Network hosts are devices that ‘talk’ with other hosts on the network. They send and receive between internal networks, as well as outbound and inbound between external networks.

Computers and other endpoint devices use networks to access the internet and each other. However, the internet is segmented into sub-networks or 'subnets' for security and privacy. The basic subnet segments are as follows:

External public networks typically refer to the public/global internet or various extranets.
Internal private network defines a home network, corporate intranets, and other ‘closed’ networks.
Perimeter networks detail border networks made of bastion hosts — computer hosts dedicated with hardened security that are ready to endure an external attack. As a secured buffer between internal and external networks, these can also be used to house any external-facing services provided by the internal network (i.e., servers for web, mail, FTP, VoIP, etc.). These are more secure than external networks but less secure than internal. These are not always present in simpler networks like home networks but may often be used in organizational or national intranets.
Screening routers are specialized gateway computers placed on a network to segment it. They are known as house firewalls on the network-level. The two most common segment models are the screened host firewall and the screened subnet firewall:

Screened host firewalls use a single screening router between the external and internal networks. These networks are the two subnets of this model.
Screened subnet firewalls use two screening routers— one known as an access router between the external and perimeter network, and another known as the choke router between the perimeter and internal network. This creates three subnets, respectively.
Both the network perimeter and host machines themselves can house a firewall. To do this, it is placed between a single computer and its connection to a private network.

Network firewalls involve the application of one or more firewalls between external networks and internal private networks. These regulate inbound and outbound network traffic, separating external public networks—like the global internet—from internal networks like home Wi-Fi networks, enterprise intranets, or national intranets. Network firewalls may come in the form of any of the following appliance types: dedicated hardware, software, and virtual.
Host firewalls or 'software firewalls' involve the use of firewalls on individual user devices and other private network endpoints as a barrier between devices within the network. These devices, or hosts, receive customized regulation of traffic to and from specific computer applications. Host firewalls may run on local devices as an operating system service or an endpoint security application. Host firewalls can also dive deeper into web traffic, filtering based on HTTP and other networking protocols, allowing the management of what content arrives at your machine, rather than just where it comes from.
A network firewall requires configuration against a broad scope of connections, whereas a host firewall can be tailored to fit each machine's needs. However, host firewalls require more effort to customize, meaning that network-based are ideal for a sweeping control solution. But the use of both firewalls in both locations simultaneously is ideal for a multi-layer security system.

Filtering traffic via a firewall makes use of pre-set or dynamically learned rules for allowing and denying attempted connections. These rules are how a firewall regulates the flow of web traffic through your private network and private computer devices. Regardless of type, all firewalls may filter by some combination of the following:

Source: Where an attempted connection is being made from.
Destination: Where an attempted connection is intended to go.
Contents: What an attempted connection is trying to send.
Packet protocols: What ‘language’ an attempted connection is speaking to carry its message. Among the networking protocols that hosts use to ‘talk’ with each other, TCP/IP protocols are primarily used to communicate across the internet and within intranet/sub-networks.
Application protocols: Common protocols include HTTP, Telnet, FTP, DNS, and SSH.
Source and destination are communicated by internet protocol (IP) addresses and ports. IP addresses are unique device names for each host. Ports are a sub-level of any given source and destination host device, similar to office rooms within a larger building. Ports are typically assigned specific purposes, so certain protocols and IP addresses using uncommon ports or disabled ports can be a concern.

By using these identifiers, a firewall can decide if a data packet attempting a connection is to be discarded—silently or with an error reply to the sender—or forwarded.

# Types of firewall
Different types of firewalls incorporate varied methods of filtering. While each type was developed to surpass previous generations of firewalls, much of the core technology has passed between generations.

Firewall types are distinguished by their approach to:

Connection tracking
Filtering rules
Audit logs
Each type operates at a different level of the standardized communications model, the Open Systems Interconnection model (OSI). This model gives a better visual of how each firewall interacts with connections.

Static Packet-Filtering Firewall
Static packet-filtering firewalls, also known as stateless inspection firewalls, operate at the OSI network layer (layer 3). These offer basic filtering by checking all individual data packets sent across a network, based on where they're from and where they're attempting to go. Notably, previously accepted connections are not tracked. This means each connection must be re-approved with every data packet sent.

Filtering is based on IP addresses, ports, and packet protocols. These firewalls, at the bare minimum, prevent two networks from directly connecting without permission.

Rules for filtering are set based on a manually created access control list. These are very rigid and it is difficult to cover unwanted traffic appropriately without compromising network usability. Static filtering requires ongoing manual revision to be used effectively. This can be manageable on small networks but can quickly become difficult on larger ones.

Inability to read application protocols means the contents of a message delivered within a packet cannot be read. Without reading the content, packet-filtering firewalls have a limited quality of protection.

Circuit-Level Gateway Firewall
Circuit-level gateways operate on the session level (layer 5). These firewalls check for functional packets in an attempted connection, and—if operating well—will permit a persistent open connection between the two networks. The firewall stops supervising the connection after this occurs.

Aside from its approach to connections, the circuit-level gateway can be similar to proxy firewalls.

The ongoing unmonitored connection is dangerous, as legitimate means could open the connection and later permit a malicious actor to enter uninterrupted.

Stateful Inspection Firewall
Stateful inspection firewalls, also called dynamic packet-filtering firewalls, are unique from static filtering in their ability to monitor ongoing connections and remember past ones. These began by operating on the transport layer (layer 4) but nowadays, these firewalls can monitor many layers, including the application layer (layer 7).

Like the static filtering firewall, stateful inspection firewalls allow or block traffic based on technical properties, such as specific packet protocols, IP addresses, or ports. However, these firewalls also uniquely track, and filter based on the state of connections using a state table.

This firewall updates filtering rules based on past connection events logged in the state table by the screening router.

Generally, filtering decisions are often based on the administrator's rules when setting up the computer and firewall. However, the state table allows these dynamic firewalls to make their own decisions based on previous interactions it has ‘learned’ from. For example, traffic types that caused disruptions in the past would be filtered out in the future. Stateful inspection's flexibility has cemented it as one of the most ubiquitous types of shields available.

Proxy Firewall
Proxy Firewalls, also known as application-level firewalls (layer 7), are unique in reading and filtering application protocols. These combine application-level inspection, or ‘deep packet inspection (DPI),’ and stateful inspection.

A proxy firewall is as close to an actual physical barrier as it's possible to get. Unlike other types of firewalls, it acts as an additional two hosts between external networks and internal host computers, with one as a representative (or ‘proxy’) for each network.

Filtering is based on application-level data rather than just IP addresses, ports, and basic packet protocols (UDP, ICMP) like in packet-based firewalls. Reading and understanding FTP, HTTP, DNS, and other protocols allow for more in-depth investigation and cross-filtering for many different data traits.

Similar to a guard at a doorway, it essentially looks at and evaluates incoming data. If no problem is detected, the data is allowed to pass through to the user.

The downside to this kind of heavy security is that it sometimes interferes with incoming data that isn't a threat, leading to functionality delays.

Next-Generation Firewall (NGFW)
Evolving threats continue to demand more intense solutions, and next-generation firewalls stay on top of this issue by combining the features of a traditional firewall with network intrusion prevention systems.

Threat-specific next-generation firewalls are designed to examine and identify specific threats, such as advanced malware, at a more granular level. More frequently used by businesses and sophisticated networks, they provide a holistic solution to filtering out threats.

Hybrid Firewall
As implied by the name, hybrid firewalls use two or more firewall types in a single private network.

Who invented firewalls?
The invention of the firewall should be viewed as ongoing. This is because it's constantly evolving, and there have been multiple creators involved in its development and evolution.

From the late 1980s to the mid-90s, each creator expanded on various firewall-related components and versions before it became the product used as the basis for all modern firewalls.

Brian Reid, Paul Vixie, and Jeff Mogul

In the late 1980s, Mogul, Reid, and Vixie each had roles at Digital Equipment Corp (DEC) in developing packet-filtering technology that would become valuable in future firewalls. This led to the concept of vetting external connections before they contact computers on an internal network. While some may consider this packet filter as the first firewall, it was more of a component technology that supported the true firewall systems to come.

David Presotto, Janardan Sharma, Kshitiji Nigam, William Cheswick, and Steven Bellovin

In the late 80s to early 90s, various staff at AT&T Bell Labs researched and developed the early concept of the circuit-level gateway firewall. This was the first firewall to vet and permit ongoing connections versus repeatedly reauthorizing after each data packet. Presotto, Sharma, and Nigam developed the circuit-level gateway from 1989 to 1990 and were followed by Cheswick and Bellovin's work with firewall technology in 1991.

Marcus Ranum

From 1991 to 1992, Ranum invented the security proxies at DEC that became a vital component of the first application-layer firewall product —1991's proxy-based Secure External Access Link (SEAL) product. This was an expansion on Reid, Vixie, and Mogul's work at DEC, and was the first commercially released firewall.

Gil Shwed and Nir Zuk

From 1993 to 1994 at Check Point, the company's founder Gil Shwed and a prolific developer Nir Zuk played significant roles in developing the first widely-adopted, user-friendly firewall product—Firewall-1. Gil Shwed invented and filed the U.S. patent for stateful inspection in 1993. This was followed by Nir Zuk's work on an easy-to-use graphical interface for 1994's Firewall-1, which was vital in the wider adoption of firewalls into businesses and homes for the foreseeable future.

These developments were essential in shaping the firewall product we know today, with each being used in some capacity in many cybersecurity solutions.

Importance of firewalls
So, what is the purpose of a firewall and why are they important? Networks without protection are vulnerable to any traffic that is trying to access your systems. Harmful or not, network traffic should always be vetted.

Connecting personal computers to other IT systems or the internet opens up a range of benefits, including easy collaboration with others, combining resources, and enhanced creativity. However, this can come at the cost of complete network and device protection. Hacking, identity theft, malware, and online fraud are common threats users could face when they expose themselves by linking their computers to a network or the internet.

Once discovered by a malicious actor, your network and devices can easily be found, rapidly accessed, and exposed to repeated threats. Around-the-clock internet connections increase the risk of this (since your network can be accessed at any time).

Proactive protection is critical when using any sort of network. Users can protect their network from the worst dangers by using a firewall.

What does firewall security do?
What does a firewall do, and what can a firewall protect against? The concept of a network security firewall is meant to narrow the attack surface of a network to a single point of contact. Instead of every host on a network being directly exposed to the greater internet, all traffic must first contact the firewall. Since this also works in reverse, the firewall can filter and block non-permitted traffic, in or out. Also, firewalls are used to create an audit trail of attempted network connections for better security awareness.

Since traffic filtering can be a rule set established by owners of a private network, this creates custom use cases for firewalls. Popular use cases involve managing the following:

Infiltration from malicious actors: Undesired connections from an oddly behaving source can be blocked. This can prevent eavesdropping and advanced persistent threats (APTs).
Parental controls: Parents can block their children from viewing explicit web content.
Workplace web browsing restrictions: Employers can prevent employees from using company networks to access certain services and content, such as social media.
Nationally controlled intranet: National governments can block internal residents' access to web content and services that are potentially dissident to a nation's leadership or its values.
However, firewalls are less effective at the following:

Identifying exploits of legitimate networking processes: Firewalls do not anticipate human intent, so they cannot determine if a ‘legitimate’ connection is intended for malicious purposes. For example, IP address fraud (IP spoofing) occurs because firewalls don't validate the source and destination IPs.
Prevent connections that do not pass through the firewall: Network-level firewalls alone will not stop malicious internal activity. Internal firewalls such as host-based ones will need to be present in addition to the perimeter firewall, to partition your network and slow the movement of internal ‘fires.’
Provide adequate protection against malware: While connections carrying malicious code can be halted if not allowed, a connection deemed acceptable can still deliver these threats into your network. If a firewall overlooks a connection as a result of being misconfigured or exploited, an antivirus protection suite will still be needed to clean up any malware that enter.
Firewall examples
In practice, the real-world applications of firewalls have attracted both praise and controversy. While there is a long history of firewall achievements, this security type must be implemented correctly to avoid exploits. Additionally, firewalls have been known to be used in ethically questionable ways.

Great Firewall of China, internet censorship
Since around 2000, China has had internal firewall frameworks in place to create its carefully monitored intranet. By nature, firewalls allow for the creation of a customized version of the global internet within a nation. They accomplish this by preventing select services and information from being used or accessed within this national intranet.

National surveillance and censorship allow for the ongoing suppression of free speech while maintaining its government's image. Furthermore, China's firewall allows its government to limit internet services to local companies. This makes control over things like search engines and email services much easier to regulate in favor of the government's goals.

China has seen an ongoing internal protest against this censorship. The use of virtual private networks and proxies to get past the national firewall has allowed many to voice their dissatisfaction.

Covid-19 U.S. federal agency compromised due to remote work weaknesses
In 2020, a misconfigured firewall was just one of many security weaknesses that led to an anonymous United States federal agency's breach.

It is believed that a nation-state actor exploited a series of vulnerabilities in the U.S. agency's cybersecurity. Among the many cited issues with their security, the firewall in-use had many outbound ports that were inappropriately open to traffic. Alongside being maintained poorly, the agency's network likely had new challenges with remote work. Once in the network, the attacker behaved in ways that show clear intent to move through any other open pathways to other agencies. This type of effort puts not only the infiltrated agency at risk of a security breach but many others as well.

U.S. power grid operator’s unpatched firewall exploited
In 2019, a United States power grid operations provider was impacted by a Denial-of-Service (DoS) vulnerability that hackers exploited. Firewalls on the perimeter network were stuck in a reboot exploit loop for roughly ten hours.

It was later deemed to be the result of a known-but-unpatched firmware vulnerability in the firewalls. A standard operating procedure for checking updates before implementation had not yet been implemented causing delays in updates and an inevitable security issue. Fortunately, the security issue did not lead to any significant network penetration.

These events underline the importance of regular software updates. Without them, firewalls are yet another network security system that can be exploited.

How to use firewall protection
Proper setup and maintenance of your firewall are essential to keep your network and devices protected. Here are some tips to guide your firewall network security practices:

Always update your firewalls as soon as possible: Firmware and software patches keep your firewall updated against any newly discovered vulnerabilities. Personal and home firewall users can usually safely update immediately. Larger organizations may need to check configuration and compatibility across their network first. However, everyone should have processes in place to update promptly.
Use antivirus protection: Firewalls alone are not designed to stop malware and other infections. These may get past firewall protections, and you'll need a security solution that's designed to disable and remove them.  Kaspersky Total Security can protect you across your personal devices, and our many business security solutions can safeguard any network hosts you'll seek to keep clean.
Limit accessible ports and hosts with an allow list: Default to connection denial for inbound traffic. Limit inbound and outbound connections to a strict whitelist of trusted IP addresses. Reduce user access privileges to necessities. It is easier to stay secure by enabling access when needed than to revoke and mitigate damage after an incident.
Segmented network: Lateral movement by malicious actors is a clear danger that can be slowed by limiting cross-communication internally.
Have active network redundancies to avoid downtime: Data backups for network hosts and other essential systems can prevent data loss and productivity during an incident.
Kaspersky Endpoint Security received three AV-TEST awards for the best performance, protection, and usability for a corporate endpoint security product in 2021. In all tests Kaspersky Endpoint Security showed outstanding performance, protection, and usability for businesses.
