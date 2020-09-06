from francium/dev/base-debian

run apt-get update
run apt-get install --yes python3 python3-pip python3-setuptools python3-wheel ninja-build
run rm -rf /var/lib/apt/lists/* /var/cache/apt/
run pip3 install meson

workdir /mnt

user francium
