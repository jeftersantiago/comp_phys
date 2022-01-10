set xrange[*:*] noreverse writeback
set yrange[*:*] noreverse writeback

set grid
set style line 1 lt 1 lc "black" lw 2
set key right top

plot "data.dat"  with line ls 1