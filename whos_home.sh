me = "IP_ADDRESS"
sister = "IP_ADDRESS"
mom = "IP_ADDRESS"
dad = "IP_ADDRESS"

nmap -sn 192.168.1.0/24 | grep iPhone | cut -d " " -f 6 | tr -d "(" | tr -d ")" > iplist.txt

for ip in $(cat iplist.txt);
do
  if [ $ip == $me ]
  then
    echo "My device is at home."
  elif [ $ip == $sister ]
  then
    echo "My sister's at home."
  elif [ $ip == $mom ]
  then
    echo "My mom is at home."
  elif [ $ip == $dad ]
  then
    echo "My dad is at home."
  else
    echo "Nobody is at home."
  fi & done
  
rm iplist.txt
