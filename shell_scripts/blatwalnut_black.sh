#############################################################
##### TEMPLATE SGE SCRIPT - BLAST EXAMPLE ###################
##### /common/template_smp.sh ###############################
#############################################################

#

# Specify name to be used to identify this run
#$ -N bw-ch

#$ -q highmem.q

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

#$ -o blatwalnut_$JOB_ID.out

# Specify the error file

#$ -e blatwalnut_$JOB_ID.err

#$ -cwd
# Run the program
echo HindsBlackWalnut.500.scaffolds.fasta$SGE_TASK_ID.fa

## blat format: blat database query [-ooc=11.ooc] output.psl
blat /archive/Walnut_genomes/Hinds_black_walnut/HindsBlackWalnut.500.scaffolds.fasta$SGE_TASK_ID.fa  /archive/Walnut_genomes/spcombo.tfa -q=prot -t=dnax -maxIntron=800000 -fastMap -minScore=70 -minIdentity=60 spcombo_black$SGE_TASK_ID.psl

