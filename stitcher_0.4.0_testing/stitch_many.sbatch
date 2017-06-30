#!/bin/bash

# stitch_many.sbatch
# A SLURM batch file to run stitcher over many directories
# containing rcpnl files.
#
#SBATCH -p short # Partition
#SBATCH -n 1 # one CPU
#SBATCH -N 1 # on one node
#SBATCH -t 0-2:00 # Running time of 2 hours
#SBATCH --mem-per-cpu=80G # Memory request

mkdir ${1}_out
cd ${1}_out


~/sticher stitch \
    --overwrite \ 
    --input ${1} \
    --output ${1}.stitcher.0.4.0.ome.tif
