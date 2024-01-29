Aufruf von Inhalten anderer Domains ohne Einverständnis des Lesers verstößt gegen die DSGVO. Inhalte auf den eigenen Server kopieren.
- Fonts brauchen Vervielfälltigungsrechte
- Müssen lokal auf Server gespeichert sein
	- Schriftart wählen:
		- Google Fonts: [Google Fonts](https://fonts.google.com/specimen/Tilt+Prism)
	- CSS Code: [CSS Code](https://fonts.googleapis.com/css2?family=Tilt+Prism) 
	- [font-face Attribut in CSS](https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face )

```css
url(https://fonts.gstatic.com/s/tiltprism/v5/5h11iZgyPHoZ3YikNzWGfWey2dCAZXT-bH9V4VGn-FJ7tLI25oc_rIbAqD6qr84.woff2) format('woff2');`
```

```css
src: url(tiltprism/5h11iZgyPHoZ3YikNzWGfWey2dCAZXT-bH9V4VGn-FJ7tLI25oc_rIbAqT6qr84.woff2) format('woff2');
```

```css
/* vietnamese */ 
@font-face { 
  font-family: 'Tilt Prism'; 
  font-style: normal; 
  font-weight: 400; 
  src: url(https://fonts.gstatic.com/s/tiltprism/v5/5h11iZgyPHoZ3YikNzWGfWey2dCAZXT-bH9V4VGn-FJ7tLI25oc_rIbAqT6qr84.woff2) format('woff2'); 
  unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB; 
} 
/* latin-ext */ 
@font-face { 
  font-family: 'Tilt Prism'; 
  font-style: normal; 
  font-weight: 400; 
  src: url(https://fonts.gstatic.com/s/tiltprism/v5/5h11iZgyPHoZ3YikNzWGfWey2dCAZXT-bH9V4VGn-FJ7tLI25oc_rIbAqD6qr84.woff2) format('woff2'); 
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF; 
} 
/* latin */ 
@font-face { 
  font-family: 'Tilt Prism'; 
  font-style: normal; 
  font-weight: 400; 
  src: url(https://fonts.gstatic.com/s/tiltprism/v5/5h11iZgyPHoZ3YikNzWGfWey2dCAZXT-bH9V4VGn-FJ7tLI25oc_rIbApj6q.woff2) format('woff2'); 
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD; 
} 
```
