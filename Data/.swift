import Foundation

let networkingConceptsStudyGuide: [StudySection] = [

    StudySection(
        title: "OSI Model",
        summary: "Learn how data moves through the seven networking layers.",
        content: """
The Open Systems Interconnection (OSI) Model is a conceptual framework that standardizes network communication into seven distinct layers. Each layer has a specific responsibility and works with the layers above and below it.

Layer 7 – Application
Provides network services directly to applications used by the end user, such as web browsers and email clients.

Layer 6 – Presentation
Responsible for translating, encrypting, decrypting, compressing, and formatting data so both devices understand it.

Layer 5 – Session
Creates, manages, and terminates communication sessions between two devices.

Layer 4 – Transport
Ensures end-to-end communication using either TCP (reliable) or UDP (fast). It handles segmentation, acknowledgements, and error recovery.

Layer 3 – Network
Uses logical addressing (IP addresses) to determine the best path for data to travel across different networks.

Layer 2 – Data Link
Uses MAC addresses to deliver frames across the local network and detects transmission errors.

Layer 1 – Physical
Transfers raw bits across cables, fiber optics, or wireless signals.

Exam Tip:
Remember the layers using the mnemonic:

All
People
Seem
To
Need
Data
Processing
"""
    ),

    StudySection(
        title: "TCP vs UDP",
        summary: "Understand the differences between the two transport protocols.",
        content: """
Both TCP and UDP operate at the Transport Layer (Layer 4), but they serve different purposes.

TCP (Transmission Control Protocol)

• Connection-oriented
• Reliable communication
• Performs error checking
• Guarantees packet delivery
• Slower due to acknowledgements

Common TCP Protocols:
HTTP
HTTPS
FTP
SSH
SMTP

UDP (User Datagram Protocol)

• Connectionless
• Faster communication
• No delivery guarantee
• Minimal error checking
• Lower overhead

Common UDP Protocols:
DNS
DHCP
VoIP
Streaming Media
Online Gaming

Exam Tip:
Choose TCP when reliability is important.
Choose UDP when speed is more important than guaranteed delivery.
"""
    ),

    StudySection(
        title: "Network Devices",
        summary: "Become familiar with the most common networking hardware.",
        content: """
Router
Connects multiple networks together and forwards packets using IP addresses.

Switch
Connects devices inside the same Local Area Network (LAN) using MAC addresses.

Firewall
Protects the network by allowing or denying traffic based on security rules.

Wireless Access Point
Provides wireless devices access to the wired network.

Load Balancer
Distributes incoming traffic across multiple servers to improve performance and reliability.

Proxy Server
Acts as an intermediary between clients and external servers for filtering, security, or caching.

Exam Tip:
Know the primary function of each device. CompTIA frequently asks scenario-based questions where you'll identify the correct device for a given situation.
"""
    )

]
