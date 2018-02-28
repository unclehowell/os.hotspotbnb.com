#!/usr/bin/env python

import uinput

device = uinput.Device([
        uinput.KEY_Tab,
        ])

device.emit_click(uinput.KEY_Tab)
