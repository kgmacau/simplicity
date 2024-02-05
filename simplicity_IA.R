




##### sample size and power
library(pwr)
pwr.t.test(d=1/1.52, power=0.9, type="two.sample", alternative="two.sided")$n


library(gsDesign)

#######################################################################################################################
### Below Kim-DeMets method with different rho at different timing is used to keep 0.049 alpha level at final analysis
#######################################################################################################################

### IA timing = 0.5, IA alpha=0.003, Final alpha=0.049
gsDesign(k = 2, timing=c(0.5, 1), 
         sfu = sfPower, sfupar = 4, test.type=2, alpha=0.05)

### IA timing = 0.75, IA alpha=0.0089, Final alpha=0.049
gsDesign(k = 2, timing=c(0.75, 1), 
         sfu = sfPower, sfupar = 6, test.type=2, alpha=0.05)

### IA timing = 0.9, IA alpha=0.0194, Final alpha=0.049
gsDesign(k = 2, timing=c(0.9, 1), 
         sfu = sfPower, sfupar = 9, test.type=2, alpha=0.05)


###################################################################################################
######### Original assumption #####################################################################
###################################################################################################
### IA power
pwr.t.test(n=25, d=1/1.52, type="two.sample", alternative="two.sided", sig.level=0.0031)$power
pwr.t.test(n=38, d=1/1.52, type="two.sample", alternative="two.sided", sig.level=0.0089)$power
pwr.t.test(n=45, d=1/1.52, type="two.sample", alternative="two.sided", sig.level=0.0194)$power

### final power with IA
pwr.t.test(n=50, d=1/1.52, type="two.sample", alternative="two.sided", sig.level=0.049)$power

### final power with no IA
pwr.t.test(n=50, d=1/1.52, type="two.sample", alternative="two.sided", sig.level=0.05)$power



###################################################################################################
######### Worse assumption #####################################################################
###################################################################################################
### IA power
pwr.t.test(n=25, d=0.8/1.6, type="two.sample", alternative="two.sided", sig.level=0.0031)$power
pwr.t.test(n=38, d=0.8/1.6, type="two.sample", alternative="two.sided", sig.level=0.0089)$power
pwr.t.test(n=45, d=0.8/1.6, type="two.sample", alternative="two.sided", sig.level=0.0194)$power

### final power with IA
pwr.t.test(n=50, d=0.8/1.6, type="two.sample", alternative="two.sided", sig.level=0.049)$power

### final power with no IA
pwr.t.test(n=50, d=0.8/1.6, type="two.sample", alternative="two.sided", sig.level=0.05)$power


