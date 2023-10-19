#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --gpus=1
#SBATCH --cpus-per-task=16
#SBATCH --partition=gpu
#SBATCH --time=00:30:00
#SBATCH --mem=40GB
#SBATCH --output=job_output/why_is_my_acc_so_low/job_%j.out
#SBATCH --error=job_output/why_is_my_acc_so_low/job_%j.err

#Loading modules
module load 2022
module load Python/3.10.4-GCCcore-11.3.0

source output_control_venv/bin/activate
python src/why_is_my_acc_so_low.py