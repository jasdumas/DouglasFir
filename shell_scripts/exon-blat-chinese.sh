#!/bin/bash

########### WALNUT Genome ###################################
##### TEMPLATE SGE SCRIPT - BLAST EXAMPLE ###################
##### /common/template_smp.sh ###############################
#############################################################
 
# Specify name to be used to identify this run

#$ -N exon-blat-chinese
                                                                                                                                                 # This sets the task range in the array from 1 to 4 with a step size of 1                                                                                              
#$ -t 1-983:1     
                                                                                                                                                       
# This sets the maximum number of concurrent tasks to 10, so that no more than 2 jobs will be run at once                                                               
#$ -tc 4

# Email address (change to yours)
#$ -M jasmine.dumas@gmail.com

# Specify mailing options: b=beginning, e=end, s=suspended, n=never, a=aborted or suspended
#$ -m besa

#$ -q highmem.q

#$ -S /bin/bash 
          
#$ -pe smp 1

# Specify the output file                                                                         
#$ -o exon-blat-chinese_$JOB_ID.out

# Specify the error file
#$ -e exon-blat-chinese_$JOB_ID.err

#$ -cwd                   
#start=$(date + %s.%N)

# Run the program
echo ChineseWalnut.500.scaffolds.fasta$SGE_TASK_ID.fa

# change working directory
cd /archive/Walnut_genomes/

# exonerate format exonerate --model protein2genome query.fasta target.fasta
exonerate --model protein2genome --query ../spcombo.tfa --target /archive/Walnut_genomes/ChineseWalnut.500.scaffolds.fasta$SGE_TASK_ID.fa -n 1 --percent 70 --score 100 --minintron 20 --maxintron 800000 --showalignment no --showtargetgff yes --geneseed 250 --forcegtag --hspfilter 100 --showvulgar yes > ChineseWalnut.500.scaffolds.fasta$SGE_TASK_ID.gff

#end=$(date +%s.%N)
#runtime=$(python -c "print(${end}-${start})")

#echo "Runtime for ChineseWalnut.500.scaffolds.fasta$SGE_TASK_ID.fa was $runtime"
