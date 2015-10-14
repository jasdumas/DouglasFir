#!/bin/bash

#############################################################                                                                                                                                                                                                                                                                              
##### TEMPLATE SGE SCRIPT - BLAST EXAMPLE ###################                                                                                                                                                                                                                                                                                
##### /common/template_smp.sh ###############################                                                                                                                                                                                                                                                                          
#############################################################                
                                                                                                                                                                       

# Name the directory (assumed to be a direct subdir of $HOME) from which the file                                                                                     
                                                                                                                                                                       
# listed in DATA_FILE is located and into which the output files will be deposited                                                       
                                                                                                                                                                       

# Specify name to be used to identify this run                                                                                                                     
                                                                                                                                                                       
#$ -N proteinDB                                                                                                                                                   
                                                                               
                                                                               
                                     
##############$ -q highpri.q
# Specify that bash shell should be used to process this script

#$ -S /bin/bash           
                                                                                                                                                              #$ -pe smp 1  

# Specify the output file                                                                         
    
#$ -o /archive/PineRefSeq/douglasfir/proteinDB/proteinDB_$JOB_ID.out

# Specify the error file

#$ -e /archive/PineRefSeq/douglasfir/proteinDB/proteinDB_$JOB_ID.err



#$ -cwd                                                                                                                                                                          
# Run the program 
cd /archive/PineRefSeq/douglasfir/proteinDB
#exonerate --ryo "QUERY %qi IDENTITY=90 ALIGNED_LENGTH=90\nTARGET %ti FULL_LENGTH=%tl ALIGNED_LENGTH=%tal\n" --model protein2genome --showtargetgff --showcigar --geneticcode 11 --bestn 1 --query shortamborella.fasta --target /archive/PineRefSeq/douglasfir/shortPsme500_v1.0.fasta

exonerate --model protein2genome --query shortamborella.fasta --target /archive/PineRefSeq/douglasfir/shortPsme500_v1.0.fasta --percent 90 --bestn 1 --showalignment --showquerygff --showtargetgff

#exonerate --model protein2genome /home/jasdumas/archive/eucalyptus.fasta.txt /archive/PineRefSeq/douglasfir/Psme_v1.0.fasta --percent 90 --proteinwordthreshold 70

#exonerate --model protein2genome /home/jasdumas/archive/Populustrichocarpa.fasta /archive/PineRefSeq/douglasfir/Psme_v1.0.fasta --percent 90 --proteinwordthreshold 70
