#!/bin/bash
#SBATCH -n 1                    # Number of cores requested
#SBATCH -t 60                   # Runtime in minutes
                                # Or use HH:MM:SS or D-HH:MM:SS, instead of just number of minutes
#SBATCH -p short                # Partition (queue) to submit to
#SBATCH --mem-per-cpu=1G        # 8 GB memory needed (memory PER CORE)
#SBATCH --open-mode=append      # append adds to outfile, truncate deletes first
### In filenames, %j=jobid, %a=index in job array
#SBATCH -o %j.out               # Standard out goes to this file
#SBATCH -e %j.err               # Standard err goes to this file
#SBATCH --mail-type=END         # Mail when the job ends  
#write command-line commands below this line:

touch /n/scratch2/jc168/ZM_CYCIF1_059_ITOX/hi_res/$dir/foo

