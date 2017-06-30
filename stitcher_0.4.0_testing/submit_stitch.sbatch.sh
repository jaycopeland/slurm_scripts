# loop over all the directories containing rcpnl files
# print the directory name (so we have some visual progress indicator)
# then submit the stitcher jobs to SLURM
#
for DIR in *; do
echo ${DIR} # print the directory name
sbatch -o ${DIR}.stdout.txt -e ${DIR}.stderr.txt stitch_many.sbatch ${DIR}
sleep 1 # pause to be kind to the scheduler
done
