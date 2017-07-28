library(rapt)

george.ato <- readATO('ato/BCY/R45_03334-v02.ato')
george.imul <- indexMultiples(george.ato)
george.multi <- multiples(george.imul)
george.ato$multi <- george.multi
george.ms <- createSpec(george.ato, res = 0.01)
george.msl <- transformIntensity(george.ms, method = 'log10')
george.1.ms <- createSpec(george.ato[george.ato$multi == 1,], res = 0.01)
george.1.msl <- transformIntensity(george.1.ms, method = 'log10')
george.2.ms <- createSpec(george.ato[george.ato$multi == 2,], res = 0.01)
george.2.msl <- transformIntensity(george.2.ms, method = 'log10')
#### Plots ####
## Saxey Plot ##
george.sax <- saxeyPlot(george.imul[[2]], george.ato, 50, 450, res = 0.2)
## 75 Da ##
prettyPlot(george.msl, xlim = c(70,80), ylim = c(0,2))
prettyPlot(george.1.msl, xlim = c(70,80), ylim = c(0,2),
           main = 'Mass Spectrum - Singles')
prettyPlot(george.2.msl, xlim = c(70,80), ylim = c(0,2),
           main = 'Mass Spectrum - Doubles')
## 150 Da ##
prettyPlot(george.msl, xlim = c(145,155), ylim = c(0,2.2))
prettyPlot(george.1.msl, xlim = c(145,155), ylim = c(0,2.2),
           main = 'Mass Spectrum - Singles')
prettyPlot(george.2.msl, xlim = c(145,155), ylim = c(0,2.2),
           main = 'Mass Spectrum - Doubles')
## 300 Da ##
prettyPlot(george.msl, xlim = c(295,305), ylim = c(0,2))
prettyPlot(george.1.msl, xlim = c(295,305), ylim = c(0,2),
           main = 'Mass Spectrum - Singles')
prettyPlot(george.2.msl, xlim = c(295,305), ylim = c(0,2),
           main = 'Mass Spectrum - Doubles')
