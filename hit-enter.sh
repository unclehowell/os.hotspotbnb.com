#!/bin/bash
echo Y
/usr/bin/xvkbd -xsendevent -text "\[Tab]"
/usr/bin/xvkbd -xsendevent -text "\[TAB]"
/usr/bin/xvkbd -xsendevent -text "\[tab]"

echo Y
echo RETURN
echo ENTER
echo TAB

python /opt/WaveOS/hit-enter.py
