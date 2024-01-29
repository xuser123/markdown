#!bin/bash
echo 'all files in "Music" directory will be listed as absolute path in "created-playlist.m3u"'
find ~/Music/ -type f > ~/created-playlist.m3u
cat ~/created-playlist.m3u
echo 'done'
