ip netns add T11
ip netns exec T11 ip link set lo up
ip link add macvlan1 link enp1s0np1 type macvlan mode bridge
ip link set macvlan1 netns T11
ip netns exec T11 ip link set macvlan1 up
ip netns exec T11 ip addr add 10.2.5.11/24 dev macvlan1
ip netns exec T11 ip addr
