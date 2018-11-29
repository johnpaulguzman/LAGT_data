## See README.md for more details


## Initialize workspace and parameters
rm(list=ls())
library("R.utils")
library("bnlearn")

## SET UP >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
## >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#setwd(file.path(getwd(), "experiments"))

expected_file = "BN15a-B1_2.dsc" ## =-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
output_directory = "./outputs2/" ## =-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
empirical_dataset_2 = "data_exam2.csv" ## =-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
max_time = 200
learned_networks = list()
saved_networks = list()
saved_parameters = list()
read_timeout = 100

## Process files
expected_network = bn.net(read.dsc(expected_file))
empirical_data_2 = read.csv(empirical_dataset_2, check.names=FALSE, na.strings=c("NA","NaN", " ", ""))
empirical_data = rbind(empirical_data_2)
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

expected_fit = bn.fit(expected_network, empirical_data)
write.dsc(paste(output_directory, "Expected_network.dsc", sep=""), expected_fit)

score_based_algorithms = c("hc", "tabu")
scores = c("loglik", "aic", "bic", "bde", "bds", "bdj", "k2", "mbde", "bdla")
for (algorithm in score_based_algorithms){ for (score in scores) {
    idx = paste(algorithm, "_", score, sep="")
    empirical_file = paste(output_directory, idx, "_network.dsc", sep="")
    if (!file.exists(empirical_file)) {
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
        tryCatch({
            saved_parameters[[idx]] = withTimeout(read.dsc(empirical_file, debug=FALSE), timeout=read_timeout)
            saved_networks[[idx]] = withTimeout(bn.net(saved_parameters[[idx]]), timeout=read_timeout)
            print(paste("Loaded:", empirical_file))
            network_pdf = paste(empirical_file, ".pdf", sep="")
            pdf(network_pdf)
            graphviz.plot(saved_networks[[idx]])
            dev.off()
            print(paste("PDF generated:", network_pdf))
        }, error=function(e){print(paste("!! ERROR :", conditionMessage(e), "\n"))})
    }
}}


if(FALSE) { # multiline comment
chooseCRANmirror() # > Choose US Mirror
source("http://bioconductor.org/biocLite.R")
biocLite(c("graph", "Rgraphviz", "RBGL"))
install.packages(c("gRain", "bnlearn", "R.utils"))
################################################# 
source("Learn.r")
names(saved_networks)
sample_network = saved_networks[["hc_loglik"]]
graphviz.plot(sample_network)
# TODO: include expected pdfs
expected_file = "BN15a-B1_2.dsc" ## =-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
expected_network = bn.net(read.dsc(expected_file))
expected_fit = bn.fit(expected_network, empirical_data)
saved_networks[["Expected"]] = expected_network
saved_parameters[["Expected"]] = saved_parameters
}
