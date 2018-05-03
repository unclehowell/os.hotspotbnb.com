#!/bin/bash
echo "Content-type: text/html"
echo ""
echo "<html><head><title>Bash as CGI"
echo "</title></head><body>"

echo "<h1>Hello world</h1>"
echo "Today is $(date)"

echo "</body></html>"
