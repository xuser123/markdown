``` html
<audio controls	src="/media/audio/file.mp3">
	<a href="/media/audio/file.mp3">Hier runterladen</a>
</audio>
```
Attribute aus globalen Attributen: 
- `autoplay`
- `controls`
- `controlslist`
- `crossorigin`, Werte:
	- `anonymous`
	- `use-credentials`
- `disableremoteplayback`
- `loop` Wiedergabe wiederholen
- `muted` Stumm beginnen (default: false)
- `preload`, Werte:
	- `none` nicht vorladen
	- `metadata` nur Audio-Metadaten abrufen
	- `auto` Direkter Download-Dialog, ohne Klick
- `src` URL der einzubettenden Datei