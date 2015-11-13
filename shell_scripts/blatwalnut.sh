#!/bin/bash

#############################################################
##### TEMPLATE SGE SCRIPT - BLAST EXAMPLE ###################
##### /common/template_smp.sh ###############################
#############################################################

# Specify name to be used to identify this run
#$ -N blatwalnut

######$ -q highpri.q

#$ -t 1-983:1                                                                                                                                                            
# This sets the maximum number of concurrent tasks to 10, so that no more than 2 jobs will be run at once                                                               
#$ -tc 16


# Specify that bash shell should be used to process this script

#$ -S /bin/bash

#$ -pe smp 1

# Specify the output file

#$ -o /archive/Walnut_genomes/blatwalnut_$JOB_ID.out

# Specify the error file

#$ -e /archive/Walnut_genomes/blatwalnut_$JOB_ID.err

#$ -cwd
# Run the program
echo ChineseWalnut.500.scaffolds.fasta

# change working directory
cd /archive/Walnut_genomes/

## blat format: blat database query [-ooc=11.ooc] output.psl
blat /archive/Walnut_genomes/ChineseWalnut.500.scaffolds.fasta  /archive/Walnut_genomes/spcombo.tfa -q=prot -t=dnax -maxIntron=800000 -fastMap -minScore=70 -minIdentity=60 spcombo$SGE_TASK_ID.psl
