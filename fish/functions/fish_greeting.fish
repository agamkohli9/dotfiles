function fish_greeting
  if not set -q TMUX
    tmux a 2>/dev/null; or tmux
  end
  neofetch
end
