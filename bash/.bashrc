#enable vi mode
set -o vi

# Set the Terminal Prompt PS1 variable, resulting in 
# ┌──[Oct/21/2024 6:36 PM]─[username@hostname]─[~]
# └──╼ $ 
# Those are 4 elements (timestamp, username, hostname, and working directory)
# separated with some text strings, adding a bit of color.
# I like breaking out the variable using concatenation to better understand 
# what is going on:

# Begin with a blank PS1 variable
PS1=""

# Start Light green
PS1+="\[\e[1;32m\]"
# First text string
PS1+="┌──["
# End color
PS1+="\[\em\]"

# Start Light Blue
PS1+="\[\e[1;34m\]"
# Date and Time
PS1+='\D{%b/%d/%Y %-I:%M %p}'
# End color
PS1+="\[\em\]"

# Start Light green
PS1+="\[\e[1;32m\]"
# Another separating text string
PS1+="]─["
# End color
PS1+="\[\em\]"

# Username (no color)
PS1+="\u"

# Start Light green
PS1+="\[\e[1;32m\]"
# @ sign between user and host
PS1+="@"
# End color
PS1+="\[\em\]"

# Start Light Blue
PS1+="\[\e[1;34m\]"
# Hostname
PS1+="\h"
# End color
PS1+="\[\em\]"

# Start Light green
PS1+="\[\e[1;32m\]"
# Another separating text string
PS1+="]─["
# End color
PS1+="\[\em\]"

# PWD (no color)
PS1+="\w"

# Start Light green
PS1+="\[\e[1;32m\]"
# Final text
PS1+="]\n└──╼ $ "
# End color
PS1+="\[\em\]"

