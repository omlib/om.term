#!bash

## ::title::: shell completion

_::name::_complete(){
	local cur opts
	COMPREPLY=()
	cur="${COMP_WORDS[COMP_CWORD]}"
	#prev="${COMP_WORDS[COMP_CWORD-1]}"
	opts=$(samba __complete__ $COMP_LINE $COMP_CWORD)
	COMPREPLY=($(compgen -W "$opts" -- $cur))
}
complete -F _::name::_complete ::name::
