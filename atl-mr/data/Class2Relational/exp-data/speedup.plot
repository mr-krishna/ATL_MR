set xlabel "number of nodes"
set ylabel "speedup w.r.t. 2 nodes"

set xrange [1:9]
set yrange [0:12]

set ytics nomirror

plot "timings-class-10000-speedup.txt" using 1:2 title "10000v" with lines, \
     "timings-class-20000-speedup.txt" using 1:2 title "20000v" with lines,\
     "timings-class-30000-speedup.txt" using 1:2 title "30000v" with lines,\
     "timings-class-40000-speedup.txt" using 1:2 title "40000v" with lines,\
     "timings-class-50000-speedup.txt" using 1:2 title "50000v" with lines,


set size 1, 0.45
set terminal postscript portrait enhanced color dashed lw 1 "Helvetica" 14
set output "exp1-speedup.ps"
replot
set term pop
