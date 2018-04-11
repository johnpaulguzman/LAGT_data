rm(list=ls())
setwd("C:/Users/JP/Desktop/LAGT_data/experiments/")
library("bnlearn")


expected_file = "BN15a-B1.dsc"
empirical_file = "test_pc.stable_output_network.dsc"
empirical_data = "data_exam2.csv"

empirical_data = read.csv(empirical_data, check.names=FALSE)
empirical_data = within(empirical_data, rm("ID"))
empirical_network = cextend(pc.stable(empirical_data))
empirical_fitted = bn.fit(empirical_network, empirical_data)
write.dsc(empirical_file, empirical_fitted)
print(paste("Exported model to: ", empirical_file))

expected_fitted = read.dsc(expected_file)
expected_network = bn.net(expected_fitted)

expected_columns = sort(nodes(expected_network))
empirical_columns = sort(nodes(empirical_network))
match_columns = expected_columns == empirical_columns
if (!Reduce("&", match_columns)) { # checks if all columns match
    print(cbind(expected_columns, empirical_columns,match_columns))
} else {
	print("Successfully matched columns.")
}

learning_algorithms = c("pc.stable", "gs", "iamb", "fast.iamb", "inter.iamb", "mmpc", "si.hiton.pc", "hc", "tabu", "rsmax2", "mmhc", "chow.liu") # , "aracne"
learned_networks = list()
for (algo in learning_algorithms) {
    learned_networks[[algo]] = tryCatch(
        cextend(get(algo)(empirical_data, optimized=TRUE)),
        error=function(error_condition) { 
            cextend(get(algo)(empirical_data))
        }
    )
    learned_networks[[algo]][["hamming_distance"]] = hamming(expected_network, learned_networks[[algo]])
    learned_networks[[algo]][["structural_hamming_distance"]] = shd(expected_network, learned_networks[[algo]])
}

for (network in learned_networks){
    print(paste("Algorithm:", network$learning$algo, " -- || -- Hamming distance:", network$hamming_distance, ", Structural Hamming distance:", network$structural_hamming_distance))
}