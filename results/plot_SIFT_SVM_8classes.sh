#!/usr/bin/gnuplot

reset

set encoding utf8

set terminal svg size 640,480 fname 'Verdana' fsize 10
set output 'result-sift-8.svg'

set yrange [0:1]

set xlabel "Ilość przykładów treningowych na kategorię"
set ylabel "Dokładność kategoryzacji"

set title "Wynik kategoryzacji dla 8 kategorii (SIFT)"

plot "SIFT_SVM_8classes.txt" using 1:2 title '' with linespoints
