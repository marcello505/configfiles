#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi
