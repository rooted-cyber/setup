
PROMPT=$'
%{\033[1;91m%} ╭─%{\033[1;91m%}[%{\033[1;96m%}Termux%{\033[0m%}%B@%{\033[93m%}%B%m%{\033[1;91m%}]%{\033[1;91m%}──%{\033[1;91m%}[%{\033[0m%}%{\033[32m%}%~%{\033[1;91m%}]%{\033[1;91m%}%{\033[1;91m%}─[%{\033[1;92m%}%B%T%{\033[1;91m%}]
 %{\033[1;91m%}╰───%{\033[1;96m%}➤ %{\033[6 q%}'

setopt prompt_subst
background_jobs="%(1j.%F{2}%f.)"
non_zero_return_value="%(0?..%F{1}%f)"
# Input in bold
zle_highlight=(default:bold, fg=white)

ZSH_THEME_GIT_PROMPT_PREFIX="%F{8}%K{8}%F{0} %K{2} %F{black}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%k%}%F{2}%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{1}*%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""
function get_date() { echo "$(date +'%d/%b/%y')" }
function get_time() { echo "$(date +'%l:%M')" }
function get_time_pm() { echo "$(date +'%p')" }
get_day ()
{
echo "$(date +'%a')"
}
_dd ()
{
        echo "%F{2}%K{2}%F{white}%B$(get_date)%b %K{8} %F{0}$(get_day)%{%k%}%F{8}%f"
}
_time ()
{
echo "%F{0}%K{0}%F{white}$(get_time) %K{8} %F{4}$(get_time_pm)%{%k%}%F{8}%f"
}
RPROMPT=' $background_jobs $non_zero_return_value $(git_prompt_info) $(_dd)'
