if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
    exec sway
fi

pgrep xfsettingsd || xfsettingsd >/dev/null 2>&1 &

export TERM=xterm

. "$HOME/.cargo/env"

#FreeFileSync: ensure the freefilesync symlink will be found:

export XDG_DATA_DIRS="$XDG_DATA_DIRS:/var/lib/snapd/desktop/applications/:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:/usr/local/share:/usr/share"

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export CARGO_HOME="$XDG_DATA_HOME"/cargo
export DOTNET_CLI_HOME="$XDG_DATA_HOME"/dotnet
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export MYPY_CACHE_DIR="$XDG_CACHE_HOME"/mypy
export NODE_REPL_HISTORY="$XDG_STATE_HOME"/node_repl_history
export NPM_CONFIG_INIT_MODULE="$XDG_CONFIG_HOME"/npm/config/npm-init.js                                     
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME"/npm                                                          
export NPM_CONFIG_TMP="$XDG_RUNTIME_DIR"/npm
export NVM_DIR="$XDG_DATA_HOME"/nvm
export PYTHONSTARTUP="$XDG_CONFIG_HOME"/python/pythonrc
export RENPY_PATH_TO_SAVES="$XDG_DATA_HOME"
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export VOLTA_HOME="$XDG_DATA_HOME"/volta
export WAKATIME_HOME="$XDG_CONFIG_HOME"/wakatime

export PATH="/opt:$CARGO_HOME/bin:$HOME/bin:$HOME/.local/bin:$HOME/.npm-global/bin:$PATH"

. "$HOME/.local/share/../bin/env"
