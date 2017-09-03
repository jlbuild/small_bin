#!/usr/bin/env julia

using SHA
using BinaryProvider

tarballs = [f for f in readdir(".") if startswith(f, "libfoo") && endswith(f, ".tar.gz")]
libfoo_downloads = Dict(platform_key(f[8:end-7]) => ("\$small_bin_prefix/$f", bytes2hex(sha256(open(f)))) for f in tarballs)
@show libfoo_downloads
