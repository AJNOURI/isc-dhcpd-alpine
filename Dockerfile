FROM alpine
MAINTAINER AJ NOURI - ajn.bin@gmail.com
RUN apk update
RUN apk add dhcp
ADD dhcpd.conf /etc/dhcpd.conf
RUN touch /var/lib/dhcp/dhcpd.leases
VOLUME ["/etc/","/var/lib/dhcp/"]

