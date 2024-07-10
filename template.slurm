#!/bin/bash --login
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --job-name=apsimx-test
#SBATCH --time=1:00:00
#SBATCH --partition=general
#SBATCH --account=a_chenu
#SBATCH -o slurm.output
#SBATCH -e slurm.error
#SBATCH --singularity-container apsim.sif

module load r/4.3.3-gfbf-2023a

srun Rscript 01.R
