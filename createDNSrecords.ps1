Install-WindowsFeature  -name dns  -includeManagementTools
Add-DnsServerPrimaryZone -Name "ngcp51.ph" -ZoneFile "ngcpM.ph.dns"
add-DnsServerResourceRecord -zonename ngcpM.ph -A -name ns  -ipv4address 10.51.1.10
add-DnsServerResourceRecord -zonename ngcpM.ph -Cname -name www -hostname ns.ngcpM.ph
add-DnsServerResourceRecord -zonename ngcpM.ph -Cname -name imap -hostname ns.ngcpM.ph
add-DnsServerResourceRecord -zonename ngcpM.ph -Cname -name pop -hostname ns.ngcpM.ph
add-DnsServerResourceRecord -zonename ngcpM.ph -Cname -name smtp -hostname ns.ngcpM.ph
###FOR CISCO DEVICES DNS RECORDS;
add-DnsServerResourceRecord -zonename ngcpM.ph -A -name cb  -ipv4address 10.51.1.4
add-DnsServerResourceRecord -zonename ngcpM.ph -A -name ct  -ipv4address 10.51.1.2
add-DnsServerResourceRecord -zonename ngcpM.ph -A -name cm  -ipv4address 10.51.100.8
add-DnsServerResourceRecord -zonename ngcpM.ph -A -name ed  -ipv4address 10.51.51.1
add-DnsServerResourceRecord -zonename ngcpM.ph -A -name p1  -ipv4address 10.51.100.101
add-DnsServerResourceRecord -zonename ngcpM.ph -A -name p2  -ipv4address 10.51.100.102
add-DnsServerResourceRecord -zonename ngcpM.ph -A -name c1  -ipv4address 10.51.50.6
add-DnsServerResourceRecord -zonename ngcpM.ph -A -name c2  -ipv4address 10.51.50.8
add-DnsServerResourceRecord -zonename ngcpM.ph -A -name ap  -ipv4address 10.51.10.3
