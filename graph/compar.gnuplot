set term png
set output "prefork.png" 
set xlabel "Concurrency"
set xrange [0:3]
set xtics ("10" 0, "100" 1, "1000" 2, "10000" 3)
set ylabel "number of requests per second"
set yrange [0:50000]
set title "Comparsion Apache vs nginx"
plot "prefork.dat" using 0:2 with linespoints title "Apache2.2 mpm_prefork"
