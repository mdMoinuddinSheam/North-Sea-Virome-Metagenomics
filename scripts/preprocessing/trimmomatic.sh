#!/bin/bash
#PBS -N trimmomatic_C
#PBS -l nodes= 1:ppn=16
#PBS -l walltime=40:00:00

module load Trimmomatic/0.39-Java-11
cd /data/gent/vo/001/gvo00125/vsc45615/thesis/samples

for sample in `cat combined_samples`
do 
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.39.jar PE -threads 4 ${sample}_R1.fastq.gz ${sample}_R2.fastq.gz /data/gent/vo/001/gvo00125/vsc45615/thesis/trimmomatic4/trimmomatic6/combined_6/${sample}_R1_paired.fastq.gz /data/gent/vo/001/gvo00125/vsc45615/thesis/trimmomatic4/trimmomatic6/combined_6/${sample}_R1_unpaired.fastq.gz /data/gent/vo/001/gvo00125/vsc45615/thesis/trimmomatic4/trimmomatic6/combined_6/${sample}_R2_paired.fastq.gz /data/gent/vo/001/gvo00125/vsc45615/thesis/trimmomatic4/trimmomatic6/combined_6/${sample}_R2_unpaired.fastq.gz ILLUMINACLIP:/data/gent/vo/001/gvo00125/vsc45615/thesis/samples/adapters/TruSeq3-PE-2.fa:1:30:10 MINLEN:50 SLIDINGWINDOW:5:22 HEADCROP:15;done


