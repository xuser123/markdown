---
tags:
  - linux
  - bash
  - script
  - code
---
with files found by "find" command
```bash
#!bin/bash
echo 'all files in "Music" folder will be listed as absolute path in "created-playlist.m3u"'
find ~/Music/ -type f > ~/created-playlist.m3u
cat ~/created-playlist.m3u
echo 'done'
```

Executable File: 
![[make_playlist.BASH.sh]]
