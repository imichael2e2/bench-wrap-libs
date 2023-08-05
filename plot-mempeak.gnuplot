set terminal pngcairo font "Sans,13" fontscale 1.0 size 800, 600

set output 'result-mempeak.png'

set title "Memory Peak {/:*.5 (less is better)}"
set title font "Serif,25"

set key inside left 
set key textcolor variable

set ylabel "Heap Peak(Byte)"
set xlabel "Input Size(*32768 Bytes)"

set format y "{%.1e}" 


plot \
'reslog-mempeak-use_textflowcpp.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "dark-pink" \
title "{/:Bold textflowcpp} (C++)", \
 \
'reslog-mempeak-use_textwrap.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "orange" \
title "{/:Bold textwrap} (Rust)", \
 \
'reslog-mempeak-use_bwrap_easy.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "dark-violet" \
title "{/:Bold bwrap} (Rust)", \
