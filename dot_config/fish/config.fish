# General Settings
set fish_greeting
set fish_term24bit 1

# Exports
set PATH $HOME/.bin $HOME/.golang/bin $HOME/.local/bin $PATH
set -x EDITOR "vim -X"
set -x VISUAL vim
set -x LANG "en_US.UTF-8"
set -x GOPATH $HOME/.golang/
set -x LD_LIBRARY_PATH /lib:/usr/lib:/usr/local/lib

# Java GUI in BSPWM
set -x _JAVA_AWT_WM_NONREPARENTING 1

# Theme
set fish_color_normal normal
set fish_color_command 81a1c1
set fish_color_quote a3be8c
set fish_color_redirection b48ead
set fish_color_end 88c0d0
set fish_color_error ebcb8b
set fish_color_param eceff4
set fish_color_comment 434c5e
set fish_color_match --background=brblue
set fish_color_selection white --bold --background=brblack
set fish_color_search_match bryellow --background=brblack
set fish_color_history_current --bold
set fish_color_operator 00a6b2
set fish_color_escape 00a6b2
set fish_color_cwd green
set fish_color_valid_path --underline
set fish_color_cwd_root red
set fish_color_autosuggestion 4c566a
set fish_color_user brgreen
set fish_color_host normal
set fish_color_cancel -r
set fish_pager_color_completion normal
set fish_pager_color_description yellow --italics
set fish_pager_color_prefix white --bold
set fish_pager_color_progress brwhite --background=brblack

# Custom Key Bindings
function fish_user_key_bindings
    # Prepend Sudo
    bind \e\e prepend_sudo
end

# Start X at login on Linux
switch (uname)
case Linux
    if not set -q SSH_CONNECTION
        if status --is-login
            if test -z "$DISPLAY" -a "$XDG_VTNR" -eq 1
                if type -q startx
                    exec startx -- -keeptty
                end
            end
        end
    end
end

# THEME PURE #
set -g pure_enable_k8s true
set -g pure_color_git_dirty pure_color_warning
