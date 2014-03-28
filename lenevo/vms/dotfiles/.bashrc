#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

LANG='en_US.UTF-8'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export PATH="$PATH:/home/ddaggett/bin"

# Fix for Java in DWM
# https://wiki.archlinux.org/index.php/Dwm#Fixing_misbehaving_Java_applications
wmname LG3D

