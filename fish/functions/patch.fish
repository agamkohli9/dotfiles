function patch
cd /home/agam/github/staging/drivers/staging/
find . -name "TODO" -print0 | xargs -0 grep "checkpatch.pl"
end
