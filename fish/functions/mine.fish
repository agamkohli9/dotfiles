# Defined interactively
function mine
killall t-rex
sudo t-rex -a ethash -o stratum+tcp://us2.ethermine.org:4444 -u 0xEE6f48ED8C3F69fe7fF5C38ca8FaC53F2bB44a8f -p x # --kernel 4 --dag-build-mode 2 --intensity 25 --lock-cclock 1150
end
