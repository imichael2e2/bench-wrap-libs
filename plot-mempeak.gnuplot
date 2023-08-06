set terminal pngcairo size 1024, 768

set output 'result-mempeak.png'

set title font "Serif,16"

set key inside left 
set key textcolor variable

set ylabel "Peak (Bytes)"
set xlabel "Input (*32768 Bytes)"

# set format y "{%.1e}" 

set multiplot layout 2,2 rowsfirst

set title "{/:Bold bwrap vs. textflowcpp}"

plot \
'reslog-mempeak-use_bwrap_easy.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "dark-violet" \
title "bwrap (Rust)", \
 \
'reslog-mempeak-use_textflowcpp.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "dark-pink" \
title "textflowcpp (C++)"

set title "{/:Bold bwrap vs. textwrap}"

plot \
'reslog-mempeak-use_bwrap_easy.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "dark-violet" \
title "bwrap (Rust)", \
 \
'reslog-mempeak-use_textwrap.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "orange" \
title "textwrap (Rust)", \


