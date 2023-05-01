#!/usr/bin/env python
"""
An example for a Modbus TCP server written in Python with pyModbusTCP
--
This is just an example, the code is not optimized for performance,
and should not be used in production without profiling and optimizing first.
"""

# --------------------------------------------------------------------------- #
# import the modbus libraries we need
# --------------------------------------------------------------------------- #
from pyModbusTCP.server import ModbusServer, DataBank
from datetime import datetime
import logging

# --------------------------------------------------------------------------- #
# create an instance of ModbusServer
# --------------------------------------------------------------------------- #
# server = ModbusServer("localhost", 502, data_bank=MyDataBank(), no_block=True)
logging.basicConfig(format='%(asctime)s %(message)s',level=logging.DEBUG)
# 此處IP 要改成 Server 所在，如果跟Server 不同 是不會listen 502 這個port的
server = ModbusServer("127.0.0.1", 1502, no_block=True)

try:
    print("Start server...")
    server.start()
    print("Server is online")
    print("Write values to the DataBank")
    server.data_bank.set_holding_registers(10, [999, 888, 777])
    while True:
        now = datetime.now()
        v_regs_d = [now.year, now.month, now.day, now.hour, now.minute, now.second]
        server.data_bank.set_holding_registers(0, v_regs_d)
except:
    print("Server is offline")
finally:
    print("Stop server...")
    server.stop()
