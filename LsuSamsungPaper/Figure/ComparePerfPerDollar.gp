set terminal png size 500,500 enhanced font 'Verdana,10'
set output 'ComparePerfPerDollar.png'
set key below
set ylabel '{/Helvetica-Oblique Performance/$ normalized to SuperMikeII}'
set style fill solid
set style data histograms
set yrange [0:3.5]
plot "ComparePerfPerDollar.dat" using 2:xtic(1) lt rgb "#406090" title 'SuperMikeII(32GBMem+1HDD):15DN[BaseLine]',\
     "" using 3 lt rgb "#40FF00" title 'SwatIII-Storage(32GBMem+1SSD):15DN',\
     "" using 4 lt rgb "#400000" title 'SwatIII-Memory(256GBMem+1SSD):15DN',\
     "" using 5 lt rgb "#4000F0" title 'SwatIII-FullScaleup-SSD(256GBMemory+7HDD):2DN',\
     "" using 6 lt rgb "#300020" title 'SwatIII-FullScaleup-HDD(256GBMemory+7HDD):2DN'

