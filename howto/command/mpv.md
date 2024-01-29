
Play a Playlist
```sh
mpv --playlist=[playlist_file]
```

Loop file
```sh
mpv --loop [filename]
```

Loop Playlist
```sh
mpv --loop-playlist [playlist_file]
```

Randomize Playlist
```sh
mpv --shuffle [playlist_file]
```

Specify Audio Output
```sh
mpv --audio-device=[audio_device] [filename]
```

Display Subtitles from file
```sh
mpv --sub-file=[subtitle_file] [filename]
```

Adjust Subtitle Delay
```sh
mpv --sub-delay= [+/-] [seconds] [filename]
```

Custom Configuration File
```sh
mpv --config=[config_file]
```

Display Playback Time
```sh
mpv --osd-playing-msg="(${=time-pos}): ${=duration}" [filename]
```

Save Playback Position
```sh
mpv --save-position-on-quit [filename]
```

Adjust Playback Speed
```sh
mpv --speed=[speed_factor] [filename]
```

Youtube Videos
```sh
mpv "https://youtu.be/link"
```

Rotate 90°
```sh
mpv --video-rotate=90 --video-aspect-override=16:10
```

aspect ratio 16:10
```sh
mpv --video-aspect-override=16:10
```
### Shortcuts / Keybinds
**Basic**
- Play: `mpv [filename]`
- Pause/Play: `space`
- Stop: `q`
- Seek forward/backward: `Right/Left Arrow`
- Toggle Repeat-Loop: `L`
- Set A-B Loop: `l`
- Increase volume: `9`
- Decrease volume: `0`
- Mute/Unmute: `m`
- Next/Previous file: `n/p`
- Fast forward/rewind: `Alt+Right/Alt+Left Arrow`
**Miscellaneous:**
- Cycle through audio tracks: `#`
- Cycle through subtitles: `j`
- Cycle through video aspect ratios: `A`
- Zoom in/out: `z/Z`
- Increase/decrease speed 50%: `}`
- Increase/decrease speed 10%: `]`
- Reset speed: `Shift + =`
- Show video information: `Ctrl + I`
- Take a screenshot: `s`
- Toggle fullscreen: `f`
- Quit: `q`

Customize key bindings in `input.conf`