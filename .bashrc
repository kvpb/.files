source ~/.aliases
source ~/.functions

date | grep -C6 --color "\b$(date +%e)\b"; cal | sed -n '1!p' | grep -C6 --color "\b$(date +%e)\b"
