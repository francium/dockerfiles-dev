from debian:stable-slim

run apt-get update
run apt-get install --yes wget xz-utils
run rm -rf /var/lib/apt/lists/*

run mkdir -p tmp/zig
workdir tmp/zig
run wget https://github.com/ziglang/zig/releases/download/0.5.0/zig-linux-x86_64-0.5.0.tar.xz
run tar -xf zig-linux-x86_64-0.5.0.tar.xz && rm zig-linux-x86_64-0.5.0.tar.xz
workdir zig-linux-x86_64-0.5.0
run mv zig /usr/local/bin &&\
    mv lib/zig /usr/local/lib/zig

workdir /mnt
run rm -rf /tmp/zig
