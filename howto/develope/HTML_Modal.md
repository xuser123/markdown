5 Zeilen HTML, 28 Zeilen CSS und 14 Zeilen JS
- Button "Open Modal" öffnet Modal mit Bild und X-Zeichen als Schließfunktions-Icon.
- Durch Klicken auf das X-Icon oder außerhalb des Modals wird das Modal geschlossen.
#### HTML-Code
1. `<div>` mit `class="modal ` beginnen 
	- `<span>` mit `class="close"` einbinden
		- X-Zeichen als HTML-Referenz-Code `&times;` einfügen
1. `<img>` mit `src="Pfad/Bild.jpg"` und `class="modal-content"` platzieren
2. `</div>` Abschluss
3. `<button>` mit `id="open-modal"` und Beschriftung platzieren 

```html
<div class="modal">
  <span class="close">&times;</span>
  <img src="path/to/image.jpg" class="modal-content">
</div>
<button id="openModal">Open Modal</button>
```

#### CSS-Code
```css
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}
.modal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 600px;
  height: auto;
}
.close {
  position: absolute;
  top: 20px;
  right: 30px;
  font-size: 50px;
  font-weight: bold;
  color: #f1f1f1;
  cursor: pointer;
}
```

#### JavaScript-Code
```js
// Get the modal
var modal = document.querySelector('.modal');

// Get the button that opens the modal
var btn = document.getElementById("openModal");

// Get the <span> element that closes the modal
var span = modal.querySelector('.close');

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
```
