rm(list=ls())
library("R.utils")
library("bnlearn")

## SET UP >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
## >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

setwd("C:/Users/JP/Desktop/LAGT_data/experiments/")
strength_threshold = 0.10
max_time = 1200
empirical_dataset_1 = "data_exam1.csv"
empirical_dataset_2 = "data_exam2.csv"

## Process files
empirical_data_1 = read.csv(empirical_dataset_1, check.names=FALSE)
empirical_data_2 = read.csv(empirical_dataset_2, check.names=FALSE)

# Filter noise 
empirical_data = rbind(empirical_data_1[0, ], empirical_data_2)
empirical_data = within(empirical_data, rm("ID"))

## <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
## SET UP <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

for(i in seq_len(sink.number())){print(sink(NULL))}
arcs_boots = list()

print("===== DATA FOR ARC STRENGTH MEASUREMENTS =====")
constraint_based_algorithms = c("pc.stable", "gs", "iamb", "fast.iamb", "inter.iamb", "mmpc", "si.hiton.pc")
independence_tests = c("mi", "mi-adf", "mc-mi", "smc-mi", "sp-mi", "mi-sh", "x2", "x2-adf", "mc-x2", "smc-x2", "sp-x2")
for (algorithm in constraint_based_algorithms){ for (test in independence_tests) {
    idx = paste(algorithm, "_", test, sep="")
    empirical_file = paste("./output/", idx, "_arcs.txt", sep="")
    print(paste("Log file: ", empirical_file))
    if (!file.exists(empirical_file)){
        sink(empirical_file)
        tryCatch({
            arcs_boots[[idx]] = withTimeout(
                boot.strength(data=empirical_data, algorithm=algorithm, algorithm.args=list(test=test)),
                timeout=max_time)
            print(paste(">>> Arcs of", idx, "above the threshold", strength_threshold, "<<<"))
            print(arcs_boots[[idx]][arcs_boots[[idx]]$strength >= strength_threshold, ])
        }, error=function(e){print(paste("!! ERROR :", conditionMessage(e), "\n"))})
        sink()
    } else {
        print(paste(empirical_file, "already exists!"))
    }
}}

score_based_algorithms = c("hc", "tabu")
scores = c("loglik", "aic", "bic", "bde", "bds", "bdj", "k2", "mbde", "bdla")
for (algorithm in score_based_algorithms){ for (score in scores) {
    idx = paste(algorithm, "_", score, sep="")
    empirical_file = paste("./output/", idx, "_arcs.txt", sep="")
    if (!file.exists(empirical_file)){
        sink(empirical_file)
        tryCatch({
            arcs_boots[[idx]] = withTimeout(
                boot.strength(data=empirical_data, algorithm=algorithm, algorithm.args=list(score=score)),
                timeout=max_time)
            print(paste(">>> Arcs of", idx, "above the threshold", strength_threshold, "<<<"))
            print(arcs_boots[[idx]][arcs_boots[[idx]]$strength >= strength_threshold, ])
        }, error=function(e){print(paste("!! ERROR :", conditionMessage(e), "\n"))})
        sink()
    } else {
        print(paste(empirical_file, "already exists!"))
    }
}}
