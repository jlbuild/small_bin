#!/usr/bin/env julia

using SHA
using BinaryProvider

tarballs = [f for f in readdir(".") if startswith(f, "libfoo") &&  endswith(f, ".tar.gz")]
mapping = Dict(platform_key(f[8:end-7]) => f for f in tarballs)
for target in sort(collect(keys(mapping)), by = k -> triplet(k))
    filename = mapping[target]
    hash = bytes2hex(sha256(open(filename)))
    println("    $(repr(target)) => (\"\$bin_prefix/$filename\", $(repr(hash))),")
end
