#!/usr/bin/env python
"""
An example for a Modbus TCP client written in Python with pyModbusTCP
--
This is just an example, the code is not optimized for performance,
and should not be used in production without profiling and optimizing first.
"""

# --------------------------------------------------------------------------- #
# import the modbus libraries we need
# --------------------------------------------------------------------------- #
from pyModbusTCP.client import ModbusClient

# --------------------------------------------------------------------------- #
# set up client object
# --------------------------------------------------------------------------- #
client = ModbusClient(host="localhost", port=1502)
client.debug = True

# --------------------------------------------------------------------------- #
# connect to server
# --------------------------------------------------------------------------- #
if not client.open():
    print("unable to connect to %s:%d" % (host, port))
    exit()

# --------------------------------------------------------------------------- #
# read data from server
# --------------------------------------------------------------------------- #
data = client.read_holding_registers(0, 6)
data2 = client.read_holding_registers(10, 6)
if data:
    print("position 0 value=", data)
    print("position 10 value=", data2)
else:
    print("read error")

# --------------------------------------------------------------------------- #
# close connection
# --------------------------------------------------------------------------- #
client.close()
