---
tags:
  - linux
  - bash
  - script
  - code
---
Endlose while-true-Schleife mit `while true; do` oder `while [ true ]`
```bash
#!/bin/bash
while [ true ]
do
	# < HIER CODE EINFÜGEN >
	sleep 5
done
```

Counter für sleep
```bash
while [ "$seconds" -gt 0 ]; do
	echo -ne "Sleeping for $seconds seconds...\r"
	sleep 1
	((seconds--))
done
```

Counter für sleep (Oneliner)
```bash
secs=10; while [ $secs -gt 0 ]; do echo -ne "Countdown: $secs\033[0K\r"; sleep 1; : $((secs--)); done; echo "Countdown complete!"secs=10; while [ $secs -gt 0 ]; do echo -ne "Countdown: $secs\033[0K\r"; sleep 1; : $((secs--)); done; echo "Countdown complete!"
```

Beispiel mit `lolcat pokemon-colorscripts espeak`
```bash
#!/bin/bash
printf "# Special Super Sonic Mega Action Script activated\n\n## just a random pokemon: " | lolcat
pokemon-colorscripts -r
espeak -vja "こんにちは"
espeak -ven "Bitches!"
sleep 1
espeak -s 100 "Special Super Sonic Mega Action Script activated"
espeak -vru "сука блять"
sleep 1
while true; do
	clear; printf "# Special Super Sonic Mega Action Script activated\n" | lolcat
    printf "\n## RANDOM PORN TEXT:\n`sex | lolcat`\n"
    printf "\n## Socket Statistics - Output by ss -tupan\n"
    echo "-----------------"
    ss -tupan | lolcat
    printf "\n## Routing Table - Output by netstat -r\n"
    echo "-----------------"
    netstat -r | lolcat
	sleep 40
	printf "\nRefreshing in 5 seconds now!\n"
	sleep 5
done
```

Executable File: 
![[while-true-loop.BASH.sh]]
