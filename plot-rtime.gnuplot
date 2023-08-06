set terminal pngcairo size 1024, 768

set output 'result-rtime.png'

set title font "Serif,16"

set key inside left 
set key textcolor variable

set ylabel "Time(seconds)"
set xlabel "Input(*32768 Bytes)"


# bwrap: dark-violet
# textwrap: royalblue
# textflowcpp: orange
# javawordwrap: olive

set multiplot layout 2,2 rowsfirst

set title "{/:Bold bwrap vs. textwrap}"

plot \
'reslog-rtime-use_bwrap_easy.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "dark-violet" \
title "bwrap (Rust)", \
 \
'reslog-rtime-use_textwrap.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "orange" \
title "textwrap (Rust)"

set title "{/:Bold bwrap vs. go-wordwrap}"

plot \
'reslog-rtime-use_bwrap_easy.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "dark-violet" \
title "bwrap (Rust)", \
 \
'reslog-rtime-use_gowordwrap.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "skyblue" \
title "wordwrap (Go)"

set title "{/:Bold bwrap vs. textflowcpp}"

plot \
'reslog-rtime-use_bwrap_easy.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "dark-violet" \
title "bwrap (Rust)", \
 \
'reslog-rtime-use_textflowcpp.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "dark-pink" \
title "textflowcpp (C++)"


set title "{/:Bold bwrap vs. java-wordwrap}"

plot \
'reslog-rtime-use_bwrap_easy.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "dark-violet" \
title "bwrap (Rust)", \
 \
'reslog-rtime-use_javawordwrap.log' using 1 with lines smooth bezier \
linewidth 2 linecolor rgb "olives" \
title "wordwrap (Java)"




