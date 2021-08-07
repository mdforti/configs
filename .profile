# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#########
### Iniciar nueva bitacora
TODAY=$(date +%Y%m%d)
export TODAY
HOY=$(date +%d/%m/%Y)
export HOY
ROOTLOG=/home/mariano/Bitacoras/$(date +%Y)
TEMPLATES=$ROOTLOG/daytlte/TODAY.md 
TODAY_LOG=$ROOTLOG/$TODAY/TODAY.md
export TODAY
export HOY

function bi() {

if [ ! -d $ROOTLOG/$TODAY ]; then mkdir $ROOTLOG/$TODAY ; fi
cd $ROOTLOG/$TODAY

if [ ! -f $TODAY_LOG ]
then
  cp $TEMPLATES $TODAY_LOG
  echo $TEMPLATES
  echo $TODAY_LOG
  sed "s|HOY|$HOY|g" $TEMPLATES > $TODAY_LOG 
  logger -t MARIANOFORTI "$TODAY_LOG"
  logger -t MARIANOFORTI "Se generó la bitácora de hoy, $TODAY "
else
  logger -t MARIANOFORTI "la bitácora de hoy ya existe"
fi

vim TODAY.md +"vsplit ~/Bitacoras/$(date +%Y)/ListaDeTareas"$(date +%Y)".md"

}

if [ ! $(pidof dropbox) ] 
then
  /opt/bin/dropbox.py start
 else
    logger -t MARIANOFORTI "dropbox esta corriendo a las $(date +%h)"
 fi

#/bin/bash

#  custom remapint hjkl to vim movement.
# if [ -n "$SSH_CLIENT" ] || [  -n "$SSH_TTY" ]
# then:
#   SESSION_TYPE=remote/ssh
# fi
# if [ -z $SESSION_TYPE ]
# then
