---
tags:
  - linux
  - bash
  - script
  - code
---
Sleep-Sort Algorythm Bash Script
```bash
sleep_sort() {
	while [ -n "$1" ]
	do
		(sleep $1; echo $1) &
		shift
	done
	wait
}
```

