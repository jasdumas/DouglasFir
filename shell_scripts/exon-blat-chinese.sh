#!/bin/bash

#############################################################
##### TEMPLATE SGE SCRIPT - BLAST EXAMPLE ###################
##### /common/template_smp.sh ###############################
#############################################################

# Name the directory (assumed to be a direct subdir of $HOME) from which the file

# listed in DATA_FILE is located and into which the output files will be deposited

# Specify name to be used to identify this run

#$ -N exon-blat-chinese

# Specify High Prioity

#$ -q highpri.q

# Specify that bash shell should be used to process this script

#$ -S /bin/bash

# Specify the output file

#$ -o /archive/Walnut_genomes/exon-blat-chinese_$JOB_ID.out

# Specify the error file

#$ -e /archive/Walnut_genomes/exon-blat-chinese_$JOB_ID.err

#$ -cwd
# Run the program
cd /archive/Walnut_genomes/exon-blat-chinese

# exonerate format  exonerate query.fasta target.fasta
