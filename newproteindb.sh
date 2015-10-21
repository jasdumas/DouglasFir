#!/bin/bash

#$ -N exonerate
#$ -q highmem.q
#$ -S /bin/bash
#$ -pe smp 1
# Specify the output file
#$ -o exonerate_$JOB_ID.out
# Specify the error file
#$ -e exonerate_$JOB_ID.err
