
NOTHING_ENV_HOME=/deploy/envs
NOTHING_BASHRC_HOME=~/.nothing.d
NOTHING_CONFIG_HOME=/deploy/config

if [ ! -d $NOTHING_BASHRC_HOME ]; then
  mkdir $NOTHING_BASHRC_HOME
fi

