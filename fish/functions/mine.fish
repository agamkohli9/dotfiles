# Defined interactively
function mine
killall t-rex
sudo t-rex -a ethash -o stratum+tcp://eth-us-east1.nanopool.org:9999 -u 0xEF0E3BBc96B7a026EBE1201F26Fe858E5D1Cbd7B.worker/agamkohli9@gmail.com -p x --kernel 4 --dag-build-mode 2 --intensity 25 --lock-cclock 1150
end
