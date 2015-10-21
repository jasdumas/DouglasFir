#!/bin/bash

#############################################################
##### TEMPLATE SGE SCRIPT - BLAST EXAMPLE ###################
##### /common/template_smp.sh ###############################
#############################################################


# Name the directory (assumed to be a direct subdir of $HOME) from which the file

# listed in DATA_FILE is located and into which the output files will be deposited


# Specify name to be used to identify this run

#$ -N proteinDBtest



##############$ -q highpri.q
# Specify that bash shell should be used to process this script

#$ -S /bin/bash
                                                                                                                                                              #$ -pe smp 1

# Specify the output file

#$ -o /archive/PineRefSeq/douglasfir/proteinDB/proteinDBtest_$JOB_ID.out

# Specify the error file

#$ -e /archive/PineRefSeq/douglasfir/proteinDB/proteinDBtest_$JOB_ID.err


#$ -cwd
# Run the program
cd /archive/PineRefSeq/douglasfir/proteinDB

# Build the database (.esd) file
fasta2esd testsq.fasta testsq.esd

# Build the index (.esi) file
esd2esi testsq.esd testsq.esi

# Starting the server
exonerate-server testsq.esi

# Running the Client
exonerate /archive/PineRefSeq/douglasfir/shortPsme500_v1.0.fasta localhost:12886
