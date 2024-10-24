## Setup Hyperledger Besu on lxc container:
```
sudo chmod +x besu_setup.sh
./besu_setup.sh
```
## Add besu to system path
```
nano .bashrc
alias besu="/root/besu-24.1.1/bin/besu"
source .bashrc
```

## Fixing internet access

Run on host machine (root):
```
for ipt in iptables iptables-legacy ip6tables ip6tables-legacy; do $ipt --flush; $ipt --flush -t nat; $ipt --delete-chain; $ipt --delete-chain -t nat; $ipt -P FORWARD ACCEPT; $ipt -P INPUT ACCEPT; $ipt -P OUTPUT ACCEPT; done
systemctl reload snap.lxd.daemon
```
