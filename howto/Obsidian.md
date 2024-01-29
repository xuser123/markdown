Quelle: [Obsidian-Cheatsheet-Repo](https://github.com/ieshreya/Obsidian-Cheat-Sheet.git)
### General Keybinds 🕹️
Shortcut Key		|		Functions
:-----------------:|-----------------:
Ctrl + S|Editor: Saves the file
Ctrl + N| Creates a new note
Ctrl + P| Open command pallete
Ctrl + O | Opens Quick Switcher
Ctrl + Shift + F  | Search in all files
Ctrl + G   | Opens graph view
Ctrl +  Alt + ← | Navigate Back
Ctrl +  Alt + → | Navigate forth
Ctrl + F | Searches current file
Ctrl + E | Toggle edit/preview modes
Ctrl + , | Open Settings
Ctrl + Tab | Next tab
Ctrl + Shift + Tab | Previous tab
Alt + Tab | Next App
Alt + Shift + Tab | Previous App
Win + Tab | Task View
Win + Shift + Tab |  Next Window
### Editing Keybinds 🕹️
| Shortcut Key | Functions |
| :--: | ---: |
| Ctrl + B | Bold Selected Text |
| Ctrl + I | Italicize Selected Text |
| Ctrl + K | Insert External Link to Selected Text |
| Ctrl + ] | Indent |
| Ctrl + [ | Unindent |
| Ctrl + D | Delete current line |
| Ctrl + V | Duplicate current line |
| Ctrl + Click | Open Note in Current Panel via Link |
| Ctrl + Shift + Click | Open Note in New Panel via Link |
| Ctrl + P (Cmd + P on Mac) | Quick Search |
| Ctrl + N (Cmd + N on Mac) | New Note |
| Ctrl + Shift + D (Cmd + Shift + D on Mac) | Create a Daily Note |
| Ctrl + / (Cmd + / on Mac) | Toggle Command Palette |
| Ctrl + E (Cmd + E on Mac) | Open Graph View |
| Ctrl + Click (Cmd + Click on Mac) | Open Link in New Pane |
### Links
[[Internal Link]] `[[fileaddress]]`
[External Link](URL)`[Text](URL)`
Embedded Filecontent: `![[fileadress]]`
### Task List
```markdown
#t: # Task\n- [ ] Task 1\n- [ ] Task 2\n- [ ] Task 3
```
Type `#t` to quickly add a task list template.
### Idea Note
```markdown
#i: # Idea\n- Date: ![[<% tp.date.now() %>]]\n- Idea: 
```
Use `#i` for a template to capture and organize your ideas.
### Daily Journal
```markdown
#d: # Daily Journal\n- Date: ![[<% tp.date.now() %>]]\n- Mood: \n- What happened today: 
```
Type `#d` to create a template for daily journal entries.
### Reading Log
```markdown
#r: # Reading Log\n- Date: ![[<% tp.date.now() %>]]\n- Book: \n- Author: \n- Thoughts: 
```
Type `#r` to create a template for logging your reading experiences.
### Code Snippet
```markdown
#code: # Code Snippet\n```python\n# CODE_HERE\n-->ADD_BRACKETS
```
### Macros
**Thema:** {{meeting_topic}}
**Datum:** {{date}}
**Uhrzeit:** {{time}}
**Teilnehmer:** {{participants}}
**Hauptpunkte:**
- Punkt 1: {{main_point_1}}
- Punkt 2: {{main_point_2}}
**Aktionsschritte:**
- [ ] Aktion 1: {{action_1}}
- [ ] Aktion 2: {{action_2}}
**Nächste Schritte:** {{next_steps}}
**Zusätzliche Notizen:** {{additional_notes}}