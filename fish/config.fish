if status is-interactive
   # Commands to run in interactive sessions can go here
   if not set -q TMUX; and tmux ls &> /dev/null
    exec tmux a
   end
end
