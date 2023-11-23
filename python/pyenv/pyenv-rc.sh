#
# Load pyenv-virtualenv automatically
#
export PYENV_ROOT=VARIABLE_PYENV_ROOT
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

