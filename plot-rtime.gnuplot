set terminal pngcairo font "Sans,13" fontscale 1.0 size 800, 600

set output 'result-rtime.png'

set title "Time Elapsed {/:*.5 (less is better)}"
set title font "Serif,25"

set key inside left 
set key textcolor variable

set ylabel "Time(seconds)"
set xlabel "Input Size(*32768 Bytes)"


plot \
'rtime-use_bwrap_easy.log' using 1 with lines smooth bezier linewidth 2 title "{/:Bold bwrap} (Rust)", \
'rtime-use_textwrap.log' using 1 with lines smooth bezier linewidth 2 title "{/:Bold textwrap} (Rust)", \
'rtime-use_textflowcpp.log' using 1 with lines smooth bezier linewidth 2 title "{/:Bold textflowcpp} (C++)", \
# 'rtime-use_asap-textwrap.log' using 1 with lines smooth bezier linewidth 2 title "asap-textwrap (C++)"
