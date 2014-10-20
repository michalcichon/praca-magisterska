#!/usr/bin/gnuplot

reset

set pm3d map

set encoding utf8

set autoscale fix
set palette defined (0 'white', 1 'green')

set term pdfcairo
set output 'confusion-matrix-2.pdf'

set tics scale 0
unset cbtics
set cblabel 'Trafność'
unset key

set xtics 1
set ytics 1

set title "Macierz pomyłek dla 2 kategorii"

plot 'confusion_matrix_2.txt' matrix with image,\
     '' matrix using 1:2:(sprintf('%.3f', $3)) with labels font ',10'