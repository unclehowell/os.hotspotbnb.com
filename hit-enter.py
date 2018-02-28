#!/usr/bin/env python

from evdev import uinput, ecodes as e

with uinput.UInput() as ui:
     ui.write(e.EV_KEY, e.KEY_ENTER, 1)
     ui.write(e.EV_KEY, e.KEY_ENTER, 0)
     ui.syn()
