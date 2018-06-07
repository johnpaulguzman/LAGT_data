## See README.md for more details


## Initialize workspace and parameters
rm(list=ls())
library("R.utils")
library("bnlearn")

## SET UP >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
## >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

setwd("C:/Users/JP/Desktop/LAGT_data/experiments/test/")
max_time = 200
learned_networks = list()
expected_file = "BN15a-B1_2.dsc" ## =-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
output_directory = "./outputs2/" ## =-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
empirical_dataset_1 = "data_exam1.csv"
empirical_dataset_2 = "data_exam2.csv"
empirical_dataset_3 = "data_exam3.csv"

## Process files
expected_network = bn.net(read.dsc(expected_file))
empirical_data_1 = read.csv(empirical_dataset_1, check.names=FALSE, na.strings=c("NA","NaN", " ", ""))
empirical_data_2 = read.csv(empirical_dataset_2, check.names=FALSE, na.strings=c("NA","NaN", " ", ""))
empirical_data_3 = read.csv(empirical_dataset_3, check.names=FALSE, na.strings=c("NA","NaN", " ", ""))

# Filter noise 
#empirical_data = rbind(empirical_data_2, empirical_data_1, empirical_data_3)
empirical_data = rbind(empirical_data_2) ## =-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
empirical_data = within(empirical_data, rm("ID"))

## <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
## SET UP <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

## Check if nodes match
expected_columns = sort(nodes(expected_network))
empirical_columns = sort(colnames(empirical_data))
match_columns = expected_columns == empirical_columns
if (!Reduce("&", match_columns)) { # checks if all columns match
    print(cbind(expected_columns, empirical_columns, match_columns))
} else {
    print("Successfully matched columns.")
}

score_based_algorithms = c("hc", "tabu")
scores = c("loglik", "aic", "bic", "bde", "bds", "bdj", "k2", "mbde", "bdla")
for (algorithm in score_based_algorithms){ for (score in scores) {
    idx = paste(algorithm, "_", score, sep="")
    empirical_file = paste(output_directory, idx, "_network.dsc", sep="")
    if (!file.exists(empirical_file)){
        tryCatch({
            print(idx)
            learned_networks[[idx]] = withTimeout(
                cextend(R.utils::doCall(structural.em, x=empirical_data, maximize=algorithm, score=score)),
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
