{ pkgs, lib }:

let
  groups = [
    {
      name = "Information Gathering";
      tools = [
        { name = "Nmap"; package = "nmap"; command = "nmap"; }
        { name = "Masscan"; package = "masscan"; command = "masscan"; }
        { name = "RustScan"; package = "rustscan"; command = "rustscan"; }
        { name = "Naabu"; package = "naabu"; command = "naabu"; }
        { name = "ZMap"; package = "zmap"; command = "zmap"; }
        { name = "ARP Scan"; package = "arp-scan"; command = "arp-scan"; }
        { name = "Netdiscover"; package = "netdiscover"; command = "netdiscover"; }
        { name = "Fping"; package = "fping"; command = "fping"; }
        { name = "Whois"; package = "whois"; command = "whois"; }
        { name = "Amass"; package = "amass"; command = "amass"; }
        { name = "Subfinder"; package = "subfinder"; command = "subfinder"; }
        { name = "Findomain"; package = "findomain"; command = "findomain"; }
        { name = "TheHarvester"; package = "theharvester"; command = "theHarvester"; }
        { name = "Recon-ng"; package = "recon-ng"; command = "recon-ng"; }
        { name = "Sherlock"; package = "sherlock"; command = "sherlock"; }
        { name = "Maigret"; package = "maigret"; command = "maigret"; }
        { name = "Sn0int"; package = "sn0int"; command = "sn0int"; }
        { name = "Metabigor"; package = "metabigor"; command = "metabigor"; }
        { name = "Holehe"; package = "holehe"; command = "holehe"; }
        { name = "Photon"; package = "photon"; command = "photon"; }
      ];
    }

    {
      name = "DNS and Domains";
      tools = [
        { name = "dig"; package = "bind"; command = "dig"; }
        { name = "DNSenum"; package = "dnsenum"; command = "dnsenum"; }
        { name = "DNSRecon"; package = "dnsrecon"; command = "dnsrecon"; }
        { name = "DNSTwist"; package = "dnstwist"; command = "dnstwist"; }
        { name = "Fierce"; package = "fierce"; command = "fierce"; }
        { name = "MassDNS"; package = "massdns"; command = "massdns"; }
        { name = "PureDNS"; package = "puredns"; command = "puredns"; }
        { name = "DNSx"; package = "dnsx"; command = "dnsx"; }
        { name = "Knockpy"; package = "knockpy"; command = "knockpy"; }
        { name = "DNSTracer"; package = "dnstracer"; command = "dnstracer"; }
        { name = "DNSValidator"; package = "dnsvalidator"; command = "dnsvalidator"; }
        { name = "TLDX"; package = "tldx"; command = "tldx"; }
      ];
    }

    {
      name = "Web Assessment";
      tools = [
        { name = "FFUF"; package = "ffuf"; command = "ffuf"; }
        { name = "Feroxbuster"; package = "feroxbuster"; command = "feroxbuster"; }
        { name = "Gobuster"; package = "gobuster"; command = "gobuster"; }
        { name = "Dirb"; package = "dirb"; command = "dirb"; }
        { name = "Wfuzz"; package = "wfuzz"; command = "wfuzz"; }
        { name = "Arjun"; package = "arjun"; command = "arjun"; }
        { name = "Hakrawler"; package = "hakrawler"; command = "hakrawler"; }
        { name = "Katana"; package = "katana"; command = "katana"; }
        { name = "HTTPx"; package = "httpx"; command = "httpx"; }
        { name = "Nuclei"; package = "nuclei"; command = "nuclei"; }
        { name = "Nikto"; package = "nikto"; command = "nikto"; }
        { name = "SQLmap"; package = "sqlmap"; command = "sqlmap"; }
        { name = "WhatWeb"; package = "whatweb"; command = "whatweb"; }
        { name = "WPScan"; package = "wpscan"; command = "wpscan"; }
        # { name = "Wapiti"; package = "wapiti"; command = "wapiti"; }
        { name = "SlowHTTPTest"; package = "slowhttptest"; command = "slowhttptest"; }
        { name = "TestSSL"; package = "testssl"; command = "testssl"; }
        { name = "SSLScan"; package = "sslscan"; command = "sslscan"; }
        { name = "Mitmproxy"; package = "mitmproxy"; command = "mitmproxy"; }
        { name = "HTTPie"; package = "httpie"; command = "http"; }
        { name = "xh"; package = "xh"; command = "xh"; }
        { name = "Wuzz"; package = "wuzz"; command = "wuzz"; }
        { name = "URLFinder"; package = "urlfinder"; command = "urlfinder"; }
        { name = "Wappalyzer Go"; package = "wappalyzergo"; command = "wappalyzergo"; }
        { name = "Webanalyze"; package = "webanalyze"; command = "webanalyze"; }
        { name = "XSStrike"; package = "xsstrike"; command = "xsstrike"; }
        { name = "Kiterunner"; package = "kiterunner"; command = "kr"; }
        { name = "Crawl and Link Finder"; package = "xnlinkfinder"; command = "xnlinkfinder"; }
        { name = "WPrecon"; package = "wprecon"; command = "wprecon"; }
        { name = "Snallygaster"; package = "snallygaster"; command = "snallygaster"; }
      ];
    }

    {
      name = "Vulnerability Assessment";
      tools = [
        { name = "Lynis"; package = "lynis"; command = "lynis"; }
        { name = "Chkrootkit"; package = "chkrootkit"; command = "chkrootkit"; }
        { name = "Rkhunter"; package = "rkhunter"; command = "rkhunter"; }
        { name = "Checksec"; package = "checksec"; command = "checksec"; }
        { name = "Vulnix"; package = "vulnix"; command = "vulnix"; }
        { name = "Nuclei"; package = "nuclei"; command = "nuclei"; }
        { name = "OSV Scanner"; package = "osv-scanner"; command = "osv-scanner"; }
        # { name = "Semgrep"; package = "semgrep"; command = "semgrep"; }
        { name = "Grype"; package = "grype"; command = "grype"; }
        { name = "Trivy"; package = "trivy"; command = "trivy"; }
        { name = "Syft"; package = "syft"; command = "syft"; }
        { name = "Gitleaks"; package = "gitleaks"; command = "gitleaks"; }
        { name = "TruffleHog"; package = "trufflehog"; command = "trufflehog"; }
        { name = "Detect Secrets"; package = "detect-secrets"; command = "detect-secrets"; }
        { name = "Cargo Audit"; package = "cargo-audit"; command = "cargo-audit"; }
        { name = "Pip Audit"; package = "pip-audit"; command = "pip-audit"; }
        { name = "Bandit"; package = "python313Packages.bandit"; command = "bandit"; }
        { name = "Safety"; package = "python313Packages.safety"; command = "safety"; }
        { name = "Checkov"; package = "checkov"; command = "checkov"; }
        { name = "Terrascan"; package = "terrascan"; command = "terrascan"; }
        { name = "TFsec"; package = "tfsec"; command = "tfsec"; }
        { name = "Kube Hunter"; package = "kube-hunter"; command = "kube-hunter"; }
        { name = "Kubeaudit"; package = "kubeaudit"; command = "kubeaudit"; }
        { name = "Kubescape"; package = "kubescape"; command = "kubescape"; }
        { name = "Kube Score"; package = "kube-score"; command = "kube-score"; }
        { name = "Popeye"; package = "popeye"; command = "popeye"; }
      ];
    }

    {
      name = "Password Auditing";
      tools = [
        { name = "John the Ripper"; package = "john"; command = "john"; }
        { name = "Hashcat"; package = "hashcat"; command = "hashcat"; }
        { name = "THC Hydra"; package = "thc-hydra"; command = "hydra"; }
        { name = "Medusa"; package = "medusa"; command = "medusa"; }
        { name = "Ncrack"; package = "ncrack"; command = "ncrack"; }
        { name = "Crunch"; package = "crunch"; command = "crunch"; }
        { name = "CeWL"; package = "cewl"; command = "cewl"; }
        { name = "Hashdeep"; package = "hashdeep"; command = "hashdeep"; }
        { name = "Hashcat Utils"; package = "hashcat-utils"; command = "gpr2crack"; }
        { name = "Fcrackzip"; package = "fcrackzip"; command = "fcrackzip"; }
        { name = "TrueCrack"; package = "truecrack"; command = "truecrack"; }
        { name = "Legba"; package = "legba"; command = "legba"; }
        { name = "Patator"; package = "python313Packages.patator"; command = "patator.py"; }
        { name = "H8mail"; package = "h8mail"; command = "h8mail"; }
        { name = "PassDetective"; package = "passdetective"; command = "passdetective"; }
      ];
    }

    {
      name = "Wireless and Bluetooth";
      tools = [
        { name = "Aircrack-ng"; package = "aircrack-ng"; command = "aircrack-ng"; }
        { name = "Bully"; package = "bully"; command = "bully"; }
        { name = "Cowpatty"; package = "cowpatty"; command = "cowpatty"; }
        { name = "HCX Dump Tool"; package = "hcxdumptool"; command = "hcxdumptool"; }
        { name = "HCX Tools"; package = "hcxtools"; command = "hcxpcapngtool"; }
        { name = "Kismet"; package = "kismet"; command = "kismet"; }
        { name = "Reaver"; package = "reaverwps"; command = "reaver"; }
        { name = "Wavemon"; package = "wavemon"; command = "wavemon"; }
        { name = "Wifite"; package = "wifite2"; command = "wifite"; }
        { name = "KillerBee"; package = "killerbee"; command = "zbid"; }
        { name = "Zigpy CLI"; package = "zigpy-cli"; command = "zigpy"; }
        { name = "ettercap"; package = "ettercap"; command = "ettercap"; }
        { name = "BlueZ"; package = "bluez"; command = "bluetoothctl"; }
      ];
    }

    {
      name = "Network Analysis and Sniffing";
      tools = [
        { name = "TCPdump"; package = "tcpdump"; command = "tcpdump"; }
        { name = "TShark"; package = "wireshark-cli"; command = "tshark"; }
        { name = "Termshark"; package = "termshark"; command = "termshark"; }
        { name = "TCPflow"; package = "tcpflow"; command = "tcpflow"; }
        { name = "Tcpreplay"; package = "tcpreplay"; command = "tcpreplay"; }
        { name = "Netsniff-ng"; package = "netsniff-ng"; command = "netsniff-ng"; }
        { name = "Socat"; package = "socat"; command = "socat"; }
        { name = "Netcat"; package = "netcat-gnu"; command = "nc"; }
        { name = "MTR"; package = "mtr"; command = "mtr"; }
        { name = "Traceroute"; package = "traceroute"; command = "traceroute"; }
        { name = "Iperf3"; package = "iperf3"; command = "iperf3"; }
        { name = "Hping"; package = "hping"; command = "hping3"; }
        { name = "Fping"; package = "fping"; command = "fping"; }
        { name = "Scapy"; package = "python313Packages.scapy"; command = "scapy"; }
        { name = "Ostinato"; package = "ostinato"; command = "ostinato"; }
      ];
    }

    {
      name = "Proxies and Tunneling";
      tools = [
        { name = "Mitmproxy"; package = "mitmproxy"; command = "mitmproxy"; }
        { name = "Proxychains"; package = "proxychains"; command = "proxychains4"; }
        { name = "Redsocks"; package = "redsocks"; command = "redsocks"; }
        { name = "Chisel"; package = "chisel"; command = "chisel"; }
        { name = "Iodine"; package = "iodine"; command = "iodine"; }
        { name = "SSHuttle"; package = "sshuttle"; command = "sshuttle"; }
        { name = "Stunnel"; package = "stunnel"; command = "stunnel"; }
        { name = "WSTunnel"; package = "wstunnel"; command = "wstunnel"; }
        { name = "Corkscrew"; package = "corkscrew"; command = "corkscrew"; }
        { name = "Bore"; package = "bore-cli"; command = "bore"; }
      ];
    }

    {
      name = "Forensics and Recovery";
      tools = [
        { name = "Binwalk"; package = "binwalk"; command = "binwalk"; }
        { name = "Sleuth Kit"; package = "sleuthkit"; command = "fls"; }
        { name = "TestDisk"; package = "testdisk"; command = "testdisk"; }
        { name = "PhotoRec"; package = "testdisk"; command = "photorec"; }
        { name = "Foremost"; package = "foremost"; command = "foremost"; }
        { name = "Scalpel"; package = "scalpel"; command = "scalpel"; }
        { name = "Bulk Extractor"; package = "bulk-extractor"; command = "bulk_extractor"; }
        { name = "Volatility 3"; package = "volatility3"; command = "vol"; }
        { name = "ExifTool"; package = "exiftool"; command = "exiftool"; }
        { name = "Exiv2"; package = "exiv2"; command = "exiv2"; }
        { name = "AFF tools"; package = "afflib"; command = "affinfo"; }
        { name = "DDrescue"; package = "ddrescue"; command = "ddrescue"; }
        { name = "DCFLDD"; package = "dcfldd"; command = "dcfldd"; }
        { name = "Dislocker"; package = "dislocker"; command = "dislocker"; }
        { name = "Ext4magic"; package = "ext4magic"; command = "ext4magic"; }
        { name = "Extundelete"; package = "extundelete"; command = "extundelete"; }
        { name = "RecoverJPEG"; package = "recoverjpeg"; command = "recoverjpeg"; }
        { name = "Safecopy"; package = "safecopy"; command = "safecopy"; }
        { name = "XMount"; package = "xmount"; command = "xmount"; }
        { name = "YARA"; package = "yara"; command = "yara"; }
        { name = "SSDeep"; package = "ssdeep"; command = "ssdeep"; }
        { name = "Magic Rescue"; package = "magicrescue"; command = "magicrescue"; }
      ];
    }

    {
      name = "Reverse Engineering and Exploit Development";
      tools = [
        { name = "GDB"; package = "gdb"; command = "gdb"; }
        { name = "Radare2"; package = "radare2"; command = "r2"; }
        { name = "Rizin"; package = "rizin"; command = "rizin"; }
        { name = "Ghidra"; package = "ghidra"; command = "ghidra"; }
        { name = "Capstone"; package = "capstone"; command = "cstool"; }
        { name = "NASM"; package = "nasm"; command = "nasm"; }
        { name = "Patchelf"; package = "patchelf"; command = "patchelf"; }
        { name = "Strace"; package = "strace"; command = "strace"; }
        { name = "Ltrace"; package = "ltrace"; command = "ltrace"; }
        { name = "AFL++"; package = "aflplusplus"; command = "afl-fuzz"; }
        { name = "Honggfuzz"; package = "honggfuzz"; command = "honggfuzz"; }
        { name = "Radamsa"; package = "radamsa"; command = "radamsa"; }
        { name = "ZZUF"; package = "zzuf"; command = "zzuf"; }
        { name = "Pwntools"; package = "python313Packages.pwntools"; command = "pwn"; }
        { name = "ROPgadget"; package = "python313Packages.ropgadget"; command = "ROPgadget"; }
        # { name = "Angr"; package = "python313Packages.angr"; command = "angr"; }
        { name = "Apktool"; package = "apktool"; command = "apktool"; }
        { name = "JADX"; package = "jadx"; command = "jadx"; }
        { name = "Dex2jar"; package = "dex2jar"; command = "d2j-dex2jar"; }
        { name = "Androguard"; package = "androguard"; command = "androguard"; }
        { name = "ExploitDB SearchSploit"; package = "exploitdb"; command = "searchsploit"; }
        { name = "Linux Exploit Suggester"; package = "linux-exploit-suggester"; command = "linux-exploit-suggester"; }
      ];
    }

    {
      name = "Fuzzing and Load Testing";
      tools = [
        { name = "Boofuzz"; package = "boofuzz"; command = "boofuzz"; }
        { name = "Radamsa"; package = "radamsa"; command = "radamsa"; }
        { name = "Regexploit"; package = "regexploit"; command = "regexploit"; }
        { name = "Siege"; package = "siege"; command = "siege"; }
        { name = "Vegeta"; package = "vegeta"; command = "vegeta"; }
        { name = "Oha"; package = "oha"; command = "oha"; }
        { name = "Drill"; package = "drill"; command = "drill"; }
        { name = "Hey"; package = "hey"; command = "hey"; }
        { name = "Wrk"; package = "wrk"; command = "wrk"; }
        { name = "Ali"; package = "ali"; command = "ali"; }
        { name = "Ddosify"; package = "ddosify"; command = "ddosify"; }
      ];
    }

    {
      name = "Code and Supply Chain Security";
      tools = [
        { name = "GitLeaks"; package = "gitleaks"; command = "gitleaks"; }
        { name = "TruffleHog"; package = "trufflehog"; command = "trufflehog"; }
        { name = "Detect Secrets"; package = "detect-secrets"; command = "detect-secrets"; }
        { name = "Git Secret"; package = "git-secret"; command = "git-secret"; }
        { name = "OSV Detector"; package = "osv-detector"; command = "osv-detector"; }
        { name = "Legitify"; package = "legitify"; command = "legitify"; }
        { name = "Gokart"; package = "gokart"; command = "gokart"; }
        { name = "Pip Audit"; package = "pip-audit"; command = "pip-audit"; }
        { name = "Cargo Audit"; package = "cargo-audit"; command = "cargo-audit"; }
        { name = "Go Vulnerability Check"; package = "govulncheck"; command = "govulncheck"; }
        # { name = "Whispers"; package = "whispers"; command = "whispers"; }
        { name = "Betterleaks"; package = "betterleaks"; command = "betterleaks"; }
        { name = "Kingfisher"; package = "kingfisher"; command = "kingfisher"; }
        { name = "Xeol"; package = "xeol"; command = "xeol"; }
        { name = "Trivy"; package = "trivy"; command = "trivy"; }
      ];
    }

    {
      name = "Cloud and Containers";
      tools = [
        { name = "Prowler"; package = "prowler"; command = "prowler"; }
        { name = "Pacu"; package = "pacu"; command = "pacu"; }
        { name = "Cloudfox"; package = "cloudfox"; command = "cloudfox"; }
        { name = "Cloud Nuke"; package = "cloud-nuke"; command = "cloud-nuke"; }
        { name = "Grype"; package = "grype"; command = "grype"; }
        { name = "Trivy"; package = "trivy"; command = "trivy"; }
        { name = "Dive"; package = "dive"; command = "dive"; }
        { name = "Dockle"; package = "dockle"; command = "dockle"; }
        { name = "Skopeo"; package = "skopeo"; command = "skopeo"; }
        { name = "Podman"; package = "podman"; command = "podman"; }
        { name = "Kubescape"; package = "kubescape"; command = "kubescape"; }
        { name = "Kube Hunter"; package = "kube-hunter"; command = "kube-hunter"; }
        { name = "Kubeaudit"; package = "kubeaudit"; command = "kubeaudit"; }
        { name = "Kube Score"; package = "kube-score"; command = "kube-score"; }
        { name = "Popeye"; package = "popeye"; command = "popeye"; }
        { name = "Terraform"; package = "terraform"; command = "terraform"; }
        { name = "TFLint"; package = "tflint"; command = "tflint"; }
      ];
    }

    {
      name = "Mobile and Hardware";
      tools = [
        { name = "ADB"; package = "android-tools"; command = "adb"; }
        { name = "Scrcpy"; package = "scrcpy"; command = "scrcpy"; }
        { name = "Apktool"; package = "apktool"; command = "apktool"; }
        { name = "JADX"; package = "jadx"; command = "jadx"; }
        { name = "Apkeep"; package = "apkeep"; command = "apkeep"; }
        { name = "ESP Tool"; package = "esptool"; command = "esptool"; }
        # { name = "CHIPSEC"; package = "chipsec"; command = "chipsec_main"; }
        { name = "Teensy Loader CLI"; package = "teensy-loader-cli"; command = "teensy_loader_cli"; }
        { name = "Packetry"; package = "packetry"; command = "packetry"; }
        { name = "Cardpeek"; package = "cardpeek"; command = "cardpeek"; }
        { name = "MFCUK"; package = "mfcuk"; command = "mfcuk"; }
        { name = "MFOC"; package = "mfoc"; command = "mfoc"; }
      ];
    }

    {
      name = "LDAP, SMB and Identity";
      tools = [
        { name = "LDAP Domain Dump"; package = "ldapdomaindump"; command = "ldapdomaindump"; }
        { name = "LDeep"; package = "ldeep"; command = "ldeep"; }
        { name = "OpenLDAP Search"; package = "openldap"; command = "ldapsearch"; }
        { name = "Samba Client"; package = "samba"; command = "smbclient"; }
        { name = "Impacket Secretsdump"; package = "python313Packages.impacket"; command = "secretsdump.py"; }
        { name = "Impacket GetUserSPNs"; package = "python313Packages.impacket"; command = "GetUserSPNs.py"; }
        # { name = "NetExec"; package = "netexec"; command = "nxc"; }
        { name = "Enum4linux-ng"; package = "enum4linux-ng"; command = "enum4linux-ng"; }
      ];
    }

    {
      name = "TLS and Cryptography";
      tools = [
        { name = "OpenSSL"; package = "openssl"; command = "openssl"; }
        { name = "Step CLI"; package = "step-cli"; command = "step"; }
        { name = "IKE Scan"; package = "ike-scan"; command = "ike-scan"; }
        { name = "SSLH"; package = "sslh"; command = "sslh"; }
        { name = "GnuPG"; package = "gnupg"; command = "gpg"; }
        { name = "Age"; package = "age"; command = "age"; }
        { name = "Cfssl"; package = "cfssl"; command = "cfssl"; }
      ];
    }

    {
      name = "VoIP and Services";
      tools = [
        { name = "SIPp"; package = "sipp"; command = "sipp"; }
        { name = "Sngrep"; package = "sngrep"; command = "sngrep"; }
        { name = "Net-SNMP"; package = "net-snmp"; command = "snmpwalk"; }
        { name = "OpenVPN"; package = "openvpn"; command = "openvpn"; }
        { name = "WireGuard"; package = "wireguard-tools"; command = "wg"; }
        { name = "Minicom"; package = "minicom"; command = "minicom"; }
        { name = "Picocom"; package = "picocom"; command = "picocom"; }
      ];
    }

    {
      name = "General Security Utilities";
      tools = [
        { name = "Git"; package = "git"; command = "git"; }
        { name = "OpenSSH Client"; package = "openssh"; command = "ssh"; }
        { name = "GnuPG"; package = "gnupg"; command = "gpg"; }
        { name = "YQ"; package = "yq-go"; command = "yq"; }
        { name = "JQ"; package = "jq"; command = "jq"; }
        { name = "Curl"; package = "curl"; command = "curl"; }
        { name = "Wget"; package = "wget"; command = "wget"; }
        { name = "File"; package = "file"; command = "file"; }
        { name = "Binutils Strings"; package = "binutils"; command = "strings"; }
        { name = "Lsof"; package = "lsof"; command = "lsof"; }
        { name = "Strace"; package = "strace"; command = "strace"; }
        { name = "Tcpdump"; package = "tcpdump"; command = "tcpdump"; }
        { name = "YARA"; package = "yara"; command = "yara"; }
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

  allTools = lib.concatMap
    (group:
      map
        (tool: tool // { groupName = group.name; })
        group.tools
    )
    groups;

  checkedTools = map
    (tool: tool // { packageDrv = resolvePackage tool.package; })
    allTools;

  # Filter unavailable attrs. Repeated tools intentionally share a package
  # but have distinct labels/commands in their category menu.
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
        launcher = pkgs.writeShellScriptBin launcherName ''
          exec ${pkgs.xfce4-terminal}/bin/xfce4-terminal \
            --disable-server \
            --hold \
            --command ${lib.escapeShellArg executable}
        '';
      in
      tool // {
        inherit launcher launcherName;
      }
    )
    tools;

  desktopEntries = pkgs.runCommand "security-tool-desktop-entries"
    { nativeBuildInputs = [ pkgs.desktop-file-utils ]; }
    ''
      mkdir -p "$out/share/applications"

      ${lib.concatMapStrings
        (tool: ''
          cat > "$out/share/applications/${tool.launcherName}.desktop" <<'DESKTOP_EOF'
[Desktop Entry]
Version=1.0
Type=Application
Name=${tool.name}
Comment=Launch ${tool.name} in an XFCE terminal
Exec=${tool.launcher}/bin/${tool.launcherName}
TryExec=${tool.launcher}/bin/${tool.launcherName}
Terminal=false
Categories=System;X-Security;
DESKTOP_EOF
          ${pkgs.desktop-file-utils}/bin/desktop-file-validate \
            "$out/share/applications/${tool.launcherName}.desktop"
        '')
        launchers}
    '';

  populatedGroups = lib.filter
    (group: lib.any (tool: tool.groupName == group.name) tools)
    groups;

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
                  (lib.filter (tool: tool.groupName == group.name) tools)}
              </Include>
            </Menu>
          '')
          populatedGroups}
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

    ${lib.concatMapStrings
      (group: ''
        cat > "$out/share/desktop-directories/security-${lib.strings.sanitizeDerivationName group.name}.directory" <<'DIRECTORY_EOF'
[Desktop Entry]
Type=Directory
Name=${group.name}
DIRECTORY_EOF
      '')
      populatedGroups}
  '';

in
{
  # Keep these output names stable for security-vm.nix.
  packages = map resolvePackage (lib.unique (map (tool: tool.package) tools));
  inherit desktopEntries menuXml menuDirectories missingPackages;

  categories = map
    (group: {
      inherit (group) name;
      tools = map (tool: tool.name)
        (lib.filter (tool: tool.groupName == group.name) tools);
    })
    populatedGroups;

  availableTools = map
    (tool: {
      inherit (tool) name package command groupName;
    })
    tools;
}
