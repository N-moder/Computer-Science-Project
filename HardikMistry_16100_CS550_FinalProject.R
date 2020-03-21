
library(plsdepot)


predictors = read.table("C:\\Users\\Beastfury\\Desktop\\HardikMistry_16100_Finalproject\\hScore.dat", nrows = 50)


response = read.table("C:\\Users\\Beastfury\\Desktop\\HardikMistry_16100_Finalproject\\hScore.dat", nrows = 1, skip = 50)


predictors_final = t(predictors)
response_final = t(response)
predictors_final
regcoefs_final
stdcoefs_final
predictors
response


plsreg_final = plsreg1(predictors_final,response_final, comps = 2, crosval = FALSE)


plot(plsreg_final)


stdcoefs_final = t(plsreg_final$std.coefs)
regcoefs_final = t(plsreg_final$reg.coefs)
R2_final = t(plsreg_final$R2)


final_predictor <- factor(predictors_final)
final_levels = t(levels(final_predictor))


#____________________________________________Analyzing second data set_______________________________________________


predictors = read.table("C:\\Users\\Beastfury\\Desktop\\HardikMistry_16100_Finalproject\\hScore1.dat", nrows = 50)


response = read.table("C:\\Users\\Beastfury\\Desktop\\HardikMistry_16100_Finalproject\\hScore1.dat", nrows = 1, skip = 50)


predictors_final = t(predictors)
response_final = t(response)
response_match(response$code)
final_levels(mylevels)
predictors_final
R2_final
regcoefs_final
stdcoefs_final
predictors
response


plsreg_final = plsreg1(predictors_final, response_final, comps = 2, crosval = FALSE)


plot(plsreg_final)


stdcoefs_final = t(plsreg_final$std.coefs)
regcoefs_final = t(plsreg_final$reg.coefs)
R2_final = t(plsreg_final$R2)



final_predictor <- factor(predictors_final)
final_levels = t(levels(final_predictor))

