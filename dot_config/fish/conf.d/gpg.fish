set -x GPG_TTY (tty)
gpg-connect-agent updatestartuptty /bye >/dev/null
set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
