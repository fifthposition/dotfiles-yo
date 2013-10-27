# Export All The Things
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi
export SVN_EDITOR="vim"
export JAVA_OPTS='-Xms128m -Xmx2048m -XX:MaxPermSize=512m -server'

# And of course
clear && fortune | $(ls /usr/local/bin/cow* | gshuf -n1) -n -f $(ls /usr/local/Cellar/cowsay/3.03/share/cows/ | gshuf -n1)

# "Save The Keystrokes, Save The Planet"(TM)
alias gra="grails clean && grails run-app"

# Allow for Misspellings
alias gti=git
alias bim=vim

# Set up GVM
[[ -s "/Users/ebenezer/.gvm/bin/gvm-init.sh" && -z $(which gvm-init.sh | grep '/gvm-init.sh') ]] && source "/Users/ebenezer/.gvm/bin/gvm-init.sh"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
