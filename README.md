- [How to run](#orge95c93d)
  - [Prerequisites](#orgf02c726)
- [About this benchmark](#org7a756ee)
- [Examples](#org2da199b)


<a id="orge95c93d"></a>

# How to run

```bash
git clone --depth=1 https://github.com/micl2e2/bench-wrap-libs
cd bench-wrap-libs

# start benchmark
bash bench-all.bash
```


<a id="orgf02c726"></a>

## Prerequisites

1.  Any distribution of Linux.
2.  At least, the following programs are installed:
    1.  bash
    2.  coreutils
    3.  valgrind
    4.  gnuplot
    5.  cargo(minimal profile)
    6.  g++(gcc or clang)


<a id="org7a756ee"></a>

# About this benchmark

1.  A sample file's content is something like:
    
    ```
    abaaebdd c a deeccadd cbcbedbaeadecbdbccbdbeeaaa bacecddd cb cdcabcdccdceecca cc aeebeaee bededdbddddad ae d bcaacccaba eccdc   cadc aac   eddedbada  babbd bbb bbbcdd aecd becc ab debb   daecbeddaedaaebaccba edd dac d  adba c ebba dc aeede   bcdde bed b eb ddbdaacbe bda   aa d
    ```
    
    , which simulates an English article as close to reality as possible. They are **generated randomly** from the characters pool consisting of alphabets "abcde" and ASCII space " ", it results in 30 files of size ranging from about 30 KB to about 1 MB.

1.  All libraries are assigned the **same task**: take samples from standard in, wrap them with an 80-width limit, then print out the result to standard out.

2.  Although all libraries' results are distinct from each other, they are **correct enough**, i.e., no lines exceed the 80-width limit.


<a id="org2da199b"></a>

# Examples

On a i5-3337u/8G machine, we got:

<img src="examples/result-rtime.png" width="500px">

<img src="examples/result-mempeak.png" width="500px">