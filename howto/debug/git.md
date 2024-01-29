---
tags:
  - repository
  - github
  - development
  - git
  - shell
  - code
---
## Versionskontrolle
Git Befehle Cheatsheets
### Repository und README.md erstellen
```sh
echo "# xuser123" >> README.md
git init
git add README.md
git commit -m "veryfirst commit"
git branch -M main
```

### Lokales Repository hochladen 
```sh
git remote add origin git@github.com:xuser123/xuser123.git
git push -u origin main
```

### Änderungen temporär speichern
Ohne `commit`, um Branches oder Operationen zu wechseln
```sh
git stash
```

### staged Files wieder unstaged machen
   Durch `git add` hinzugefügte Dateien zurücksetzen
```sh
git reset
```
   
### Commit nachträglich ergänzen
```sh
git add <Dateien>
git commit --amend
```

### Neuen Branche erstellen
Neuen Branch für weitere Änderungen erstellen, von "Hauptzweig" isolieren.
```bash
git checkout -b <new-branch-name>
```
Branches evtl. später zusammenführen (merge).
Good Practice: Vor Operationen, die Affekt auf working directory haben, **Backups erstellen**!

### Typische Fehlermeldung
`! [rejected] main -> main (non-fast-forward)` erscheint wenn beim push lokaler Änderungen, das Repository zuvor remote verändert wurde.
##### Die Lösung
ist ein **pull der kürzlichen (letzten) Änderung**, von remote auf lokal, um die aktuellste Version des Repository lokal zu übernehmen (Good Practice!)
```sh
git pull origin main
```
Nach dem pull wird Git die alle Änderungen automatisch zusammenführen (merge). Wenn Konflikte enstehen müssen sie manuell gelöst werden.

### Merge (manuelle Zusammenführung)
 Anschließend nochmal `add`, `commit` und `push origin main`
```sh
git add .
git commit -m "Merge changes"
git push origin main
```

### Rebase übernimmt Merge
Danach `push -f` und `origin/main` überschreiben
```sh
git rebase origin/main
git push -f origin main
```
VORSICHT! `git push -f` überschreibt Dateien vorheriger Versionen

### ...oder Änderung auf seperates Branch pushen
```sh
git checkout -b new_branch
git add .
git commit -m "Your commit message"
git push origin new_branch
```

### ...bei Unsicherheit log ansehen
`git log` um ins Protokoll zu schauen
```sh
git log
```

### log Details und andere Optionen
Kompakte, one-line Representation jedes commits
  ```sh
  git log --oneline
  ```

Änderungen jedes commits anzeigen
  ```sh
  git log -p
  ```

log anderer branch ansehen
  ```bash
  git log branch_name
  ```

Anzahl angezeigter commits limitieren
  ```bash
  git log -n 5  # Shows the latest 5 commits
  ```

Graphische Representation und commit-Verlauf
  ```bash
  git log --graph --oneline --all
  ```
  
### .gitignore Einträge um Dateien zu ignorieren
Dateien (im directory) in .gitignore eintragen um sie von Versionierung aus zu schließen. Hier eine umfangreiche Vorlage für verschiedene Usecases
```sh
# General
/node_modules
/.vscode
/.idea
/.DS_Store

# Build files
/dist
/build
/out

# Dependency directories
/bower_components

# Logs and testing files
/logs
/coverage
/test-results

# Environment files
.env.local
.env.development.local
.env.test.local
.env.production.local

# IDE specific files
/.vscode
*.code-workspace

# Package lock files
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# PHP files
*.php

# Web server configuration files
.htaccess

# Static content files
CNAME
templates
php.ini

# Miscellaneous system files
.directory
_backup_
.bash_history
.cache
.config
.gnupg
.lesshst
logfiles
.ssh
.viminfo
.git
```

### FIX git push Authentification
How to fix remote git authentication from local repo via personal access token
1. Generate Personal Access Token (classic)
	- Github -> Settings -> Developer Settings
2. Personal access tokens -> Tokens (classic)
	- Generate new token (classic), copy token
3. Local git Settings:
 ```sh
 git remote set-url origin https://<username>:<token>@github.com/<username>/<repository>.git
git status; git remote -v
```
# Literatur zum Selbststudium

*   [Git Tutorial – The Ultimate Guide von Julen Pardo](https://www.javacodegeeks.com/2016/07/git-tutorial.html "Git Tutorial – The Ultimate Guide von Julen Pardo")
*   [Pro Git von Scott Chacon](http://fiae.link/ProGit "Scott Chacon - Pro Git")
*   [Git Fundamentals von James Kovacs](http://fiae.link/GitFundamentals "James Kovacs - Git Fundamentals")
*   [Git Cheat Sheet](https://fachinformatiker-anwendungsentwicklung.net/git-cheat-sheet/ "Git Cheat Sheet")
*   [Git-Tipps für Fortgeschrittene (aber auch Anfänger)](https://fachinformatiker-anwendungsentwicklung.net/git-tipps-fuer-fortgeschrittene-aber-auch-anfaenger/ "Git-Tipps für Fortgeschrittene (aber auch Anfänger)")
*   [Wie man eine gute Git-Commit-Nachricht schreibt](https://fachinformatiker-anwendungsentwicklung.net/wie-man-eine-gute-git-commit-nachricht-schreibt/ "Wie man eine gute Git-Commit-Nachricht schreibt")
*   [Ein sinnvoller Git-Workflow](https://fachinformatiker-anwendungsentwicklung.net/ein-sinnvoller-git-workflow/ "Ein sinnvoller Git-Workflow")


# Allgemeine Fragen zu Git

1.  Wofür braucht man eine Versionsverwaltungssoftware?
1.  Was sind die Vorteile einer Versionsverwaltungssoftware?
1.  Was ist SVN?
1.  Was ist Git?
1.  Was sind die Vorteile von Git gegenüber SVN?
1.  Was ist ein Repository?
1.  Welche Befehle musst du ausführen, um dir ein Repository zu klonen?
1.  Was ist eine Arbeitskopie?
1.  Welche Befehle musst du ausführen, um deine Arbeitskopie aus einem entfernten Repository zu aktualisieren?
1.  Was ist ein Commit?
1.  Welche Befehle musst du ausführen, um dir die aktuellen Änderungen in deiner Arbeitskopie anzuschauen?
1.  Welche Befehle musst du ausführen, um deine Änderungen zu "committen"?
1.  Wie ist eine sinnvolle Commit-Nachricht aufgebaut?
1.  Welche Befehle musst du ausführen, um Inhalte im letzten Commit zu korrigieren/ergänzen?
1.  Welche Befehle musst du ausführen, um deine eigenen Commits in ein entferntes Repository zu übertragen?
1.  Welche Befehle musst du ausführen, um den Inhalt deiner Arbeitskopie auf einen alten Commit zurückzusetzen?
1.  Welche Befehle musst du ausführen, um dir die Commit-Historie eines Repositorys anzuschauen?
1.  Was ist der Index?
1.  Was ist ein Branch?
1.  Wie heißt der Standard-Branch in Git? Wie in SVN?
1.  Was ist ein Merge?
1.  Was ist ein Tag?

# Fragen zum eigenen Ausbildungsbetrieb

1.  Wofür setzt dein Unternehmen Git/SVN ein?
1.  Was musst du tun, um Git an deinem eigenen Arbeitsplatz nutzen zu können?
1.  Wo kannst du dir die Repositorys deines Unternehmens anschauen?
1.  Welche besonderen Regeln für Commit-Nachrichten gibt es bei deinem Unternehmen?
1.  Welche Branching-Strategie verfolgt dein Unternehmen?
