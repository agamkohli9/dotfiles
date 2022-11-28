function v
	if test -d $argv
		cd $argv && nvim
	else
		cd $argv/.. && nvim $argv
	end
end
