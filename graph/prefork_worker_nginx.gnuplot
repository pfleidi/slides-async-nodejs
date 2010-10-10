set term png
set output "prefork_worker_nginx.png" 
set xlabel "Concurrency"
set xrange [0:2]
set xtics ("10" 0, "100" 1, "1000" 2)
set ylabel "number of requests per second"
set yrange [0:50000]
set title "Apache Prefork and Worker vs nginx"
plot "prefork.dat" using 0:2 with linespoints title "Apache2.2 mpm_prefork", "worker.dat" using 0:2 with linespoints title "Apache2.2 mpm_worker", "nginx.dat" using 0:2 with linespoints title "nginx"
