#/bin bash

        

1. Basic Network Commands #:

ip a or ip addr #: Show or manipulate IP addresses.
ip link # #: Display or modify the state of network interfaces.
ip route #: Show or manipulate routing tables.
nmcli #: Command-line client for NetworkManager to manage network connections.
# Example  nmcli device status shows the status of network interfaces.
# Example  nmcli connection up <connection_name> brings up a network connection.
nmtui #: A text user interface for NetworkManager.
Run nmtui to launch a graphical interface in the terminal to manage network connections.
ping <hostname_or_ip> #: Check the reachability of a host.
traceroute <hostname_or_ip> #: Trace the route packets take to a network host.
hostnamectl #: Control the system hostname.
# Example  hostnamectl set-hostname new_hostname to change the system's hostname.

2. Managing Network Services #:

systemctl status network #: Check the status of the network service.
systemctl restart network #: Restart the network service.
systemctl enable network #: Enable the network service to start on boot.
systemctl disable network #: Disable the network service from starting on boot.
systemctl status NetworkManager #: Check the status of the NetworkManager service.
systemctl restart NetworkManager #: Restart the NetworkManager service.

3. Interface Configuration #:

ifup <interface_name> #: Bring up a network interface.
ifdown <interface_name> #: Take down a network interface.
ifconfig #: Configure network interfaces (less commonly used in RHEL 8 and later, ip command is preferred).
ethtool <interface_name> #: Display or change Ethernet device settings.
mii-tool <interface_name> #: Display or modify the media-independent interface status.

4. Firewall Configuration #:

firewall-cmd --state #: Check the firewall state (running or not).
firewall-cmd --get-active-zones #: Get active zones.
firewall-cmd --add-port=<port>/tcp --permanent #: Add a port to the firewall (e.g., --add-port=80/tcp).
firewall-cmd --reload #: Reload firewall settings.
firewall-cmd --list-all #: List all firewall settings.

5. DNS Configuration #:

resolvectl #: Manage DNS settings (RHEL 8+).
nslookup <hostname> #: Query DNS to obtain the domain name or IP address.
dig <hostname> #: Query DNS to get detailed information.

6. TCP/UDP Connection Management #:

netstat -tuln #: List all listening ports (TCP and UDP).
ss -tuln #: Similar to netstat, but faster and more modern.
telnet <hostname_or_ip> <port> #: Test TCP connectivity to a specific port.
nc -zv <hostname_or_ip> <port> #: Similar to telnet but with more options (from the nmap package).

7. Advanced Network Configuration #:

ip netns #: Manage network namespaces.
bridge #: Manage and configure Ethernet bridges.
tc #: Traffic control, configure network traffic queuing, and policy.