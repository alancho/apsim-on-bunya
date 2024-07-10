#!/usr/bin/env Rscript

require(tidyverse)
require(apsimx)
require(FME)
require(rapsimng)

## apsimx_options("../apsim.sif")

## argumentos <- xargs_apsimx(
##   single.threaded = TRUE,
##   cpu.count = 1L
## )

## simulaciones <- apsimx("simulation.apsimx", cleanup = TRUE, xargs = argumentos)

## system("singularity exec /home/uqasever/apsim.sif simulation.apsimx --single-threaded --cpu-count=1")

system("singularity exec /home/uqasever/apsim.sif Models simulation.apsimx")

simulaciones <- apsimx::read_apsimx("simulation.db")

simulaciones %>% saveRDS("simulaciones.rds")

simulaciones %>% head() %>% print()
