#!/usr/bin/env python2
# Notifier example from tutorial
#
# See: http://github.com/seb-m/pyinotify/wiki/Tutorial
#
import pyinotify, os, sys

watchpath = sys.argv[1]
if watchpath[-1] != '/':
    watchpath += '/'

wm = pyinotify.WatchManager()  # Watch Manager
mask = pyinotify.IN_DELETE | pyinotify.IN_CREATE | pyinotify.IN_MODIFY  # watched events

class EventHandler(pyinotify.ProcessEvent):
  def process_IN_CREATE(self, event):
    pass
    # print "Creating:", event.pathname

  def process_IN_MODIFY(self, event):
    if event.pathname.endswith('txt') or event.pathname.endswith('TESTCURSOR'):
      print "modifying:", event.pathname
      # os.system('curl -X PUT -T - http://localhost:8081 < file.txt')
      # os.system('cat TESTCURSOR file.txt | ./inscursor.py | curl -X PUT -T - http://localhost:8081')
      # os.system('cat ' + watchpath + 'TESTCURSOR ' + watchpath  +'file.txt | ' + watchpath + 'inscursor.py | curl -X PUT -T - http://localhost:8081')
      os.system('cat ' + watchpath  + 'file.txt | curl -X PUT -T - http://localhost:8081')
      

  def process_IN_DELETE(self, event):
    pass
    # print "Removing:", event.pathname

handler = EventHandler()
notifier = pyinotify.Notifier(wm, handler)
# wdd = wm.add_watch('/home/wacfeld/ocn/jax/watch', mask, rec=True)
wdd = wm.add_watch(sys.argv[1], mask, rec=True)

notifier.loop()
