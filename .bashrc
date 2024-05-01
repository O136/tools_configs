PROMPT_COMMAND=__prompt_command    # Function to generate PS1 after CMDs

__prompt_command() {
    local EXIT="$?"                # This needs to be first
    PS1="┌──(\u@\h)-[ "

    local RCol='\[\e[0m\]'

    local Red='\[\e[0;41m\]'
    local Gre='\[\e[0;32m\]'
    local BYel='\[\e[1;33m\]'
    local BBlu='\[\e[1;34m\]'
    local Pur='\[\e[0;35m\]'

    if [ $EXIT != 0 ]; then
        EXIT="${Red}$EXIT${RCol}"        # Add red if exit code non 0
    fi

    PS1+="$EXIT ]-[ \j ]\n└─ "
}
