#!/usr/bin/env python

def AltTab():
    """Press Alt+Tab and hold Alt key for 2 seconds
    in order to see the overlay.
    """
    PressKey(VK_MENU)   # Alt
    PressKey(VK_TAB)    # Tab
    ReleaseKey(VK_TAB)  # Tab~
    time.sleep(2)
    ReleaseKey(VK_MENU) # Alt~


import uinput

device = uinput.Device([
        uinput.KEY_Tab,
        ])

device.emit_click(uinput.KEY_Tab)
