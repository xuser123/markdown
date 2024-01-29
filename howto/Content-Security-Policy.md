---
tags:
  - security
  - html
  - csp
  - detection
  - prevention
---
CSP for Detection and Protection against XSS Data-Injection
Read: [developer.mozilla.org - Content-Security-Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy)
```html
<meta
  http-equiv="Content-Security-Policy"
  content="default-src 'self'; img-src https://*; child-src 'none';" />
```
