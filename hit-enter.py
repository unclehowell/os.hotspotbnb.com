import uinput

device = uinput.Device([
        uinput.KEY_Enter,
        ])

device.emit_click(uinput.KEY_Enter)
