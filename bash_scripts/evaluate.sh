#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --gpus=1
#SBATCH --cpus-per-task=16
#SBATCH --partition=gpu
#SBATCH --time=00:05:00
#SBATCH --mem=40GB
#SBATCH --output=job_output/alignment_tax_job_%j.out
#SBATCH --error=job_output/alignment_tax_job_%j.err

#Loading modules
module load 2022
module load Python/3.10.4-GCCcore-11.3.0

source output_control_venv/bin/activate
python src/evaluate.py --version 3.00 --version "2.18" --note "testing with new activation logic" --pos_acts random only_text  --neg_acts only_code all --total_tokens_per_ic 100