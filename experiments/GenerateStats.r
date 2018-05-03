rm(list=ls())
library("R.utils")
library("bnlearn")

## SET UP >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
## >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

setwd("C:/Users/JP/Desktop/LAGT_data/experiments/")
saved_networks = list()
saved_parameters = list()
read_timeout = 30
expected_file = "BN15a-B1_2.dsc"
folder_path = "./outputs/"
output_file = "./outputs/statistics.txt"
empirical_dataset_1 = "data_exam1.csv"
empirical_dataset_2 = "data_exam2.csv"
empirical_dataset_3 = "data_exam3.csv"

## Process files
expected_network = bn.net(read.dsc(expected_file))
empirical_data_1 = read.csv(empirical_dataset_1, check.names=FALSE, na.strings=c("NA","NaN", " ", ""))
empirical_data_2 = read.csv(empirical_dataset_2, check.names=FALSE, na.strings=c("NA","NaN", " ", ""))
empirical_data_3 = read.csv(empirical_dataset_3, check.names=FALSE, na.strings=c("NA","NaN", " ", ""))

# Filter noise 
empirical_data = rbind(empirical_data_2, empirical_data_1, empirical_data_3)
empirical_data = within(empirical_data, rm("ID"))
empirical_data = empirical_data[complete.cases(empirical_data), ]  # CV can only test on complete entries

## <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
## SET UP <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

sink(output_file)
Sys.time()
expected_network = bn.net(read.dsc(expected_file))
detected_files = list.files(path=folder_path, pattern="*.dsc")

for (file in detected_files) {
    filepath = paste(folder_path, file, sep="")
    idx = substr(file, 1, nchar(file) - 4)
    tryCatch({
        saved_parameters[[idx]] = withTimeout(read.dsc(filepath, debug=FALSE), timeout=read_timeout)
        saved_networks[[idx]] = withTimeout(bn.net(saved_parameters[[idx]]), timeout=read_timeout)
        print(paste("Loaded:", filepath))
    }, error=function(e){print(paste("!! ERROR :", conditionMessage(e), "\n"))})
}

print("===== DATA FOR STRUCTURAL DIFFERENCES & CROSS VALIDATION =====")
for (idx in names(saved_networks)) {
    net_hamming = hamming(expected_network, saved_networks[[idx]])
    net_shd = shd(expected_network, saved_networks[[idx]])
    cv_runs = bn.cv(data=empirical_data, bn=saved_networks[[idx]], k=10, runs=10)
    mean_error = mean(sapply(cv_runs, function(x) attr(x, "mean")))
    print(paste(">> Index:", idx, " -- || -- Hamming distance:", net_hamming, ", Structural Hamming distance:", net_shd, " -- || -- Mean error:", mean_error))
}

cv_runs2 = bn.cv(data=empirical_data, bn=expected_network, k=10, runs=10)
mean_error2 = mean(sapply(cv_runs2, function(x) attr(x, "mean")))
print(paste(">> Index: Expected Network -- || -- Mean error:", mean_error2))

sink()
print(paste("Logged to:", output_file))