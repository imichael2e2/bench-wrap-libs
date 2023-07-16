set terminal pngcairo font "SF Mono,12" fontscale 1.0 size 800, 600

set output 'result-mempeak.png'

set title "Memory Peak {/:*.5 (less is better)}"
set title font "Helvetica,25"
set key inside left 
set key textcolor variable

set ylabel "Heap Peak(Byte)"
set xlabel "Input Size(32768 * x Bytes)"

set format y "{%.1e}" 

plot \
'mempeak-use_bwrap_easy.log' using 1 with lines smooth bezier linewidth 2 title "{/:Bold bwrap} (Rust)", \
'mempeak-use_textwrap.log' using 1 with lines smooth bezier linewidth 2 title "{/:Bold textwrap} (Rust)", \
'mempeak-use_textflowcpp.log' using 1 with lines smooth bezier linewidth 2 title "{/:Bold textflowcpp}  (C++)", \
# 'mempeak-use_asap-textwrap.log' using 1 with lines smooth bezier linewidth 2 title "asap-textwrap (C++)"
