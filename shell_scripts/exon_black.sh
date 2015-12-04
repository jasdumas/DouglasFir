# script that pulls just the scaffolds that received hits into a separate multi-FASTA file 
# (genome scaffolds) for your next exonerate run
# from sumaira on 11/13
############# exon_black.sh ###################
#!/bin/bash                                                                                        
#$ -N exon-black                                                                                                                                                       # This sets the task range in the array from 1 to 4 with a step size of 1                                                                                              
#$ -t 1-983:1                                                                                                                                                            
# This sets the maximum number of concurrent tasks to 10, so that no more than 2 jobs will be run at once                                                               
#$ -tc 6
#$ -q highmem.q
#$ -S /bin/bash           
#$ -pe smp 1
# Specify the output file                                                                         
#$ -o exon-black_$JOB_ID.out
# Specify the error file
#$ -e exon-black_$JOB_ID.err

#$ -cwd                   
#start=$(date + %s.%N)
# Run the program
echo shortPsme800_v1.0.fasta$SGE_TASK_ID.fa

cd /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/atregr
exonerate --model protein2genome --query ../shortproteome.atregr.tfa --target /archive/PineRefSeq/douglasfir/psme800bins/shortPsme800_v1.0.fasta$SGE_TASK_ID.fa -n 1 --percent 70 --score 100 --minintron 20 --maxintron 800000 --showalignment no --showtargetgff yes --geneseed 250 --forcegtag --hspfilter 100 --showvulgar yes > testshortproteome.vvi.$SGE_TASK_ID.gff

#end=$(date +%s.%N)
#runtime=$(python -c "print(${end}-${start})")

#echo "Runtime for testshortproteome.vvi.$SGE_TASK_ID.gff was $runtime"
