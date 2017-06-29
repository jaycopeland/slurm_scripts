#!/bin/bash
#SBATCH -n 1                               # 1 core
#SBATCH -t 0-00:05                         # Runtime of 5 minutes, in D-HH:MM format
#SBATCH -p short                           # Run in short partition
#SBATCH -o hostname_%j.out                 # File to which STDOUT + STDERR will be written, including job ID in filename
#SBATCH --mail-type=ALL                    # ALL email notification type
#SBATCH --mail-user=abc123@hms.harvard.edu  # Email to which notifications will be sent
 
srun hostname
srun echo "Hello, I ran an sbatch script with srun commands!"
