ip netns add T10
ip netns exec T10 ip link set lo up
ip link add macvlan0 link enp1s0np0 type macvlan mode bridge
ip link set macvlan0 netns T10
ip netns exec T10 ip link set macvlan0 up
ip netns exec T10 ip addr add 10.2.5.10/24 dev macvlan0
ip netns exec T10 ip addr
