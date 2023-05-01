#! /usr/bin/env bash
tshark -r telnet.pcapng -Y "telnet.data" -T fields -e ip.src -e ip.dst -e telnet.data
