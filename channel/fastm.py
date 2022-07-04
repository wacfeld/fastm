#!/usr/bin/env python3

# channel{{{1
#
# Server that will accept connections from a Vim channel.
# Run this server and then in Vim you can open the channel:
#  :let handle = ch_open('localhost:8765')
#
# Then Vim can send requests to the server:
#  :let response = ch_sendexpr(handle, 'hello!')
#
# And you can control Vim by typing a JSON message here, e.g.:
#   ["ex","echo 'hi there'"]
#
# There is no prompt, just type a line and press Enter.
# To exit cleanly type "quit<Enter>".
#
# See ":help channel-demo" in Vim.
#
# This requires Python 2.6 or later.

from __future__ import print_function
import json
import socket
import sys
import threading

from sympy import *

from graphics import *

# from tkinter import *

import time, os, subprocess, sys, tempfile, shutil

try:
    # Python 3
    import socketserver
except ImportError:
    # Python 2
    import SocketServer as socketserver

thesocket = None

class ThreadedTCPRequestHandler(socketserver.BaseRequestHandler):

    def handle(self):
        print("=== socket opened ===")
        global thesocket
        thesocket = self.request

        # win = GraphWin("win", 500, 500) # init window
        vieweropen = False
        pid = None

        while True:
            try:
                data = self.request.recv(4096).decode('utf-8')
            except socket.error:
                print("=== socket error ===")
                break
            if data == '':
                print("=== socket closed ===")
                break
            print("received: {0}".format(data))
            try:
                decoded = json.loads(data)
                exp = '$$' + decoded[1] + '$$'

                # convert latex into png
                # preview(exp, output='png', viewer='imvr')
                preview(exp, filename='output.png', output='png', viewer='file')
                if not vieweropen:
                    vieweropen = True
                    os.system('imvr output.png &')

                    pids = (int(x) for  x in exshell('pidof imvr').split(' '))
                    pid = max(pids)
                else:
                    os.system('imv-msg ' + str(pid) + ' close')
                    os.system('imv-msg ' + str(pid) + ' open output.png')

                # display
                # img = Image(Point(250, 250), 'output.png')
                # img.draw(win)
                
                # img = PhotoImage(file='output.png')
                # Label(
                #     ws,
                #     image=img
                # ).pack()
                # # ws.mainloop()
                # ws.update()
                
            except ValueError:
                print("json decoding failed")
                decoded = [-1, '']

            # Send a response if the sequence number is positive.
            # Negative numbers are used for "eval" responses.
            if decoded[0] >= 0:
                if decoded[1] == 'hello!':
                    response = "got it"
                    id = decoded[0]
                elif decoded[1] == 'hello channel!':
                    response = "got that"
                    # response is not to a specific message callback but to the
                    # channel callback, need to use ID zero
                    id = 0
                else:
                    response = "what?"
                    id = decoded[0]
                encoded = json.dumps([id, response])
                print("sending {0}".format(encoded))
                self.request.sendall(encoded.encode('utf-8'))
        thesocket = None

class ThreadedTCPServer(socketserver.ThreadingMixIn, socketserver.TCPServer):
    pass

# filesystem{{{1

# get output of shell command
def exshell(comm):
    res = subprocess.run(comm.split(' '), stdout=subprocess.PIPE).stdout.decode('utf-8').strip('\n')
    return res

def formatdir(name): # adds '/' to end of dir path if necessary
    if name.endswith('/'):
        return name
    else:
        return name + '/'

# main{{{1
if __name__ == "__main__":
    # # create tkinter window
    # ws = Tk()
    # ws.mainloop()

    # get name of file
    srcpath = sys.argv[1]

    # setup temporary directory
    tmpdir = formatdir("/dev/shm")
    if not os.path.exists(tmpdir):
        tmpdir = formatdir("/tmp")
    td = tempfile.TemporaryDirectory(dir=tmpdir)
    os.chdir(td.name)

    # setup channel
    HOST, PORT = "localhost", 8765

    server = ThreadedTCPServer((HOST, PORT), ThreadedTCPRequestHandler)
    ip, port = server.server_address

    # Start a thread with the server -- that thread will then start one
    # more thread for each request
    server_thread = threading.Thread(target=server.serve_forever)

    # Exit the server thread when the main thread terminates
    server_thread.daemon = True
    server_thread.start()
    print("Server loop running in thread: ", server_thread.name)

    print("Listening on port {0}".format(PORT))
    while True:
        typed = sys.stdin.readline()
        if "quit" in typed:
            print("Goodbye!")
            break
        if thesocket is None:
            print("No socket yet")
        else:
            print("sending {0}".format(typed))
            thesocket.sendall(typed.encode('utf-8'))

    server.shutdown()
    server.server_close()
