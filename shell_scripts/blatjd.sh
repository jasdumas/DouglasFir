#!/bin/bash

#############################################################
##### TEMPLATE SGE SCRIPT - BLAST EXAMPLE ###################
##### /common/template_smp.sh ###############################
#############################################################

# Specify name to be used to identify this run
#$ -N blatjd

######$ -q highpri.q

#$ -t 1-983:1                                                                                                                                                            
# This sets the maximum number of concurrent tasks to 10, so that no more than 2 jobs will be run at once                                                               
#$ -tc 16


# Specify that bash shell should be used to process this script

#$ -S /bin/bash

#$ -pe smp 1

# Specify the output file

#$ -o /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/blatjd_$JOB_ID.out

# Specify the error file

#$ -e /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/blatjd_$JOB_ID.err

#$ -cwd
# Run the program
#cd /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/pabies
echo shortPsme800_v1.0.fasta$SGE_TASK_ID.fa
# blat format: blat database query [-ooc=11.ooc] output.psl

#blat /archive/PineRefSeq/douglasfir/psme800bins/shortPsme800_v1.0.fasta$SGE_TASK_ID.fa  /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/shortPabies1.0-HC-pep.faa -q=prot -t=dnax -maxIntron=800000 -fastMap -minScore=70 -minIdentity=60 pabies$SGE_TASK_ID.psl

#cd /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/pila
#blat /archive/PineRefSeq/douglasfir/psme800bins/shortPsme800_v1.0.fasta$SGE_TASK_ID.fa  /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/pila.transcriptome.pep.fasta -q=prot -t=dnax -maxIntron=800000 -fastMap -minScore=70 -minIdentity=60 pila$SGE_TASK_ID.psl

# concatenated the 6 species from PLAZA into newshort.tfa file
# cat shortproteome.atr.tfa shortproteome.egr.tfa shortproteome.osa.tfa shortproteome.ppa.tfa shortproteome.ptr.tfa shortproteome.vvi.tfa > newshort.tfa
cd /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/newshort
blat /archive/PineRefSeq/douglasfir/psme800bins/shortPsme800_v1.0.fasta$SGE_TASK_ID.fa  /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/newshort.tfa -q=prot -t=dnax -maxIntron=800000 -fastMap -minScore=70 -minIdentity=60 newshort$SGE_TASK_ID.psl
