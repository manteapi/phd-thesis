#!/usr/bin/gnuplot
#
reset

# wxt
set terminal svg size 600,400 enhanced font 'Verdana,10' 
set output 'cubicKernel.svg'

# Line styles
set border linewidth 1.5
set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 3  # blue
set style line 2 linecolor rgb '#dd181f' linetype 1 linewidth 3  # red
# Legend
set key at 2,0.7
# Axes label 
set xlabel 'x'
set ylabel 'W(x)'


# Axis ranges
set xrange[-2:2]
set yrange[-1:1]
# Axis labels
set xtics (-2, -1.5, -1, -0.5, 0, 0.5, 1.0, 1.5, 2)
set ytics (-4, -3, -2, -1, 0, 1, 2)
set tics scale 0.75
# Functions to plot
coeff1D = 1.0/6.0
kernel_1(x) = coeff1D*( (2-abs(x))**3 - 4.0*(1-abs(x))**3 )
kernel_2(x) = coeff1D*( (2-abs(x))**3 )
kernel_3(x) = 0.0

dkernel_1(x) = (coeff1D*(-3.0*(2-abs(x))**2 + 12.0*(1-abs(x))**2)/abs(x))*x
dkernel_2(x) = (coeff1D*(-3.0*(2-abs(x))**2)/abs(x))*x

# Plot
plot kernel_1(x)*(abs(x)>=0 && abs(x)<1) + kernel_2(x)*(abs(x)>=1 && abs(x)<2) + kernel_3(x)*(abs(x)>=2) title 'W(x)' with lines ls 1, \
     dkernel_1(x)*(abs(x)>=0 && abs(x)<1) + dkernel_2(x)*(abs(x)>=1 && abs(x)<2) title '\nabla W(x)' with lines ls 2
