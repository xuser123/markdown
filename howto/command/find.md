search "W0RD" in filename and execute 'cat' on each file:
```sh
find . -type f -name "*W0RD*" -exec bash -c 'cat' {} \;
```

search "W0RD"  in filename and put "1337" between prefix and suffix:
```sh
find . -type f -name '*WORD*' -exec bash -c 'for file; do mv "$file" "${file%.*}.1337.${file##*.}"; done' _ {} +
```

search "W0RD" in filename and replace "W0RD" with "1337":
```sh
find . -type f -name '*WORD*' -exec bash -c 'for file; do mv "$file" "$(echo "$file" | sed "s/W0RD//").1337.${file##*.}"; done' _ {} +
```

search "W0RD" in filename and add Suffix ".1337":
```sh
find . -type f -name "*.W0RD" -exec bash -c 'mv "$0" "${0%.1337}"' {} \;
```
