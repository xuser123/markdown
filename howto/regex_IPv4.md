IPv4-Adressen validieren

Beste Variante (43 Zeichen):
```regex
^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.?\b){4}$
```

Diese Version verkürzt die Dinge um weitere 6 Zeichen, wobei der negative Lookahead nicht verwendet wird, 
was in einigen Regex-Varianten nicht unterstützt wird. Neueste, kürzeste, am wenigsten lesbare Version (49 Zeichen):
```regex
^((25[0-5]|(2[0-4]|1[0-9]|[1-9]|)[0-9])(\.(?!$)|$)){4}$
```

Die `[0-9]`-Blöcke können an 2 Stellen durch `\d` ersetzt werden - das macht es etwas weniger lesbar, aber definitiv kürzer.
Noch neuer, noch kürzer, zweite am wenigsten lesbare Version (55 Zeichen):
```regex
^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)(\.(?!$)|$)){4}$
```

Diese Version sucht nach dem Fall 250-5, danach werden geschickt alle möglichen Fälle für 200-249 100-199 10-99 ODER-verknüpft. 
Beachten Sie, dass der `|)`-Teil kein Fehler ist, sondern tatsächlich den letzten Fall für den Bereich 0-9 verodert. 
Ich habe auch den Teil `?:`, der die Gruppe nicht erfasst, weggelassen, da wir uns nicht wirklich für die erfassten Elemente interessieren, 
sie würden so oder so nicht erfasst werden, wenn wir nicht von vornherein eine vollständige Übereinstimmung hätten.

Alte und kürzere Version (weniger lesbar) (63 Zeichen):
```regex
^(?:(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])(\.(?!$)|$)){4}$
```

Ältere (lesbare) Version (70 Zeichen):
```regex
^(?:(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])(\.(?!$)|$)){4}$
```

Es verwendet die negative Vorausschau `(?!)`, um den Fall auszuschließen, dass die IP mit einem "a" endet.
Alternative Lösung, die einige der neueren Techniken verwendet (71 Zeichen):
```regex
^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.){3}(25[0-5]|(2[0-4]|1\d|[1-9]|)\d)$
```

Nützlich in Regex-Implementierungen, wo Lookaheads nicht unterstützt werden. 
Älteste Lösung (115 Zeichen):
```regex
^(?:(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.){3}(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])$
```

Dies ist ein sehr genauer und strenger Regex-Ausdruck, 
es akzeptiert nicht Dinge wie "000.021.01.0." Es scheint, dass die meisten anderen Varianten 
dies tun und zusätzliche Ausdrücke erfordern, um ähnliche Fälle abzulehnen, 
d.h. 0-beginnende Nummmern und eine IP, die mit "a" endet.

Quelle: [stackoverflow.com/questions/5284147/validating-ipv4-addresses-with-regexp](https://stackoverflow.com/questions/5284147/validating-ipv4-addresses-with-regexp#5284410)

Gute Seite: [codeflow.site - Regular Expressions](https://www.codeflow.site/de/article/regular-expressions__how-to-validate-ip-address-with-regular-expression)
