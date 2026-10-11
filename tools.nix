{ pkgs, lib }:

let
  groups = [
    {
      name = "Information Gathering";
      tools = [
        { name = "Nmap"; package = "nmap"; command = "nmap"; description = "Maps live hosts, open ports, service versions, and likely operating systems on a target network."; }
        { name = "Masscan"; package = "masscan"; command = "masscan"; description = "Scans large IPv4 ranges for open TCP ports at very high speed."; }
        { name = "RustScan"; package = "rustscan"; command = "rustscan"; description = "Finds open ports quickly and can pass discovered ports to Nmap for service enumeration."; }
        { name = "Naabu"; package = "naabu"; command = "naabu"; description = "Performs fast TCP port discovery and exports results for downstream reconnaissance."; }
        { name = "ZMap"; package = "zmap"; command = "zmap"; description = "Runs high-speed, Internet-scale single-packet network scans for research and asset discovery."; }
        { name = "ARP Scan"; package = "arp-scan"; command = "arp-scan"; description = "Discovers IPv4 hosts on the local Layer-2 network by sending ARP requests."; }
        { name = "Netdiscover"; package = "netdiscover"; command = "netdiscover"; description = "Identifies live devices on a local network using active or passive ARP discovery."; }
        { name = "Fping"; package = "fping"; command = "fping"; description = "Checks reachability of many hosts using parallel ICMP echo probes."; }
        { name = "Whois"; package = "whois"; command = "whois"; description = "Retrieves domain and IP registration records such as registrar, registrant, and allocation data."; }
        { name = "Amass"; package = "amass"; command = "amass"; description = "Discovers an organization’s external attack surface through DNS, certificate, and OSINT sources."; }
        { name = "Subfinder"; package = "subfinder"; command = "subfinder"; description = "Enumerates subdomains from passive online data sources."; }
        { name = "Findomain"; package = "findomain"; command = "findomain"; description = "Discovers subdomains using multiple public sources and can check which resolve."; }
        { name = "TheHarvester"; package = "theharvester"; command = "theHarvester"; description = "Collects public emails, hostnames, IP addresses, and employee names associated with a domain."; }
        { name = "Recon-ng"; package = "recon-ng"; command = "recon-ng"; description = "Runs modular OSINT workflows to collect and organize information about a target organization."; }
        { name = "Sherlock"; package = "sherlock"; command = "sherlock"; description = "Checks whether a username has accounts on many public social platforms."; }
        { name = "Maigret"; package = "maigret"; command = "maigret"; description = "Searches hundreds of websites for profiles matching a username and summarizes the findings."; }
        { name = "Sn0int"; package = "sn0int"; command = "sn0int"; description = "Provides a semi-automatic framework for collecting and correlating OSINT reconnaissance data."; }
        { name = "Metabigor"; package = "metabigor"; command = "metabigor"; description = "Uses public Internet data to identify relevant hosts and expand external reconnaissance."; }
        { name = "Holehe"; package = "holehe"; command = "holehe"; description = "Checks which services may have an account registered to a supplied email address."; }
        { name = "Photon"; package = "photon"; command = "photon"; description = "Crawls a website to collect URLs, endpoints, files, parameters, and other reconnaissance artifacts."; }
      ];
    }

    {
      name = "DNS and Domains";
      tools = [
        { name = "dig"; package = "bind"; command = "dig"; description = "Queries DNS records and displays authoritative answers, TTLs, and resolver details."; }
        { name = "DNSenum"; package = "dnsenum"; command = "dnsenum"; description = "Enumerates DNS records and subdomains and can test for common zone-transfer or brute-force exposures."; }
        { name = "DNSRecon"; package = "dnsrecon"; command = "dnsrecon"; description = "Audits DNS configuration through record enumeration, zone-transfer checks, and subdomain discovery."; }
        { name = "DNSTwist"; package = "dnstwist"; command = "dnstwist"; description = "Finds lookalike domains that could enable phishing, typosquatting, or brand impersonation."; }
        { name = "Fierce"; package = "fierce"; command = "fierce"; description = "Discovers DNS hostnames and subdomains using targeted DNS enumeration."; }
        { name = "MassDNS"; package = "massdns"; command = "massdns"; description = "Resolves large lists of domain names using a high-throughput DNS stub resolver."; }
        { name = "PureDNS"; package = "puredns"; command = "puredns"; description = "Combines fast subdomain resolution with wildcard filtering to validate enumeration results."; }
        { name = "DNSx"; package = "dnsx"; command = "dnsx"; description = "Queries DNS records in bulk and filters results by record type or response."; }
        { name = "Knockpy"; package = "knockpy"; command = "knockpy"; description = "Enumerates subdomains and checks DNS responses for a target domain."; }
        { name = "DNSTracer"; package = "dnstracer"; command = "dnstracer"; description = "Traces DNS delegation from root servers toward the authoritative nameservers."; }
        { name = "DNSValidator"; package = "dnsvalidator"; command = "dnsvalidator"; description = "Validates DNS resolvers and helps identify resolvers that return reliable results."; }
        { name = "TLDX"; package = "tldx"; command = "tldx"; description = "Extracts and enumerates top-level-domain names relevant to domain discovery."; }
      ];
    }

    {
      name = "Web Assessment";
      tools = [
        { name = "FFUF"; package = "ffuf"; command = "ffuf"; description = "Fuzzes web paths, parameters, headers, and virtual hosts to uncover hidden endpoints."; }
        { name = "Feroxbuster"; package = "feroxbuster"; command = "feroxbuster"; description = "Recursively discovers web directories and files using wordlists and HTTP responses."; }
        { name = "Gobuster"; package = "gobuster"; command = "gobuster"; description = "Brute-forces web directories, DNS subdomains, virtual hosts, and cloud storage names."; }
        { name = "Dirb"; package = "dirb"; command = "dirb"; description = "Enumerates web server directories and files by requesting candidate paths from a wordlist."; }
        { name = "Wfuzz"; package = "wfuzz"; command = "wfuzz"; description = "Fuzzes HTTP requests to discover parameters, paths, virtual hosts, and input-handling behavior."; }
        { name = "Arjun"; package = "arjun"; command = "arjun"; description = "Finds undocumented HTTP parameters by testing candidate parameter names."; }
        { name = "Hakrawler"; package = "hakrawler"; command = "hakrawler"; description = "Crawls web pages and extracts links and endpoints for reconnaissance."; }
        { name = "Katana"; package = "katana"; command = "katana"; description = "Runs configurable web crawling, including JavaScript-linked endpoint discovery."; }
        { name = "HTTPx"; package = "httpx"; command = "httpx"; description = "Probes HTTP services and reports status codes, titles, technologies, and response metadata."; }
        { name = "Nuclei"; package = "nuclei"; command = "nuclei"; description = "Tests targets against template-based checks for known vulnerabilities and security misconfigurations."; }
        { name = "Nikto"; package = "nikto"; command = "nikto"; description = "Scans web servers for risky files, outdated components, and common configuration problems."; }
        { name = "SQLmap"; package = "sqlmap"; command = "sqlmap"; description = "Automates detection and validation of SQL injection in authorized test targets."; }
        { name = "WhatWeb"; package = "whatweb"; command = "whatweb"; description = "Fingerprints websites by identifying server software, frameworks, CMSs, and plugins."; }
        { name = "WPScan"; package = "wpscan"; command = "wpscan"; description = "Audits WordPress sites for vulnerable versions, plugins, themes, and exposed users."; }
        { name = "Wapiti"; package = "wapiti"; command = "wapiti"; description = "Performs black-box web application testing for common injection and configuration flaws."; }
        { name = "SlowHTTPTest"; package = "slowhttptest"; command = "slowhttptest"; description = "Evaluates web-server resilience to slow HTTP request and connection exhaustion techniques."; }
        { name = "TestSSL"; package = "testssl"; command = "testssl"; description = "Checks TLS services for protocol, cipher, certificate, and known TLS configuration weaknesses."; }
        { name = "SSLScan"; package = "sslscan"; command = "sslscan"; description = "Lists supported TLS protocols and cipher suites and inspects certificate details."; }
        { name = "Mitmproxy"; package = "mitmproxy"; command = "mitmproxy"; description = "Intercepts, inspects, modifies, and replays HTTP(S) traffic through a configurable proxy."; }
        { name = "HTTPie"; package = "httpie"; command = "http"; description = "Sends readable HTTP requests from the terminal and formats API responses for debugging."; }
        { name = "xh"; package = "xh"; command = "xh"; description = "Makes concise HTTP requests with a curl-like syntax and human-readable output."; }
        { name = "Wuzz"; package = "wuzz"; command = "wuzz"; description = "Provides an interactive terminal interface for composing HTTP requests and inspecting responses."; }
        { name = "URLFinder"; package = "urlfinder"; command = "urlfinder"; description = "Extracts URLs associated with a target from public sources for attack-surface review."; }
        { name = "Wappalyzer Go"; package = "wappalyzergo"; command = "wappalyzergo"; description = "Identifies web technologies such as CMSs, frameworks, analytics, and server software."; }
        { name = "Webanalyze"; package = "webanalyze"; command = "webanalyze"; description = "Fingerprints website technologies using Wappalyzer-compatible technology definitions."; }
        { name = "XSStrike"; package = "xsstrike"; command = "xsstrike"; description = "Analyzes web inputs for potential cross-site scripting issues using context-aware payload generation."; }
        { name = "Kiterunner"; package = "kiterunner"; command = "kr"; description = "Discovers API routes by matching requests against API-focused wordlists."; }
        { name = "Crawl and Link Finder"; package = "xnlinkfinder"; command = "xnlinkfinder"; description = "Extracts endpoints and JavaScript-referenced URLs to support web application reconnaissance."; }
        { name = "WPrecon"; package = "wprecon"; command = "wprecon"; description = "Collects WordPress-specific reconnaissance data such as users, plugins, themes, and exposed paths."; }
        { name = "Snallygaster"; package = "snallygaster"; command = "snallygaster"; description = "Checks web servers for accidentally exposed files and common deployment mistakes."; }
      ];
    }

    {
      name = "Vulnerability Assessment";
      tools = [
        { name = "Lynis"; package = "lynis"; command = "lynis"; description = "Audits Unix-like systems for hardening gaps, insecure settings, and compliance-relevant findings."; }
        { name = "Chkrootkit"; package = "chkrootkit"; command = "chkrootkit"; description = "Checks a Linux system for indicators associated with known rootkits."; }
        { name = "Rkhunter"; package = "rkhunter"; command = "rkhunter"; description = "Scans a system for known rootkits, suspicious file changes, and insecure configuration."; }
        { name = "Checksec"; package = "checksec"; command = "checksec"; description = "Reports executable security mitigations such as PIE, NX, RELRO, canaries, and fortification."; }
        { name = "Vulnix"; package = "vulnix"; command = "vulnix"; description = "Finds vulnerable software packages in NixOS and Nix package environments."; }
        { name = "Nuclei"; package = "nuclei"; command = "nuclei"; description = "Tests targets against template-based checks for known vulnerabilities and security misconfigurations."; }
        { name = "OSV Scanner"; package = "osv-scanner"; command = "osv-scanner"; description = "Matches project dependencies and lockfiles against the Open Source Vulnerabilities database."; }
        # { name = "Semgrep"; package = "semgrep"; command = "semgrep"; description = "Semgrep Checks systems, dependencies, or configurations for known security weaknesses. for authorized testing and investigation."; }
        { name = "Grype"; package = "grype"; command = "grype"; description = "Scans container images, filesystems, and SBOMs for known package vulnerabilities."; }
        { name = "Trivy"; package = "trivy"; command = "trivy"; description = "Scans filesystems, container images, repositories, and Kubernetes resources for vulnerabilities and misconfigurations."; }
        { name = "Syft"; package = "syft"; command = "syft"; description = "Creates software bills of materials (SBOMs) from container images and filesystems."; }
        { name = "Gitleaks"; package = "gitleaks"; command = "gitleaks"; description = "Detects exposed credentials and secrets in Git history and working trees."; }
        { name = "TruffleHog"; package = "trufflehog"; command = "trufflehog"; description = "Scans repositories and other data sources for secrets and can verify whether credentials are active."; }
        { name = "Detect Secrets"; package = "detect-secrets"; command = "detect-secrets"; description = "Finds likely hard-coded secrets in source code and supports baseline-based review."; }
        { name = "Cargo Audit"; package = "cargo-audit"; command = "cargo-audit"; description = "Checks Rust Cargo.lock dependencies against the RustSec advisory database."; }
        { name = "Pip Audit"; package = "pip-audit"; command = "pip-audit"; description = "Checks installed Python packages or requirements files against known vulnerability advisories."; }
        { name = "Bandit"; package = "python3Packages.bandit"; command = "bandit"; description = "Finds common security issues in Python source code through static analysis."; }
        { name = "Safety"; package = "python3Packages.safety"; command = "safety"; description = "Checks Python dependencies against vulnerability and package-security advisories."; }
        { name = "Checkov"; package = "checkov"; command = "checkov"; description = "Scans infrastructure-as-code and configuration files for security and compliance policy violations."; }
        { name = "Terrascan"; package = "terrascan"; command = "terrascan"; description = "Detects security and compliance misconfigurations in infrastructure-as-code definitions."; }
        { name = "TFsec"; package = "tfsec"; command = "tfsec"; description = "Analyzes Terraform configurations for cloud security misconfigurations."; }
        { name = "Kube Hunter"; package = "kube-hunter"; command = "kube-hunter"; description = "Probes Kubernetes environments for exposed components and common cluster weaknesses."; }
        { name = "Kubeaudit"; package = "kubeaudit"; command = "kubeaudit"; description = "Audits Kubernetes resources for risky security settings and workload configuration issues."; }
        { name = "Kubescape"; package = "kubescape"; command = "kubescape"; description = "Assesses Kubernetes clusters and manifests against security frameworks and configuration policies."; }
        { name = "Kube Score"; package = "kube-score"; command = "kube-score"; description = "Scores Kubernetes manifests for production-readiness and common security or reliability practices."; }
        { name = "Popeye"; package = "popeye"; command = "popeye"; description = "Scans live Kubernetes clusters for misconfigurations and resource issues using cluster state."; }
      ];
    }

    {
      name = "Password Auditing";
      tools = [
        { name = "John the Ripper"; package = "john"; command = "john"; description = "Audits password strength by testing hashes against wordlists and candidate-generation rules."; }
        { name = "Hashcat"; package = "hashcat"; command = "hashcat"; description = "Performs GPU-accelerated password-hash recovery for authorized password audits."; }
        { name = "THC Hydra"; package = "thc-hydra"; command = "hydra"; description = "Tests authentication services for weak credentials using configurable login attempts."; }
        { name = "Medusa"; package = "medusa"; command = "medusa"; description = "Performs modular login auditing against supported network services."; }
        { name = "Ncrack"; package = "ncrack"; command = "ncrack"; description = "Audits network-service authentication strength across multiple hosts and protocols."; }
        { name = "Crunch"; package = "crunch"; command = "crunch"; description = "Generates custom password candidate lists from specified character sets and length rules."; }
        { name = "CeWL"; package = "cewl"; command = "cewl"; description = "Builds targeted wordlists by collecting words from a supplied website."; }
        { name = "Hashdeep"; package = "hashdeep"; command = "hashdeep"; description = "Computes and compares file hashes to support integrity checks and forensic triage."; }
        { name = "Hashcat Utils"; package = "hashcat-utils"; command = "gpr2crack"; description = "Provides utilities for transforming, sorting, and processing password-hash cracking inputs."; }
        { name = "Fcrackzip"; package = "fcrackzip"; command = "fcrackzip"; description = "Audits password-protected ZIP archives by testing candidate passwords."; }
        { name = "TrueCrack"; package = "truecrack"; command = "truecrack"; description = "Performs password recovery against TrueCrypt volume containers."; }
        { name = "Legba"; package = "legba"; command = "legba"; description = "Runs configurable authentication and protocol checks across supported network services."; }
        { name = "Patator"; package = "python3Packages.patator"; command = "patator.py"; description = "Provides a modular framework for testing authentication and other network protocols."; }
        { name = "H8mail"; package = "h8mail"; command = "h8mail"; description = "Investigates email addresses for breach exposure and related public intelligence."; }
        { name = "PassDetective"; package = "passdetective"; command = "passdetective"; description = "Searches shell history and command artifacts for accidentally exposed passwords and secrets."; }
      ];
    }

    {
      name = "Wireless and Bluetooth";
      tools = [
        { name = "Aircrack-ng"; package = "aircrack-ng"; command = "aircrack-ng"; description = "Audits Wi-Fi security by capturing wireless traffic and analyzing authentication data."; }
        { name = "Bully"; package = "bully"; command = "bully"; description = "Tests WPS PIN security on compatible wireless access points."; }
        { name = "Cowpatty"; package = "cowpatty"; command = "cowpatty"; description = "Audits WPA/WPA2-PSK passphrases using captured handshake data."; }
        { name = "HCX Dump Tool"; package = "hcxdumptool"; command = "hcxdumptool"; description = "Captures 802.11 frames and gathers data used in authorized Wi-Fi security assessments."; }
        { name = "HCX Tools"; package = "hcxtools"; command = "hcxpcapngtool"; description = "Converts and processes wireless capture files for Wi-Fi authentication analysis."; }
        { name = "Kismet"; package = "kismet"; command = "kismet"; description = "Monitors wireless networks and detects access points, clients, and unusual radio activity."; }
        { name = "Reaver"; package = "reaverwps"; command = "reaver"; description = "Tests WPS PIN exposure on compatible access points in an authorized lab."; }
        { name = "Wavemon"; package = "wavemon"; command = "wavemon"; description = "Displays live wireless signal, link quality, and interface statistics in a terminal."; }
        { name = "Wifite"; package = "wifite2"; command = "wifite"; description = "Automates selected wireless security audit workflows against nearby networks."; }
        { name = "KillerBee"; package = "killerbee"; command = "zbid"; description = "Analyzes and tests IEEE 802.15.4 and Zigbee wireless networks."; }
        { name = "Zigpy CLI"; package = "zigpy-cli"; command = "zigpy"; description = "Inspects and interacts with Zigbee networks through supported Zigpy adapters."; }
        { name = "Bettercap"; package = "bettercap"; command = "bettercap"; description = "Performs network discovery and protocol inspection for authorized security testing."; }
        { name = "BlueZ"; package = "bluez"; command = "bluetoothctl"; description = "Controls Linux Bluetooth adapters and inspects nearby Bluetooth devices and connections."; }
      ];
    }

    {
      name = "Network Analysis and Sniffing";
      tools = [
        { name = "TCPdump"; package = "tcpdump"; command = "tcpdump"; description = "Captures packets on selected interfaces and filters traffic with BPF expressions."; }
        { name = "Wireshark"; package = "wireshark"; command = "wireshark"; description = "Analyzes packet captures interactively to inspect protocol behavior and troubleshoot networks."; }
        { name = "TShark"; package = "wireshark-cli"; command = "tshark"; description = "Captures and dissects network packets from the command line using Wireshark dissectors."; }
        { name = "Termshark"; package = "termshark"; command = "termshark"; description = "Provides a terminal UI for browsing packet captures with Wireshark-style filtering."; }
        { name = "TCPflow"; package = "tcpflow"; command = "tcpflow"; description = "Reassembles TCP streams into directional data flows for protocol and incident analysis."; }
        { name = "Tcpreplay"; package = "tcpreplay"; command = "tcpreplay"; description = "Replays captured network traffic to test monitoring systems and network behavior."; }
        { name = "Netsniff-ng"; package = "netsniff-ng"; command = "netsniff-ng"; description = "Captures and processes packets at high speed for network analysis and testing."; }
        { name = "Socat"; package = "socat"; command = "socat"; description = "Relays data between sockets, files, terminals, and network endpoints."; }
        { name = "Netcat"; package = "netcat-gnu"; command = "nc"; description = "Reads and writes raw TCP or UDP connections for connectivity testing and data transfer."; }
        { name = "MTR"; package = "mtr"; command = "mtr"; description = "Combines traceroute and ping to show per-hop latency and packet loss over time."; }
        { name = "Traceroute"; package = "traceroute"; command = "traceroute"; description = "Shows the network hops packets take toward a destination."; }
        { name = "Iperf3"; package = "iperf3"; command = "iperf3"; description = "Measures TCP and UDP throughput, jitter, and packet loss between endpoints."; }
        { name = "Hping"; package = "hping"; command = "hping3"; description = "Crafts and sends custom TCP/IP packets for connectivity and firewall diagnostics."; }
        { name = "Fping"; package = "fping"; command = "fping"; description = "Checks reachability of many hosts using parallel ICMP echo probes."; }
        { name = "Scapy"; package = "python3Packages.scapy"; command = "scapy"; description = "Creates, sends, captures, and dissects custom network packets in Python."; }
        { name = "Ostinato"; package = "ostinato"; command = "ostinato"; cli = false; description = "Generates configurable network traffic streams for protocol and device testing."; }
      ];
    }

    {
      name = "Proxies and Tunneling";
      tools = [
        { name = "Mitmproxy"; package = "mitmproxy"; command = "mitmproxy"; description = "Intercepts, inspects, modifies, and replays HTTP(S) traffic through a configurable proxy."; }
        { name = "Proxychains"; package = "proxychains"; command = "proxychains4"; description = "Routes supported applications through configured proxy servers."; }
        { name = "Redsocks"; package = "redsocks"; command = "redsocks"; description = "Redirects selected TCP connections through a proxy using transparent firewall rules."; }
        { name = "Chisel"; package = "chisel"; command = "chisel"; description = "Creates TCP/UDP tunnels over HTTP for connectivity testing and remote access."; }
        { name = "Iodine"; package = "iodine"; command = "iodine"; description = "Carries IPv4 traffic through DNS tunnels when ordinary network paths are unavailable."; }
        { name = "SSHuttle"; package = "sshuttle"; command = "sshuttle"; description = "Routes selected network traffic through an SSH connection without setting up a full VPN."; }
        { name = "Stunnel"; package = "stunnel"; command = "stunnel"; description = "Wraps services in TLS tunnels to add encrypted transport."; }
        { name = "WSTunnel"; package = "wstunnel"; command = "wstunnel"; description = "Forwards network traffic through WebSocket connections."; }
        { name = "Corkscrew"; package = "corkscrew"; command = "corkscrew"; description = "Connects SSH through HTTP proxy servers that support CONNECT tunneling."; }
        { name = "Bore"; package = "bore-cli"; command = "bore"; description = "Exposes a local TCP port through a remote relay for temporary connectivity."; }
      ];
    }

    {
      name = "Forensics and Recovery";
      tools = [
        { name = "Binwalk"; package = "binwalk"; command = "binwalk"; description = "Inspects firmware and binary images for embedded filesystems, signatures, and compressed data."; }
        { name = "Sleuth Kit"; package = "sleuthkit"; command = "fls"; description = "Examines disk images and filesystem metadata for digital forensic investigations."; }
        { name = "TestDisk"; package = "testdisk"; command = "testdisk"; description = "Recovers lost partitions and helps restore access to damaged disks."; }
        { name = "PhotoRec"; package = "testdisk"; command = "photorec"; description = "Recovers deleted files by carving file signatures from storage media."; }
        { name = "Foremost"; package = "foremost"; command = "foremost"; description = "Carves files from disk images or raw data based on file headers and footers."; }
        { name = "Scalpel"; package = "scalpel"; command = "scalpel"; description = "Performs configurable file carving from forensic images."; }
        { name = "Bulk Extractor"; package = "bulk-extractor"; command = "bulk_extractor"; description = "Extracts emails, URLs, credit-card-like numbers, and other features from digital evidence."; }
        { name = "Volatility 3"; package = "volatility3"; command = "vol"; description = "Analyzes memory dumps to identify processes, modules, connections, and forensic artifacts."; }
        { name = "ExifTool"; package = "exiftool"; command = "exiftool"; description = "Reads, writes, and edits metadata in images, documents, audio, and other file types."; }
        { name = "Exiv2"; package = "exiv2"; command = "exiv2"; description = "Reads and modifies image metadata including EXIF, IPTC, and XMP."; }
        { name = "AFF tools"; package = "afflib"; command = "affinfo"; description = "Inspects and manages Advanced Forensic Format disk images and metadata."; }
        { name = "DDrescue"; package = "ddrescue"; command = "ddrescue"; description = "Recovers data from failing storage by copying readable regions and tracking bad sectors."; }
        { name = "DCFLDD"; package = "dcfldd"; command = "dcfldd"; description = "Creates forensic disk images with hashing and split-output options."; }
        { name = "Dislocker"; package = "dislocker"; command = "dislocker"; description = "Provides access to BitLocker-encrypted volumes for authorized recovery and forensics."; }
        { name = "Ext4magic"; package = "ext4magic"; command = "ext4magic"; description = "Attempts recovery of deleted files and metadata from ext3/ext4 filesystems."; }
        { name = "Extundelete"; package = "extundelete"; command = "extundelete"; description = "Recovers deleted files from ext3/ext4 filesystems when filesystem conditions permit."; }
        { name = "RecoverJPEG"; package = "recoverjpeg"; command = "recoverjpeg"; description = "Carves JPEG images from raw storage or disk images."; }
        { name = "Safecopy"; package = "safecopy"; command = "safecopy"; description = "Copies data from damaged media while retrying unreadable regions carefully."; }
        { name = "XMount"; package = "xmount"; command = "xmount"; description = "Presents forensic disk images in alternative virtual formats for analysis."; }
        { name = "YARA"; package = "yara"; command = "yara"; description = "Matches files or memory content against rules describing malware or other patterns."; }
        { name = "SSDeep"; package = "ssdeep"; command = "ssdeep"; description = "Computes context-triggered piecewise hashes to compare files for approximate similarity."; }
        { name = "Magic Rescue"; package = "magicrescue"; command = "magicrescue"; description = "Recovers files from block devices by recognizing file-type signatures."; }
      ];
    }

    {
      name = "Reverse Engineering and Exploit Development";
      tools = [
        { name = "GDB"; package = "gdb"; command = "gdb"; description = "Debugs programs by inspecting execution, memory, registers, and breakpoints."; }
        { name = "Radare2"; package = "radare2"; command = "r2"; description = "Disassembles, debugs, and analyzes binaries through a command-line reverse-engineering framework."; }
        { name = "Rizin"; package = "rizin"; command = "rizin"; description = "Provides binary analysis, disassembly, and debugging for reverse engineering."; }
        { name = "Ghidra"; package = "ghidra"; command = "ghidra"; cli = false; description = "Performs interactive disassembly and decompilation of compiled programs."; }
        { name = "Capstone"; package = "capstone"; command = "cstool"; description = "Disassembles machine-code bytes into instructions across supported CPU architectures."; }
        { name = "NASM"; package = "nasm"; command = "nasm"; description = "Assembles x86 and x86-64 assembly source into object files or raw binaries."; }
        { name = "Patchelf"; package = "patchelf"; command = "patchelf"; description = "Inspects and changes ELF executable interpreters, RPATHs, and dynamic dependencies."; }
        { name = "Strace"; package = "strace"; command = "strace"; description = "Traces Linux system calls and signals to diagnose program behavior and failures."; }
        { name = "Ltrace"; package = "ltrace"; command = "ltrace"; description = "Traces calls made by a program to shared libraries."; }
        { name = "AFL++"; package = "aflplusplus"; command = "afl-fuzz"; description = "Fuzzes program inputs to discover crashes and other unexpected behavior through coverage feedback."; }
        { name = "Honggfuzz"; package = "honggfuzz"; command = "honggfuzz"; description = "Uses feedback-driven fuzzing to find crashes and memory-safety defects in programs."; }
        { name = "Radamsa"; package = "radamsa"; command = "radamsa"; description = "Mutates sample inputs to generate unusual test cases for robustness testing."; }
        { name = "ZZUF"; package = "zzuf"; command = "zzuf"; description = "Randomly mutates program input to uncover crashes and parsing bugs."; }
        { name = "Pwntools"; package = "python3Packages.pwntools"; command = "pwn"; description = "Provides Python helpers for exploit-development labs, binary interaction, and CTF challenges."; }
        { name = "ROPgadget"; package = "python3Packages.ropgadget"; command = "ROPgadget"; description = "Finds return-oriented programming gadgets in executable binaries for exploit analysis."; }
        # { name = "Angr"; package = "python3Packages.angr"; command = "angr"; description = "Angr Analyzes binaries or supports debugging and controlled exploit-development research. for authorized testing and investigation."; }
        { name = "Apktool"; package = "apktool"; command = "apktool"; description = "Decodes Android APK resources and smali code and rebuilds modified test packages."; }
        { name = "JADX"; package = "jadx"; command = "jadx"; description = "Decompiles Android DEX/APK bytecode into readable Java-like source."; }
        { name = "Dex2jar"; package = "dex2jar"; command = "d2j-dex2jar"; description = "Converts Android DEX bytecode into Java class files for analysis."; }
        { name = "Androguard"; package = "androguard"; command = "androguard"; description = "Analyzes Android APKs, manifests, bytecode, and application metadata."; }
        { name = "ExploitDB SearchSploit"; package = "exploitdb"; command = "searchsploit"; description = "Searches a local Exploit-DB index for public exploit references matching software and versions."; }
        { name = "Linux Exploit Suggester"; package = "linux-exploit-suggester"; command = "linux-exploit-suggester"; description = "Compares Linux kernel and system details with known local privilege-escalation opportunities."; }
      ];
    }

    {
      name = "Fuzzing and Load Testing";
      tools = [
        { name = "Boofuzz"; package = "boofuzz"; command = "boofuzz"; description = "Fuzzes network protocols and services using structured request templates."; }
        { name = "Radamsa"; package = "radamsa"; command = "radamsa"; description = "Mutates sample inputs to generate unusual test cases for robustness testing."; }
        { name = "Regexploit"; package = "regexploit"; command = "regexploit"; description = "Identifies regular expressions that may cause catastrophic backtracking and denial of service."; }
        { name = "Siege"; package = "siege"; command = "siege"; description = "Generates configurable HTTP load to measure web-server behavior under concurrent requests."; }
        { name = "Vegeta"; package = "vegeta"; command = "vegeta"; description = "Runs constant-rate HTTP load tests and reports latency and throughput."; }
        { name = "Oha"; package = "oha"; command = "oha"; description = "Benchmarks HTTP endpoints and summarizes latency distributions and request rates."; }
        { name = "Drill"; package = "drill"; command = "drill"; description = "Queries DNS servers and displays DNS responses for troubleshooting and testing."; }
        { name = "Hey"; package = "hey"; command = "hey"; description = "Sends concurrent HTTP requests to benchmark endpoint performance."; }
        { name = "Wrk"; package = "wrk"; command = "wrk"; description = "Generates HTTP workload with configurable threads, connections, and Lua scripting."; }
        { name = "Ali"; package = "ali"; command = "ali"; description = "Runs HTTP load tests and reports latency, throughput, and error statistics."; }
        { name = "Ddosify"; package = "ddosify"; command = "ddosify"; description = "Runs configurable HTTP load tests to evaluate service performance under stress."; }
      ];
    }

    {
      name = "Code and Supply Chain Security";
      tools = [
        { name = "GitLeaks"; package = "gitleaks"; command = "gitleaks"; description = "Detects passwords, API keys, tokens, and other secret patterns in Git repositories."; }
        { name = "TruffleHog"; package = "trufflehog"; command = "trufflehog"; description = "Scans repositories and other data sources for secrets and can verify whether credentials are active."; }
        { name = "Detect Secrets"; package = "detect-secrets"; command = "detect-secrets"; description = "Finds likely hard-coded secrets in source code and supports baseline-based review."; }
        { name = "Git Secret"; package = "git-secret"; command = "git-secret"; description = "Encrypts selected repository files so sensitive content can be versioned safely."; }
        { name = "OSV Detector"; package = "osv-detector"; command = "osv-detector"; description = "Finds dependency vulnerabilities by comparing project packages with OSV advisories."; }
        { name = "Legitify"; package = "legitify"; command = "legitify"; description = "Audits GitHub organizations and repositories for governance and security misconfigurations."; }
        { name = "Gokart"; package = "gokart"; command = "gokart"; description = "Performs static analysis of Go code to identify security-relevant data-flow issues."; }
        { name = "Pip Audit"; package = "pip-audit"; command = "pip-audit"; description = "Checks installed Python packages or requirements files against known vulnerability advisories."; }
        { name = "Cargo Audit"; package = "cargo-audit"; command = "cargo-audit"; description = "Checks Rust Cargo.lock dependencies against the RustSec advisory database."; }
        { name = "Go Vulnerability Check"; package = "govulncheck"; command = "govulncheck"; description = "Checks Go modules and source dependencies for known vulnerabilities."; }
        # { name = "Whispers"; package = "whispers"; command = "whispers"; description = "Whispers Checks source code, dependencies, or build artifacts for security and provenance risks. for authorized testing and investigation."; }
        { name = "Betterleaks"; package = "betterleaks"; command = "betterleaks"; description = "Scans repositories and files for exposed secrets using configurable detection rules."; }
        { name = "Kingfisher"; package = "kingfisher"; command = "kingfisher"; description = "Searches code and repository content for credentials and other sensitive strings."; }
        { name = "Xeol"; package = "xeol"; command = "xeol"; description = "Identifies end-of-life software components in container images and SBOMs."; }
        { name = "Trivy"; package = "trivy"; command = "trivy"; description = "Scans filesystems, container images, repositories, and Kubernetes resources for vulnerabilities and misconfigurations."; }
      ];
    }

    {
      name = "Cloud and Containers";
      tools = [
        { name = "Prowler"; package = "prowler"; command = "prowler"; description = "Assesses cloud accounts against security best practices and compliance frameworks."; }
        { name = "Pacu"; package = "pacu"; command = "pacu"; description = "Provides modular security testing for AWS environments in authorized assessments."; }
        { name = "Cloudfox"; package = "cloudfox"; command = "cloudfox"; description = "Enumerates cloud resources and permissions to help map attack paths in cloud accounts."; }
        { name = "Cloud Nuke"; package = "cloud-nuke"; command = "cloud-nuke"; description = "Deletes selected cloud resources to clean up test environments; use with extreme care."; }
        { name = "Grype"; package = "grype"; command = "grype"; description = "Scans container images, filesystems, and SBOMs for known package vulnerabilities."; }
        { name = "Trivy"; package = "trivy"; command = "trivy"; description = "Scans filesystems, container images, repositories, and Kubernetes resources for vulnerabilities and misconfigurations."; }
        { name = "Dive"; package = "dive"; command = "dive"; description = "Explores container image layers to show file changes and identify inefficient image contents."; }
        { name = "Dockle"; package = "dockle"; command = "dockle"; description = "Checks container images for common security and image-building best-practice issues."; }
        { name = "Skopeo"; package = "skopeo"; command = "skopeo"; description = "Inspects, copies, and synchronizes container images between registries and local storage."; }
        { name = "Podman"; package = "podman"; command = "podman"; description = "Builds and runs OCI containers and pods without requiring a central daemon."; }
        { name = "Kubescape"; package = "kubescape"; command = "kubescape"; description = "Assesses Kubernetes clusters and manifests against security frameworks and configuration policies."; }
        { name = "Kube Hunter"; package = "kube-hunter"; command = "kube-hunter"; description = "Probes Kubernetes environments for exposed components and common cluster weaknesses."; }
        { name = "Kubeaudit"; package = "kubeaudit"; command = "kubeaudit"; description = "Audits Kubernetes resources for risky security settings and workload configuration issues."; }
        { name = "Kube Score"; package = "kube-score"; command = "kube-score"; description = "Scores Kubernetes manifests for production-readiness and common security or reliability practices."; }
        { name = "Popeye"; package = "popeye"; command = "popeye"; description = "Scans live Kubernetes clusters for misconfigurations and resource issues using cluster state."; }
        { name = "Terraform"; package = "terraform"; command = "terraform"; description = "Defines and provisions infrastructure through declarative configuration and provider APIs."; }
        { name = "TFLint"; package = "tflint"; command = "tflint"; description = "Lints Terraform configuration for errors, deprecated patterns, and provider-specific issues."; }
      ];
    }

    {
      name = "Mobile and Hardware";
      tools = [
        { name = "ADB"; package = "android-tools"; command = "adb"; description = "Communicates with Android devices and emulators for debugging, shell access, and app management."; }
        { name = "Scrcpy"; package = "scrcpy"; command = "scrcpy"; cli = false; description = "Mirrors and controls an Android device from a desktop over USB or TCP/IP."; }
        { name = "Apktool"; package = "apktool"; command = "apktool"; description = "Decodes Android APK resources and smali code and rebuilds modified test packages."; }
        { name = "JADX"; package = "jadx"; command = "jadx"; description = "Decompiles Android DEX/APK bytecode into readable Java-like source."; }
        { name = "Apkeep"; package = "apkeep"; command = "apkeep"; description = "Downloads Android application packages from supported app stores and sources."; }
        { name = "ESP Tool"; package = "esptool"; command = "esptool"; description = "Flashes firmware and communicates with Espressif ESP8266/ESP32 devices."; }
        # { name = "CHIPSEC"; package = "chipsec"; command = "chipsec_main"; description = "CHIPSEC Inspects, controls, or communicates with mobile devices and embedded hardware. for authorized testing and investigation."; }
        { name = "Teensy Loader CLI"; package = "teensy-loader-cli"; command = "teensy_loader_cli"; description = "Loads firmware onto supported Teensy microcontroller boards."; }
        { name = "Packetry"; package = "packetry"; command = "packetry"; cli = false; description = "Inspects USB Power Delivery traffic captured with compatible hardware."; }
        { name = "Cardpeek"; package = "cardpeek"; command = "cardpeek"; cli = false; description = "Reads and inspects supported smart-card data for diagnostic and research purposes."; }
        { name = "MFCUK"; package = "mfcuk"; command = "mfcuk"; description = "Tests MIFARE Classic card key-recovery weaknesses in authorized lab setups."; }
        { name = "MFOC"; package = "mfoc"; command = "mfoc"; description = "Recovers MIFARE Classic keys by exploiting known card-crypto weaknesses in a lab."; }
      ];
    }

    {
      name = "LDAP, SMB and Identity";
      tools = [
        { name = "LDAP Domain Dump"; package = "ldapdomaindump"; command = "ldapdomaindump"; description = "Collects LDAP directory information and exports it into browsable reports."; }
        { name = "LDeep"; package = "ldeep"; command = "ldeep"; description = "Enumerates Active Directory information through LDAP queries."; }
        { name = "OpenLDAP Search"; package = "openldap"; command = "ldapsearch"; description = "Queries LDAP directories using filters, scopes, and selected attributes."; }
        { name = "Samba Client"; package = "samba"; command = "smbclient"; description = "Lists and accesses SMB shares for file-service diagnostics and authorized enumeration."; }
        { name = "Impacket Secretsdump"; package = "python3Packages.impacket"; command = "secretsdump.py"; description = "Extracts account hashes and secrets from supported Windows data sources for forensic auditing."; }
        { name = "Impacket GetUserSPNs"; package = "python3Packages.impacket"; command = "GetUserSPNs.py"; description = "Finds Kerberos service accounts with SPNs for Active Directory security auditing."; }
        # { name = "NetExec"; package = "netexec"; command = "nxc"; description = "NetExec Queries directory services or enumerates identity and file-sharing infrastructure. for authorized testing and investigation."; }
        { name = "Enum4linux-ng"; package = "enum4linux-ng"; command = "enum4linux-ng"; description = "Enumerates SMB, NetBIOS, users, groups, and domain details from Windows/Samba hosts."; }
      ];
    }

    {
      name = "TLS and Cryptography";
      tools = [
        { name = "OpenSSL"; package = "openssl"; command = "openssl"; description = "Manages certificates and keys and tests TLS connections and cryptographic operations."; }
        { name = "Step CLI"; package = "step-cli"; command = "step"; description = "Creates and validates certificates and manages small-step PKI workflows."; }
        { name = "IKE Scan"; package = "ike-scan"; command = "ike-scan"; description = "Identifies IPsec IKE services and inspects their negotiation responses."; }
        { name = "SSLH"; package = "sslh"; command = "sslh"; description = "Multiplexes different protocols over a shared TCP port, commonly HTTPS and SSH."; }
        { name = "GnuPG"; package = "gnupg"; command = "gpg"; description = "Encrypts, decrypts, signs, and verifies files or messages using OpenPGP."; }
        { name = "Age"; package = "age"; command = "age"; description = "Encrypts and decrypts files with a simple modern public-key or passphrase-based workflow."; }
        { name = "Cfssl"; package = "cfssl"; command = "cfssl"; description = "Creates, signs, and inspects TLS certificates and supports certificate-authority workflows."; }
      ];
    }

    {
      name = "VoIP and Services";
      tools = [
        { name = "SIPp"; package = "sipp"; command = "sipp"; description = "Generates and receives SIP traffic to test VoIP servers and call flows."; }
        { name = "Sngrep"; package = "sngrep"; command = "sngrep"; description = "Displays SIP signaling conversations and call-flow details in a terminal."; }
        { name = "Net-SNMP"; package = "net-snmp"; command = "snmpwalk"; description = "Queries SNMP-enabled devices to inspect management data and operational counters."; }
        { name = "OpenVPN"; package = "openvpn"; command = "openvpn"; description = "Creates encrypted VPN connections using OpenVPN configuration and credentials."; }
        { name = "WireGuard"; package = "wireguard-tools"; command = "wg"; description = "Configures and inspects WireGuard VPN interfaces, peers, and keys."; }
        { name = "Minicom"; package = "minicom"; command = "minicom"; description = "Provides a terminal emulator for serial-console access to embedded and network devices."; }
        { name = "Picocom"; package = "picocom"; command = "picocom"; description = "Opens a lightweight serial terminal for communicating with hardware devices."; }
      ];
    }

    {
      name = "General Security Utilities";
      tools = [
        { name = "Git"; package = "git"; command = "git"; description = "Tracks source changes and supports branching, merging, and repository collaboration."; }
        { name = "OpenSSH Client"; package = "openssh"; command = "ssh"; description = "Connects to remote systems over SSH and supports secure command execution and file transfer."; }
        { name = "GnuPG"; package = "gnupg"; command = "gpg"; description = "Encrypts, decrypts, signs, and verifies files or messages using OpenPGP."; }
        { name = "YQ"; package = "yq-go"; command = "yq"; description = "Queries and transforms YAML configuration data from the command line."; }
        { name = "JQ"; package = "jq"; command = "jq"; description = "Filters, transforms, and formats JSON data using composable expressions."; }
        { name = "Curl"; package = "curl"; command = "curl"; description = "Transfers data to and from URLs using HTTP and many other network protocols."; }
        { name = "Wget"; package = "wget"; command = "wget"; description = "Downloads files and recursively retrieves web content over supported protocols."; }
        { name = "File"; package = "file"; command = "file"; description = "Identifies file types by inspecting file signatures and content."; }
        { name = "Binutils Strings"; package = "binutils"; command = "strings"; description = "Extracts printable character sequences from binaries and other files."; }
        { name = "Lsof"; package = "lsof"; command = "lsof"; description = "Lists open files, sockets, and processes using them to troubleshoot resource usage."; }
        { name = "Strace"; package = "strace"; command = "strace"; description = "Traces Linux system calls and signals to diagnose program behavior and failures."; }
        { name = "Tcpdump"; package = "tcpdump"; command = "tcpdump"; description = "Tcpdump Supports system inspection, secure connectivity, data processing, or troubleshooting. for authorized testing and investigation."; }
        { name = "YARA"; package = "yara"; command = "yara"; description = "Matches files or memory content against rules describing malware or other patterns."; }
      ];
    }
  ];

  resolvePackage = packagePath:
    let
      package = lib.attrByPath (lib.splitString "." packagePath) null pkgs;
      checked = builtins.tryEval (
        if package == null then null else package.drvPath
      );
    in
      if checked.success && checked.value != null then package else null;

  packageDescription = package:
    if package == null then ""
    else
      let
        checked = builtins.tryEval (lib.attrByPath [ "meta" "description" ] "" package);
      in
        if checked.success && builtins.isString checked.value
        then checked.value
        else "";

  escapeDesktopValue = value:
    lib.replaceStrings
      [ "\\" "\r" "\n" ]
      [ "\\\\" "\\r" "\\n" ]
      value;

  allTools = lib.concatMap
    (group:
      map
        (tool: tool // { groupName = group.name; })
        group.tools
    )
    groups;

  checkedTools = map
    (tool:
      let
        packageDrv = resolvePackage tool.package;
        pkgDescription = packageDescription packageDrv;
        isCli = if tool ? cli then tool.cli else true;
        fallbackDescription =
          if isCli then
            "${tool.name} command-line utility in the ${tool.groupName} category."
          else
            "${tool.name} application in the ${tool.groupName} category.";
      in
        tool // {
          inherit packageDrv;
          cli = isCli;
          description =
            if tool ? description then tool.description
            else if pkgDescription != "" then pkgDescription
            else fallbackDescription;
        }
    )
    allTools;

  tools = lib.filter (tool: tool.packageDrv != null) checkedTools;
  missingPackages = map
    (tool: "${tool.groupName}: ${tool.package}")
    (lib.filter (tool: tool.packageDrv == null) checkedTools);

  launchers = map
    (tool:
      let
        groupId = lib.strings.sanitizeDerivationName tool.groupName;
        launcherName = "security-${groupId}-${tool.command}";
        executable = "${tool.packageDrv}/bin/${tool.command}";

        helpCommand = pkgs.writeShellScript "${launcherName}-help" ''
          exec ${lib.escapeShellArg executable} -h
        '';

        launcher =
          if tool.cli then
            pkgs.writeShellScriptBin launcherName ''
              exec ${pkgs.xfce4-terminal}/bin/xfce4-terminal \
                --disable-server \
                --hold \
                --command=${lib.escapeShellArg "${helpCommand}"}
            ''
          else
            null;

        execPath =
          if tool.cli then "${launcher}/bin/${launcherName}"
          else executable;

        desktopComment =
          if tool.cli then "${tool.description} (opens terminal with -h)"
          else tool.description;

        desktopFile = pkgs.writeTextDir
          "share/applications/${launcherName}.desktop"
          ''
            [Desktop Entry]
            Version=1.0
            Type=Application
            Name=${escapeDesktopValue tool.name}
            Comment=${escapeDesktopValue desktopComment}
            Exec=${execPath}
            TryExec=${execPath}
            Terminal=false
            Categories=System;X-Security;
          '';
      in
        tool // {
          inherit launcherName execPath desktopFile;
        }
    )
    tools;

  rootTerminalCommand = pkgs.writeShellScript "security-root-terminal" ''
    exec ${pkgs.xfce4-terminal}/bin/xfce4-terminal \
      --disable-server \
      --hold \
      --command="${pkgs.bash}/bin/bash --login"
  '';

  rootTerminalLauncher = pkgs.writeShellScriptBin "security-root-terminal-launcher" ''
    exec /run/wrappers/bin/pkexec \
      ${pkgs.coreutils}/bin/env \
      DISPLAY="''${DISPLAY:-}" \
      XAUTHORITY="''${XAUTHORITY:-}" \
      ${rootTerminalCommand}
  '';

  rootTerminalDesktop = pkgs.writeTextDir
    "share/applications/security-root-terminal.desktop"
    ''
      [Desktop Entry]
      Version=1.0
      Type=Application
      Name=Root Terminal
      Comment=Open an elevated XFCE terminal using polkit administrator authentication
      Exec=${rootTerminalLauncher}/bin/security-root-terminal-launcher
      TryExec=${rootTerminalLauncher}/bin/security-root-terminal-launcher
      Terminal=false
      Categories=System;
    '';

  desktopEntries = pkgs.runCommand "security-tool-desktop-entries"
    { nativeBuildInputs = [ pkgs.desktop-file-utils ]; }
    ''
      mkdir -p "$out/share/applications"

      ${lib.concatMapStrings
        (tool: ''
          cp ${tool.desktopFile}/share/applications/${tool.launcherName}.desktop \
            "$out/share/applications/${tool.launcherName}.desktop"
        '')
        launchers}

      cp ${rootTerminalDesktop}/share/applications/security-root-terminal.desktop \
        "$out/share/applications/security-root-terminal.desktop"

      for desktop_file in "$out"/share/applications/*.desktop; do
        ${pkgs.desktop-file-utils}/bin/desktop-file-validate "$desktop_file"
      done
    '';

  menuXml = pkgs.writeText "security-tools.menu" ''
    <!DOCTYPE Menu PUBLIC
      "-//freedesktop//DTD Menu 1.0//EN"
      "http://www.freedesktop.org/standards/menu-spec/1.0/menu.dtd">
    <Menu>
      <Name>Applications</Name>

      <Menu>
        <Name>Security</Name>
        <Directory>security.directory</Directory>
        ${lib.concatMapStrings
          (group: ''
            <Menu>
              <Name>${group.name}</Name>
              <Directory>security-${lib.strings.sanitizeDerivationName group.name}.directory</Directory>
              <Include>
                ${lib.concatMapStrings
                  (tool: ''
                    <Filename>security-${lib.strings.sanitizeDerivationName group.name}-${tool.command}.desktop</Filename>
                  '')
                  (lib.filter (tool: tool.groupName == group.name) launchers)}
              </Include>
            </Menu>
          '')
          groups}
      </Menu>

      <Menu>
        <Name>System Tools</Name>
        <Directory>system-tools.directory</Directory>
        <Include>
          <Category>AudioVideo</Category>
          <Category>Audio</Category>
          <Category>Video</Category>
          <Category>Development</Category>
          <Category>Education</Category>
          <Category>Game</Category>
          <Category>Graphics</Category>
          <Category>Network</Category>
          <Category>Office</Category>
          <Category>Settings</Category>
          <Category>System</Category>
          <Category>Utility</Category>
          <Filename>security-root-terminal.desktop</Filename>
        </Include>
        <Exclude>
          <Category>X-Security</Category>
        </Exclude>
      </Menu>
    </Menu>
  '';

  menuDirectories = pkgs.runCommand "security-menu-directories" { } ''
    mkdir -p "$out/share/desktop-directories"

    cat > "$out/share/desktop-directories/security.directory" <<'DIRECTORY_EOF'
[Desktop Entry]
Type=Directory
Name=Security
Comment=Security assessment tools
DIRECTORY_EOF

    cat > "$out/share/desktop-directories/system-tools.directory" <<'DIRECTORY_EOF'
[Desktop Entry]
Type=Directory
Name=System Tools
Comment=General system applications and utilities
DIRECTORY_EOF

    ${lib.concatMapStrings
      (group: ''
        cat > "$out/share/desktop-directories/security-${lib.strings.sanitizeDerivationName group.name}.directory" <<'DIRECTORY_EOF'
[Desktop Entry]
Type=Directory
Name=${group.name}
Comment=Security category: ${group.name}
DIRECTORY_EOF
      '')
      groups}
  '';

in
{
  packages = map resolvePackage (lib.unique (map (tool: tool.package) tools));
  inherit desktopEntries menuXml menuDirectories missingPackages;

  categories = map
    (group: {
      inherit (group) name;
      tools = map (tool: tool.name)
        (lib.filter (tool: tool.groupName == group.name) tools);
    })
    groups;

  availableTools = map
    (tool: {
      inherit (tool) name package command groupName description cli;
    })
    launchers;
}
