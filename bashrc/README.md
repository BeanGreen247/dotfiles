# zsh
![How it looks.](bashrc.png)

Just replace PS1 with this in your bashrc file
```
PS1='\[\e[0;1;93m\]|\[\e[0;1;93m\]\u\[\e[0;38;5;214m\]@\[\e[0;1;38;5;196m\]\h \[\e[0;91m\][\[\e[0;1;93m\]\t\[\e[0;91m\]] \[\e[0;1;93m\]\w \[\e[0;93m\]branch:\[\e[0;1;93m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)\[\e[0;1;93m\]|\n\[\e[0;93m\]>\[\e[0;93m\]>\[\e[0;93m\]> \[\e[0m\]'
```
