
Open Source Voice Syntesizer ( Text-to-Speech )
```sh
espeak "Spreche mit Standard Sprache"
espeak -vja "こんにちは" # japanese
espeak -ven "Bitches!" # english
espeak -vru "сука блять" # russian
```

Gesprochenen Text als WAV-Datei speichern
```sh
espeak -w output.wav "Dein Text hier"
```

eSpeak NG text-to-speech: 1.51.1  Data at: /usr/share/espeak-ng-data
### Options
-f <text file>   Text file to speak
--stdin    Read text input from stdin at once till to the end of a stream.

If neither -f nor --stdin are provided, then <words> from arguments are spoken,
or text is spoken from stdin, read separately one line by line at a time.

-a <integer>
	   Amplitude, 0 to 200, default is 100
-d <device>
	   Use the specified device to speak the audio on. If not specified, the
	   default audio device is used.
-g <integer>
	   Word gap. Pause between words, units of 10mS at the default speed
-k <integer>
	   Indicate capital letters with: 1=sound, 2=the word "capitals",
	   higher values indicate a pitch increase (try -k20).
-l <integer>
	   Line length. If not zero (which is the default), consider
	   lines less than this length as end-of-clause
-p <integer>
	   Pitch adjustment, 0 to 99, default is 50
-s <integer>
	   Speed in approximate words per minute. The default is 175
-v <voice name>
	   Use voice file of this name from espeak-ng-data/voices
-w <wave file name>
	   Write speech to this WAV file, rather than speaking it directly
-b	   Input text encoding, 1=UTF8, 2=8 bit, 4=16 bit 
-m	   Interpret SSML markup, and ignore other < > tags
-q	   Quiet, don't produce any speech (may be useful with -x)
-x	   Write phoneme mnemonics to stdout
-X	   Write phonemes mnemonics and translation trace to stdout
-z	   No final sentence pause at the end of the text
--compile=<voice name>
	   Compile pronunciation rules and dictionary from the current
	   directory. <voice name> specifies the language
--compile-debug=<voice name>
	   Compile pronunciation rules and dictionary from the current
	   directory, including line numbers for use with -X.
	   <voice name> specifies the language
--compile-mbrola=<voice name>
	   Compile an MBROLA voice
--compile-intonations
	   Compile the intonation data
--compile-phonemes=<phsource-dir>
	   Compile the phoneme data using <phsource-dir> or the default phsource directory
--ipa      Write phonemes to stdout using International Phonetic Alphabet
--path="<path>"
	   Specifies the directory containing the espeak-ng-data directory
--pho      Write mbrola phoneme data (.pho) to stdout or to the file in --phonout
--phonout="<filename>"
	   Write phoneme output from -x -X --ipa and --pho to this file
--punct="<characters>"
	   Speak the names of punctuation characters during speaking.  If
	   =<characters> is omitted, all punctuation is spoken.
--sep=<character>
	   Separate phonemes (from -x --ipa) with <character>.
	   Default is space, z means ZWJN character.
--split=<minutes>
	   Starts a new WAV file every <minutes>.  Used with -w
--stdout   Write speech output to stdout
--tie=<character>
	   Use a tie character within multi-letter phoneme names.
	   Default is U+361, z means ZWJ character.
--version  Shows version number and date, and location of espeak-ng-data
--voices=<language>
	   List the available voices for the specified language.
	   If <language> is omitted, then list all voices.
--load     Load voice from a file in current directory by name.
-h, --help Show this help.
