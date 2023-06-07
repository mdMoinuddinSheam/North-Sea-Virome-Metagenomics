#!/bin/bash 
#PBS -N fastqc
#PBS -l nodes=1:ppn=16 
#PBS -l walltime=40:00:00 
#PBS -l vmem=70gb 

cd /data/gent/vo/001/gvo00125/vsc45615 
source .bashrc 
conda activate fastqc 

fastqc /data/gent/vo/001/gvo00125/vsc45615/thesis/trimmomatic4/trimmomatic6/*astq.gz* -o /data/gent/vo/001/gvo00125/vsc45615/thesis/fastqc/fastqc6


