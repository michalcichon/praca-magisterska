#!/usr/bin/gnuplot

reset

set pm3d map

set encoding utf8

set autoscale fix
set palette defined (0 'white', 1 'green')

set terminal png size 640,480 
set output 'confusion-matrix-4.png'

set tics scale 0
unset cbtics
set cblabel 'Dokladnosc'
unset key

set xtics 1
set ytics 1

set title "Dokładność dla 4 kategorii"

plot 'confusion_matrix_4.txt' matrix with image,\
     '' matrix using 1:2:(sprintf('%.3f', $3)) with labels font ',10'