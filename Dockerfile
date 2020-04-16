FROM nginx
 
RUN apt -y update && apt -y install wget curl dnsutils tcpdump iptables iproute2 iputils-ping procps vim inetutils-traceroute telnet

