#enable vi mode
set -o vi


# Set the Terminal Prompt PS1 variable, resulting in 
# ┌──[Oct/21/2024 6:36 PM]─[username@hostname]─[~]
# └──╼ $ 


# Start with a blank PS1 variable
PS1=""

# Start Light green
PS1+="\[\e[1;32m\]"
# Start the prompt text
PS1+="┌──["
# End color
PS1+="\e[m"

# Start Light Blue
PS1+="\[\e[1;34m\]"
# Date and Time
PS1+='\D{%b/%d/%Y %-I:%M %p}'
# End color
PS1+="\e[m"

# Start Light green
PS1+="\[\e[1;32m\]"
# Continue text
PS1+="]─["
# End color
PS1+="\e[m"

# Username (no color)
PS1+="\u"

# Start Light green
PS1+="\[\e[1;32m\]"
# @
PS1+="@"
# End color
PS1+="\e[m"

# Start Light Blue
PS1+="\[\e[1;34m\]"
# Hostname
PS1+="\h"
# End color
PS1+="\e[m"

# Start Light green
PS1+="\[\e[1;32m\]"
# Continue text
PS1+="]─["
# End color
PS1+="\e[m"

# PWD
PS1+="\w"

# Start Light green
PS1+="\[\e[1;32m\]"
# Continue text
PS1+="]\n└──╼ $ "
