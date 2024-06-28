function v
if count $argv > /dev/null
if test -d $argv
nvim
else
nvim $argv
end
else
nvim
end
end
