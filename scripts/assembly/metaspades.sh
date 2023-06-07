#!/bin/bash 
#PBS -N metaspades_7
#PBS -l nodes=4:ppn=16 
#PBS -l walltime=50:00:00 
#PBS -l vmem=50gb 
 
module load SPAdes/3.15.3-GCC-11.2.0  
cd /data/gent/vo/001/gvo00125/vsc45615/thesis/trimmomatic4/trimmomatic6
for sample in `cat sample_list`
do 
spades.py -1 ${sample}_R1.fastq.gz -2 ${sample}_R2_paired.fastq.gz -o /data/gent/vo/001/gvo00125/vsc45615/thesis/metaspades_osns/${sample};done
