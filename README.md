- [How to run](#org8197048)
  - [Prerequisites](#org744510b)
- [About this benchmark](#orgb5aaa10)


<a id="org8197048"></a>

# How to run

```bash
git clone --depth=1 https://github.com/imichael2e2/bench-wrap-libs
cd bench-wrap-libs

# start benchmark
bash bench-all.bash
```


<a id="org744510b"></a>

## Prerequisites

1.  Any distribution of Linux.
2.  At least, the following programs are installed:
    1.  bash
    2.  coreutils
    3.  valgrind
    4.  gnuplot
    5.  cargo(minimal profile)
    6.  g++(gcc or clang)


<a id="orgb5aaa10"></a>

# About this benchmark

1.  A sample file's content is something like:
    
    ```
    abaaebdd c a deeccadd cbcbedbaeadecbdbccbdbeeaaa bacecddd cb cdcabcdccdceecca cc aeebeaee bededdbddddad ae d bcaacccaba eccdc   cadc aac   eddedbada  babbd bbb bbbcdd aecd becc ab debb   daecbeddaedaaebaccba edd dac d  adba c ebba dc aeede   bcdde bed b eb ddbdaacbe bda   aa d
    ```
    
    , which simulates an English article as close to reality as possible. They are **generated randomly** from the characters pool consisting of alphabets "abcde" and ASCII space " ", it results in 30 files of size ranging from about 30 KB to about 1 MB.

1.  All libraries are assigned the **same task**: take samples from standard in, wrap them with an 80-width limit, then print out the result to standard out.

2.  Although all libraries' results are distinct from each other, they are **correct enough**, i.e., no lines exceed the 80-width limit.