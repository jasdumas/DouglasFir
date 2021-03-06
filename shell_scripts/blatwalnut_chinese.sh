#!/bin/bash

#############################################################
##### TEMPLATE SGE SCRIPT - BLAST EXAMPLE ###################
##### /common/template_smp.sh ###############################
#############################################################

#

# Specify name to be used to identify this run
#$ -N bw-chinese

#$ -t 1-20:1                                                                                                                                             

# This sets the maximum number of concurrent tasks to 10, so that no more than 2 jobs will be run at once                                                               
#$ -tc 5

# email address
#$ -M jasmine.dumas@gmail.com

# mailing options:
#$ -m e


# Specify that bash shell should be used to process this script

#$ -S /bin/bash

#$ -pe smp 1

# Specify the output file

#$ -o blatwalnut_ch_$JOB_ID.out

# Specify the error file

#$ -e blatwalnut_ch_$JOB_ID.err

#$ -cwd
# Run the program
echo ChineseWalnut.500.scaffolds.fasta$SGE_TASK_ID.fa

# change working directory
#cd /archive/Walnut_genomes/

## blat format: blat database query [-ooc=11.ooc] output.psl
blat /archive/Walnut_genomes/ChineseWalnut/ChineseWalnut.500.scaffolds.fasta$SGE_TASK_ID.fa /archive/Walnut_genomes/spcombo.tfa -q=prot -t=dnax -maxIntron=800000 -fastMap -minScore=70 -minIdentity=60 spcombo_ch_$SGE_TASK_ID.psl

