#!/usr/bin/env julia

using SHA
using BinaryProvider

tarballs = [f for f in readdir(".") if startswith(f, "libfoo") && endswith(f, ".tar.gz")]
for filename in tarballs
    triplet = filename[8:end-7]
    hash = bytes2hex(sha256(open(filename)))
    println("    \"$(platform_key(triplet))\" => (\"\$prefix/$(filename)\", \"$(hash)\"),")
end
