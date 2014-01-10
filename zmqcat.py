#!/usr/bin/env python
# -*- coding: utf8 -*-

import sys
import zmq
import socket
import zlib

endpoint = sys.argv[1]
identity = sys.argv[2]
print endpoint
print identity
context = zmq.Context()
sock = context.socket(zmq.PUB)
sock.bind(endpoint)
while 1:
    msg = sys.stdin.readline()
    sock.send_multipart([identity, msg])
