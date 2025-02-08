#!/bin/sh

#SBATCH --account=cap5404
#SBATCH --qos=cap5404
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --mem=50gb
#SBATCH --time=12:00:00
#SBATCH --job-name=train
#SBATCH --mail-type=ALL
#SBATCH --mail-user=sjalui@ufl.edu
#SBATCH --output=serial_%j.out

pwd; hostname; date
nvidia-smi
ml pytorch

python plot_convergence.py