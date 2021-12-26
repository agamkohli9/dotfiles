# How to contribute to Linux Kernel:
# 1) run "$patch" to find TODOS in drivers/staging
# 2) go on agam-patch branch
# 3) check errors on <file> with "$~/github/staging/scripts/checkpatch.pl -f --terse <file>"
# 4) commit changes with "$git commit -a"
# 	Staging: <driver>: <file_without_extension>: <summary>
# 	
# 	<bigger summary>
#
# 	Signed-off-by: Agam Kohli <agamkohli9@gmail.com>
# 5) run "$git format-patch master..agam-patch"
# 6) mutt -H <patch_file>
# 	send to: gregkh@linuxfoundation.org, cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org

function patch
cd /home/agam/github/staging/drivers/staging/
clear
find . -name "TODO" -print0 | xargs -0 grep "checkpatch.pl"
end
