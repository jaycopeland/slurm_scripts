# loop over all directories in /n/scratch2/jc168/ZM_CYCIF1_059_ITOX/hi_res/ 
# and then submit the stitcher jobs to SLURM
#

module load java/jdk-1.8u112

cd /n/scratch2/jc168/ZM_CYCIF1_059_ITOX/hi_res/

for DIR in *; do

sbatch -p short -t 60 --mem=16G \
--mail-user=jay_copeland@hms.harvard.edu \
--mail-type=All \
--wrap="~/sticher-0.4.0/bin/sticher stitch \
--overwrite \
--input ./${DIR}/Scan* \
--output ../stitcher-0.4.0_output/${DIR}.stitcher-0.4.0.ome.tif"

sleep 1 # pause to be kind to the scheduler

done
