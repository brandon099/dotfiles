complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline -pc); aws_completer | tr -d \' \'; end)'
complete --command aws --no-files --condition '__fish_is_first_token' --arguments profile
complete --command aws --no-files --condition '__fish_seen_subcommand_from profile' --arguments '(aws profiles)'

