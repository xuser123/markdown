---
tags:
  - linux
  - bash
  - script
  - code
---
make directory-structures
```bash
#!/bin/bash
## for-loop with array
structure=(
  "assets/html"
  "assets/css"
  "assets/js"
  "_Template/Config"
  "_Template/Script"
  "_Template/Model"
  "Bookmark/Docs"
  "Bookmark/Services"
  "Bookmark/Cheatsheets"
)
## "${structure[@]}" can preserve spaces in folder names
for folder in "${structure[@]}"; do
  mkdir -p "$folder"
done
## end of loop
echo "Folders created:"
dir -R ./
```

Executable File: 
![[scrmake_subfolders.BASH.sh]]
