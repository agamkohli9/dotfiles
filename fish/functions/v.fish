function v
if count $argv > /dev/null
if test -d $argv
cd $argv && nvim
else
cd $argv/.. && nvim $argv
end
else
nvim
end
end
