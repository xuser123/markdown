Website-Informationen im < head > Bereich
```html
<!DOCTYPE html>
<html lang="de">
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!-- Jumi Favicon (Browser-Tab-Icon) -->
<link rel="icon" href="content/includes/favicon.png">
<!-- Jumi CSS -->
<link rel="stylesheet" href="content/includes/style.css">
<!-- Metadata -->
<meta name="description" content="Study IT Information"/>
<meta name="keywords" content="Code,Learn,Study"/>
<meta name="author" content="Jumi"/>
<title>Jumi.biz</title>
</head>
```
Nützliche Anweisungen an Browser:
```css
html:focus-within { /* Set core root defaults */ 
scroll-behavior: smooth; 
} 
*, *::before, ::after { /* Box sizing rules */ 
box-sizing: border-box; 
} 
body { /* Set core body defaults */ 
min-height: 100vh; 
text-rendering: optimizeSpeed; 
} 
body, h1, h2, h3, h4, p, figure, blockquote, dl, dd { 
/* Remove default margin */
margin: 0;
}
```