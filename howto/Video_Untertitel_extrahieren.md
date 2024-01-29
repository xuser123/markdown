```sh
ffmpeg -i input_video.mp4 -c:s mov_text output_subtitle.srt
```


For the "Invalid argument" error during subtitle extraction with FFmpeg, it could be due to various reasons. Here's a concise troubleshooting guide:

1. **Check Input Video:**
   - Verify that the input video file is valid and accessible.
   - Confirm the file format and codec compatibility.

2. **Check Subtitle Format:**
   - Try using a different subtitle format. For example, change `mov_text` to `srt` or vice versa.

   ```bash
   ffmpeg -i input_video.mp4 -c:s srt output_subtitle.srt
   ```

3. **Specify Codec:**
   - Explicitly specify the codec for the subtitle file.

   ```bash
   ffmpeg -i input_video.mp4 -c:s mov_text:output_subtitle.srt
   ```

## Using REGEX for Subtitle Editing:
For the provided text sequence "00:00:20,820 --> 00:00:23,689," you can use the following regular expression (regex) pattern to match it:

```regex
\d{2}:\d{2}:\d{2},\d{3} --> \d{2}:\d{2}:\d{2},\d{3}
```

Explanation:

- `\d{2}`: Matches exactly two digits.
- `:`: Matches the colon character.
- `\d{2}`: Matches exactly two digits.
- `:`: Matches another colon character.
- `\d{2}`: Matches exactly two digits.
- `,`: Matches the comma character.
- `\d{3}`: Matches exactly three digits.

This pattern captures the time format "hh:mm:ss,SSS" for both start and end times separated by the " --> " sequence.

Here's a breakdown of the sequence:

```
00:00:20,820 --> 00:00:23,689
```

And here's how the regex pattern matches it:

- `\d{2}:\d{2}:\d{2},\d{3}` matches the start time "00:00:20,820."
- ` --> ` matches the space and arrow characters between start and end times.
- `\d{2}:\d{2}:\d{2},\d{3}` matches the end time "00:00:23,689."

Feel free to use this regex pattern in your programming language or text editor of choice for matching this specific time sequence pattern.

To match empty lines using regex, you can use the following pattern:

```regex
^\s*$
```

Explanation:

- `^`: Asserts the start of the line.
- `\s*`: Matches zero or more whitespace characters (including spaces, tabs, and line breaks).
- `$`: Asserts the end of the line.

This pattern effectively matches lines that contain only whitespace characters or are entirely empty.

Here's a breakdown:

- `^`: Start of the line.
- `\s*`: Zero or more whitespace characters.
- `$`: End of the line.

So, `^\s*$` will match lines that are entirely empty or contain only whitespace characters.

If you are working with multiline text and want to match empty lines in between non-empty lines as well, you might need to adjust depending on the specific requirements of your task.

## Remove Duplicates in Subtitle Files
On Arch Linux, you can use the `uniq` command to remove duplicate lines from a file. Here's a concise guide:

1. **Remove Duplicate Lines:**
   - Use the `uniq` command to remove duplicate lines from the file.

   ```bash
   uniq input_file > output_file
   ```

This will create a new file (`output_file`) without duplicate lines. If you want to modify the existing file in-place, you can use:

```bash
uniq -i input_file > temp_file && mv temp_file input_file
```

This command creates a temporary file, removes duplicates, and then replaces the original file with the modified one.

## REGEX for pattern: text newline number newline text

To match a pattern where you have a line of text, followed by a newline, then a number, followed by another newline, and finally, another line of text, you can use the following regex pattern:

```regex
^.*\n\d+\n.*$
```

Explanation:

- `^`: Asserts the start of the line.
- `.*`: Matches any character (except for a newline) zero or more times.
- `\n`: Matches a newline character.
- `\d+`: Matches one or more digits.
- `\n`: Matches another newline character.
- `.*`: Matches any character (except for a newline) zero or more times.
- `$`: Asserts the end of the line.

This pattern will match lines that conform to the pattern "text newline number newline text." Adjust it according to your specific needs.

If you are working with a multiline text and want to match multiple occurrences of this pattern, consider using the `m` (multiline) flag, depending on the regex engine you are using. For example, in many programming languages, you can use `re.MULTILINE` or `re.M` to enable multiline mode.

Video Cuttings (Abschnitte speichern)

To install ffmpeg on Arch Linux, use the following command in your terminal:

```bash
sudo pacman -S ffmpeg
```

Once installed, you can use the following command to cut a video:

```bash
ffmpeg -i input.mp4 -ss START_TIME -t DURATION -c copy output.mp4
```

Replace "input.mp4" with the name of your input video file, set the "START_TIME" to the beginning of the segment you want to cut, and "DURATION" to the length of the segment. Adjust the "output.mp4" with the desired name for the output file.

Example:

```bash
ffmpeg -i myvideo.mp4 -ss 00:01:30 -t 00:02:00 -c copy cut_video.mp4
```

This command cuts a segment starting from 1 minute and 30 seconds into the video, with a duration of 2 minutes.

If you have specific requirements or need more advanced editing features, feel free to ask for additional details.