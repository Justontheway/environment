#
# Load pyenv-virtualenv automatically
#
export PATH="VARIABLE_PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

