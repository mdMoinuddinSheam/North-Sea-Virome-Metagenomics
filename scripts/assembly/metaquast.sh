#!/bin/bash
#PBS -N quast
#PBS -l nodes=1:ppn=16
#PBS -l walltime=15:00:00
#PBS -l vmem=50gb

module load QUAST/5.0.2-foss-2020a-Python-3.8.2
cd /data/gent/vo/001/gvo00125/vsc45615/thesis/genomad_output/individual_output


for sample in `cat sample_list`
do
metaquast.py /data/gent/vo/001/gvo00125/vsc45615/thesis/genomad_output/individual_output/${sample}.fna -t 10 --no-snps --space-efficient  -o /data/gent/vo/001/gvo00125/vsc45615/thesis/metaquast_final/${sample} --max-ref-number 0;done

