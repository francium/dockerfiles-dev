from francium/dev/base-arch

run pacman -Sy
RUN pacman --noconfirm -S wget

run mkdir -p tmp/zig
workdir tmp/zig
run wget https://github.com/ziglang/zig/releases/download/0.5.0/zig-linux-x86_64-0.5.0.tar.xz
run tar -xf zig-linux-x86_64-0.5.0.tar.xz && rm zig-linux-x86_64-0.5.0.tar.xz
workdir zig-linux-x86_64-0.5.0
run mv zig /usr/local/bin &&\
    mv lib/zig /usr/local/lib/zig

run rm -rf /tmp/zig
run rm -rf /var/lib/pacman/* /var/cache/* /var/log/*

workdir /mnt

user francium
