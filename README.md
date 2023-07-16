
# Table of Contents

1.  [How to run](#orgee7e366)
2.  [About this benchmark](#org26f660d)


<a id="orgee7e366"></a>

# How to run

    git clone --depth=1 https://github.com/imichael2e2/bench-wrap-libs
    cd bench-wrap-libs
    
    # start benchmark
    bash bench-all.bash


<a id="org26f660d"></a>

# About this benchmark

1.  Samples are generated randomly from a group of alphabets, resulting
    in files of size ranging from about 30 KB to about 1 MB.

2.  All libraries are assigned the same job: take samples from standard
    in, wrap them with an 80-width limit, then print out the result to
    standard out.

3.  Although all libraries' results are distinct from each other, they
    are correct enough, i.e. no lines exceed the 80-width limit.

