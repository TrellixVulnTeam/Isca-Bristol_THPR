#!/bin/bash

#SBATCH --job-name=test_planet
#SBATCH --partition=serial
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=3:00:00
#SBATCH --mem-per-cpu=20G

module load build/gcc-7.2.0
module load languages/anaconda2/5.0.1
module load tools/git/2.18.0

echo 'modules loaded'
module list

source activate isca_env

time python giant_planet_test_case.py
