#!/bin/bash
#PBS -N phabox_cross
#PBS -l nodes=1:ppn=20
#PBS -l walltime=60:00:00 
#PBS -l vmem=40gb

cd /data/gent/vo/001/gvo00125/vsc45615
source .bashrc
conda activate phabox

cd /data/gent/vo/001/gvo00125/vsc45615/thesis/genomad_output/individual_output

for sample in `cat sample_list`
do
python /data/gent/vo/001/gvo00125/vsc45615/miniconda3/envs/phabox/phabox/main.py --contigs ${sample}_virus.fna --threads 20 --len 1000 --rootpth /data/gent/vo/001/gvo00125/vsc45615/thesis/phabox_final/${sample} --out megahit/${sample} --parampth /data/gent/vo/001/gvo00125/vsc45615/miniconda3/envs/phabox/parameters --dbdir /data/gent/vo/001/gvo00125/vsc45615/miniconda3/envs/phabox/database;done
 
 





