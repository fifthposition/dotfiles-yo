# Export All The Things
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi
export SVN_EDITOR="vim"
export JAVA_HOME=`/usr/libexec/java_home -v 1.6`
export JAVA_HOME=`/usr/bin/local/grails`
export JAVA_OPTS='-Xms128m -Xmx2048m -XX:MaxPermSize=512m -server'
export PATH="$JAVA_HOME/bin:$GRAILS_HOME/bin:$PATH"

# And of course
clear && fortune | $(ls /usr/local/bin/cow* | gshuf -n1) -n -f $(ls /usr/local/Cellar/cowsay/3.03/share/cows/ | gshuf -n1)

# "Save The Keystrokes, Save The Planet"(TM)
alias gra="grails clean && grails compile && grails run-app"

# Allow for Misspellings
alias gti=git
alias bim=vim
alias vmi=vim



#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/ebenezer/.gvm/bin/gvm-init.sh" ]] && source "/Users/ebenezer/.gvm/bin/gvm-init.sh"
