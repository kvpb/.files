date | grep -C6 --color "\b$(date +%e)\b"; cal | sed -n '1!p' | grep -C6 --color "\b$(date +%e)\b"
echo 'cd bin/autotss && python3 autotss.py && cd'
