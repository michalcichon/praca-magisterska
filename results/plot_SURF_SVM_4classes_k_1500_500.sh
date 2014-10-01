#!/usr/bin/gnuplot

reset

set encoding utf8

set terminal svg size 640,480 fname 'Verdana' fsize 10
set output 'result-surf-4-1500-500.svg'

set yrange [0:1]

set xlabel "Ilość przykładów treningowych na kategorię"
set ylabel "Dokładność kategoryzacji"

set title "Wynik kategoryzacji dla 4 kategorii (SURF)"

set key inside right bottom;

plot "SURF_SVM_4classes_k_1500_500.txt" using 1:2 title 'k=1500' with linespoints, "SURF_SVM_4classes_k_1500_500.txt" using 1:3 title 'k=500' with linespoints
