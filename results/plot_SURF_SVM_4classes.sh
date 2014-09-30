#!/usr/bin/gnuplot

reset

set encoding utf8

set terminal svg size 640,480 fname 'Verdana' fsize 10
set output 'result-surf-4.svg'

set yrange [0:1]

set xlabel "Ilość przykładów treningowych na kategorię"
set ylabel "Dokładność kategoryzacji"

set title "Wynik kategoryzacji dla 4 kategorii (SURF)"

plot "SURF_SVM_4classes.txt" using 1:2 title '' with linespoints
