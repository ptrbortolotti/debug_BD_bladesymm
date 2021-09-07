#!/bin/bash
#SBATCH --account=bar
#SBATCH --time=2-00:00:00
#SBATCH --job-name=bl_symm
#SBATCH --nodes=1
#SBATCH --mail-user pbortolo@nrel.gov
#SBATCH --mail-type BEGIN,END,FAIL
######SBATCH --partition=debug
#SBATCH --qos=high
######SBATCH --mem=1000GB      # RAM in MB
#SBATCH --output=job_log.%j.out  # %j will be replaced with the job ID

module purge
module load conda
module load comp-intel
module load intel-mpi
module load mkl

/home/pbortolo/openfast_v3p0p0/build/glue-codes/openfast/openfast IEA-15-240-RWT_ws09.fst &
wait
