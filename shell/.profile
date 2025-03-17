# Ensure zsh is running
export SHELL=`which zsh`
[ -z "${ZSH_VERSION}" ] && exec "${SHELL}" -l