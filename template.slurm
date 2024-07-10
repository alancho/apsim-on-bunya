#!/bin/bash --login
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --job-name=apsimx-test
#SBATCH --time=1:00:00
#SBATCH --partition=general
#SBATCH --account=a_chanu
#SBATCH -o slurm-%j.output
#SBATCH -e slurm-%j.error

module load r/4.3.3-gfbf-2023a

Rscript 01.R
