set terminal pngcairo font "Sans,13" fontscale 1.0 size 800, 600

set output 'result-rtime.png'

set title "Time Elapsed {/:*.5 (less is better)}"
set title font "Serif,25"

set key inside left 
set key textcolor variable

set ylabel "Time(seconds)"
set xlabel "Input Size(*32768 Bytes)"

# bwrap: dark-violet
# textwrap: royalblue
# textflowcpp: orange
# javawordwrap: olive

plot \
'reslog-rtime-use_bwrap_easy.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "dark-violet" \
title "{/:Bold bwrap} (Rust)", \
 \
'reslog-rtime-use_textwrap.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "orange" \
title "{/:Bold textwrap} (Rust)", \
 \
'reslog-rtime-use_gowordwrap.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "skyblue" \
title "{/:Bold gowordwrap} (Go)", \
 \
'reslog-rtime-use_textflowcpp.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "dark-pink" \
title "{/:Bold textflowcpp} (C++)", \
 \
'reslog-rtime-use_javawordwrap.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "olives" \
title "{/:Bold wordwrap} (Java)", \
 \



