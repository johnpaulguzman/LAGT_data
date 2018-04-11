# LAGT_data

Installation for R:
  Open RGui and use the console to run the commands:
    $ chooseCRANmirror()
      > Choose US Mirror
    $ source("http://bioconductor.org/biocLite.R")
    $ biocLite(c("graph", "Rgraphviz", "RBGL"))
    $ install.packages("gRain")
    $ install.packages("bnlearn")

Usage for GeNIe Academic:
  Open network file:
    Fix layout: Layout -> Graph Layout -> Parent Ordering -> Top to Bottom, Spacing = 50% -> OK
    Show probabilities: Press F8
    Auto-update beliefs: Press Ctrl + F5
    Query nodes: Double-click node values 

Usage for R:
  Open RGui and drag the .r script to the console window