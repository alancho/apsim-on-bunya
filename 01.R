#!/usr/bin/env Rscript

require(tidyverse)
require(apsimx)
require(FME)
require(BayesianTools)
require(rapsimng)

## apsimx_options("~/ApsimX/bin/Release/net6.0/Models")

argumentos <- xargs_apsimx(
  single.threaded = TRUE,
  cpu.count = 1L
)

simulaciones <- apsimx("simulation.apsimx", cleanup = TRUE, xargs = argumentos)

simulaciones %>% saveRDS("simulaciones.rds")
