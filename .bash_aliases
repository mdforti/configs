# ssh aliases 

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ls="ls -lhX --color --group-directories-first"


#alias ls="ls -gG -lhX --color --group-directories-first"


alias gnupterm="gnome-terminal --command gnuplot --title gnuplot"

alias word='env WINEPREFIX="/home/mariano/.wine" wine C:\\windows\\command\\start.exe /Unix /home/mariano/.wine/dosdevices/c:/users/mariano/Menú\ Inicio/Programas/Microsoft\ Office/Microsoft\ Office\ Word\ 2007.lnk'
# use vifm for cd menu:
alias cdm="vifm +only"

alias sheldon="ssh -X mforti@sheldon.cnea.gov.ar" 
alias isaac="ssh -X isaac"
alias doro="ssh -X dorotea"
alias medea="ssh -X mariano@medea"
alias daeprint='ssh -X mariano@daeprinter'
alias bridge="ssh -f -Nn "
alias mdesktop="ssh -L 8080:localhost:80 mariano@mdesktop -p 22"

# most common commands
alias tls="tmux list-sessions"
alias tach="tmux attach -t "
alias t="/usr/bin/tmux"
alias s="/bin/su"
alias v="/opt/bin/vesta"
alias e="exit"
# dropbox startand status
alias dtus="dropbox.py status"
alias dsta="dropbox.py start"

#git aliases
alias gs='git status ' 
alias ga='git add ' 
alias gb='git branch ' 
alias gc='git commit' 
alias gd='git diff' 
alias go='git checkout ' 
alias gk='gitk --all&' 
alias gx='gitx --all' 

# destinos comunes para cd
# Proyectos-Interfaces
alias cint=" cd /data/Proyectos/interfaces/iron-magnetite/orient-001/FeO2-term/"
# Proyectos/Zr1010
alias czr="cd /data/Proyectos/Superficies/Zr1010/Alloys/"
# Bitacoras / 2018
# alias bi="cd /home/mariano/Bitacoras/$(date +%Y)/"
# Comprobantes de Pago
# cuentas por mes
alias cnt="localc /home/mariano/Dropbox/ComprobantesPago/$(date +%Y)/cuentas\ por\ mes\ $(date +%Y).xls"
alias cnt21="localc /home/mariano/Dropbox/ComprobantesPago/$(date +%Y)/cuentas\ por\ mes\ $(date +%Y).xls"
alias cah="localc /home/mariano/Dropbox/ComprobantesPago/$(date +%Y)/Economia$(date +%Y).xls"
alias cah21="localc /home/mariano/Dropbox/ComprobantesPago/$(date +%Y)/Economia$(date +%Y).xls"
# lista de tareas
alias lta="localc /home/mariano/Dropbox/Bitacora$(date +%Y)/ListaDeTareas$(date +%Y).ods"

# cd a directorios de trabajo
alias cv="cd ~/CuadernoTrabajo/CV/"
alias res="cd ~/CuadernoTrabajo/Interfaces/Resumen$(date +%Y)-FeO2term"
alias cla="cd ~/modelizacion/$(date +%Y)_Ingenieria/Clases$(date +%Y)"
alias tbi="cd ~/Bitacoras/$(date +%Y)/"

# Algunas cosas de Wine
# OriginLab
alias origin="env WINEPREFIX=~/.wine-origin wine ~/.wine-origin/drive_c/Program\ Files/OriginLab/Origin85/Origin85.exe"

alias conda_init="source ~/.condasource"
