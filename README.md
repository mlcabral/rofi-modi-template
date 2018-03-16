# rofi-modi-template
Basic rofi custom modi script template in bash

### Enable modi
```bash
rofi -modi "<name>:<path/to/script>"
```
### Run rofi showing only a custom modi
```bash
rofi -modi "<name>:<path/to/script>" -show <name>
```
```<name>``` can contain spaces, but it must be enclosed in quotes when used with ```-show```
```bash
rofi -modi "<modiname>:<path/to/script>" -show <modiname>
rofi -modi "<modi name>:<path/to/script>" -show "<modi name>"
```
### Template pseudo-code/working principle
- Run rofi without any arguments
- if [no arguments given]
- then print options to stdout, separated by newlines;
 - rofi re-launches with the options now printed to stdout
- else run command(s) for option given as first given argument
