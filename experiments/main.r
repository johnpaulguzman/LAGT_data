## See README.md for more details

## Initialize workspace and parameters
rm(list=ls())
library("R.utils")
library("bnlearn")
setwd("C:/Users/JP/Desktop/LAGT_data/experiments/")

max_time = 120
learned_networks = list()
expected_file = "BN15a-B1.dsc"
empirical_dataset_1 = "data_exam1.csv"
empirical_dataset_2 = "data_exam2.csv"

## Process files
expected_fitted = read.dsc(expected_file)
expected_network = bn.net(expected_fitted)
empirical_data_1 = read.csv(empirical_dataset_1, check.names=FALSE)
empirical_data_2 = read.csv(empirical_dataset_2, check.names=FALSE)

# Filter noise 
empirical_data_1 = empirical_data_1[0, ]

empirical_data = rbind(empirical_data_1, empirical_data_2)
empirical_data = within(empirical_data, rm("ID"))

## Check if nodes match
expected_columns = sort(nodes(expected_network))
empirical_columns = sort(colnames(empirical_data))
match_columns = expected_columns == empirical_columns
if (!Reduce("&", match_columns)) { # checks if all columns match
    print(cbind(expected_columns, empirical_columns, match_columns))
} else {
    print("Successfully matched columns.")
}

## Test multiple structural algorithms
if(TRUE){
constraint_based_algorithms = c("pc.stable", "gs", "iamb", "fast.iamb", "inter.iamb", "mmpc", "si.hiton.pc")
independence_tests = c("mi", "mi-adf", "mc-mi", "smc-mi", "sp-mi", "mi-sh", "x2", "x2-adf", "mc-x2", "smc-x2", "sp-x2")
for (algorithm in constraint_based_algorithms){ for (test in independence_tests) {
    idx = paste(algorithm, "_", test, sep="")
    empirical_file = paste("./output/", idx, "_network.dsc", sep="")
    if (!file.exists(empirical_file)){
        tryCatch({
            print(idx)
            learned_networks[[idx]] = withTimeout(
                cextend(R.utils::doCall(algorithm, x=empirical_data, test=test)),
                timeout=max_time)
            learned_networks[[idx]][["hamming_distance"]] = hamming(expected_network, learned_networks[[idx]])
            learned_networks[[idx]][["structural_hamming_distance"]] = shd(expected_network, learned_networks[[idx]])
            print(paste(">> Index:", idx, " -- || -- Hamming distance:", learned_networks[[idx]]$hamming_distance, ", Structural Hamming distance:", learned_networks[[idx]]$structural_hamming_distance))
            empirical_fitted = bn.fit(learned_networks[[idx]], empirical_data)
            write.dsc(empirical_file, empirical_fitted)
            print(paste("Exported model to: ", empirical_file))
        }, error=function(e){print(paste("!! ERROR :", conditionMessage(e), "\n"))})
    } else {
        print(paste(empirical_file, "already exists!"))
    }
}}
}

if(TRUE){
score_based_algorithms = c("hc", "tabu")
scores = c("loglik", "aic", "bic", "bde", "bds", "bdj", "k2", "mbde", "bdla")
for (algorithm in score_based_algorithms){ for (score in scores) {
    idx = paste(algorithm, "_", score, sep="")
    empirical_file = paste("./output/", idx, "_network.dsc", sep="")
    if (!file.exists(empirical_file)){
        tryCatch({
            print(idx)
            learned_networks[[idx]] = withTimeout(
                cextend(R.utils::doCall(algorithm, x=empirical_data, score=score)),
                timeout=max_time)
            learned_networks[[idx]][["hamming_distance"]] = hamming(expected_network, learned_networks[[idx]])
            learned_networks[[idx]][["structural_hamming_distance"]] = shd(expected_network, learned_networks[[idx]])
            print(paste(">> Index:", idx, " -- || -- Hamming distance:", learned_networks[[idx]]$hamming_distance, ", Structural Hamming distance:", learned_networks[[idx]]$structural_hamming_distance))
            empirical_fitted = bn.fit(learned_networks[[idx]], empirical_data)
            write.dsc(empirical_file, empirical_fitted)
            print(paste("Exported model to: ", empirical_file))
        }, error=function(e){print(paste("!! ERROR :", conditionMessage(e), "\n"))})
    } else {
        print(paste(empirical_file, "already exists!"))
    }
}}
}