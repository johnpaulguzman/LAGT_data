rm(list=ls())
library("R.utils")
library("bnlearn")

## PARAMETERS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
## >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
setwd("C:/Users/JP/Desktop/LAGT_data/experiments/")
saved_networks = list()
read_timeout = 15
expected_file = "BN15a-B1.dsc"
folder_path = "./experiments_2/"
## <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
## PARAMETERS <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

expected_network = bn.net(read.dsc(expected_file))
detected_files = list.files(path=folder_path, pattern="*.dsc")

for (file in detected_files) {
    filepath = paste(folder_path, file, sep="")
    tryCatch({
        saved_networks[[substr(file, 1, nchar(file) - 4)]] = withTimeout(
            bn.net(read.dsc(filepath, debug=FALSE)),
            timeout=read_timeout)
        print(paste("Loaded:", filepath))
    }, error=function(e){print(paste("!! ERROR :", conditionMessage(e), "\n"))})
}

for (idx in names(saved_networks)) {
    net_hamming = hamming(expected_network, saved_networks[[idx]])
    net_shd = shd(expected_network, saved_networks[[idx]])
    print(paste(">> Index:", idx, " -- || -- Hamming distance:", net_hamming, ", Structural Hamming distance:", net_shd))
}

# bn.cv(data=empirical_data, bn="pc.stable", k=10)