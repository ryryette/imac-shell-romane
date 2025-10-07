#"Atelier 4"
# Script "infos système" de l'exercice 4
#-----------------

#!/bin/bash

echo "# SYSTEM"
echo "OS: $(lsb_release -d | cut -f2) ($(uname -m))"

echo "# HARDWARE"
echo "CPU:"
echo "CPU(s): $(nproc)"
echo "Cores: $(grep -c '^core id' /proc/cpuinfo)"
echo "Total Memory: $(free -h | awk '/Mem:/ {print $2}')"
echo "Total Disk Space: $(df -h --total | awk '/total/ {print $2}')"
echo "$(grep 'model name' /proc/cpuinfo | head -1 | cut -d: -f2 | xargs)"

echo "# CURRENT STATE"
echo "Used Memory: $(free -h | awk '/Mem:/ {print $3 " / " $2}')"
echo "Swap: $(free -h | awk '/Swap:/ {print $3 " / " $2}')"
echo "Used Disk Space: $(df -h --total | awk '/total/ {print $5}')"

