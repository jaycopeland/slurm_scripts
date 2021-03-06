#!/bin/bash
#SBATCH -n 1                    # Number of cores requested
#SBATCH -t 5                    # Runtime in minutes
                                # Or use HH:MM:SS or D-HH:MM:SS, instead of just number of minutes
#SBATCH -p short                # Partition (queue) to submit to
#SBATCH --mem-per-cpu=8G        # 8 GB memory needed (memory PER CORE)
#SBATCH --open-mode=append      # append adds to outfile, truncate deletes first
### In filenames, %j=jobid, %a=index in job array
#SBATCH -o %j.out               # Standard out goes to this file
#SBATCH -e %j.err               # Standard err goes to this file
#SBATCH --mail-type=END         # Mail when the job ends  
#write command-line commands below this line
AA=("$@")
~/sticher-0.4.0/bin/sticher stitch \
--overwrite \
--input /n/scratch2/jc168/ZM_CYCIF1_059_ITOX/hi_res/${AA[$SLURM_ARRAY_TASK_ID]}/Scan* \
--output /n/scratch2/jc168/ZM_CYCIF1_059_ITOX/stitcher0.4.0_output/${AA[$SLURM_ARRAY_TASK_ID]}.stitcher040.ome.tif
