set terminal postscript eps enhanced solid color
set output "gc_times_richards.eps"
set style data histogram
set style histogram rowstacked
set style fill solid 1.00 border 0 #fill bars
set boxwidth 0.5
set ylabel "Average execution time (ms)" font "Helvetica,20"
set key invert samplen 0.2
set key samplen 0.2
set bmargin 3
set offset 0,2,0,0
unset xtics
set grid ytics

set title "Garbage collection times for Richards benchmark" font "Helvetica,26"

plot 'benchmark_results/richards_benchmark.csv' using ($2-$4):xtic(1) title "remaining time", \
       '' using 4 title "gc time"
