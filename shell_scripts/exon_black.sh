# script that pulls just the scaffolds that received hits into a separate multi-FASTA file 
# (genome scaffolds) for your next exonerate run
# from sumaira on 11/13
############# exon_black.sh ###################
#!/bin/bash     

# Specify name to be used to identify this run
#$ -N exon-black 

# This sets the task range in the array from 1 to 20 with a step size of 1                                                                                              
#$ -t 1-20:1   

# This sets the maximum number of concurrent tasks to 3                                                              
#$ -tc 3

# Specify that bash shell should be used to process this script
#$ -S /bin/bash  

# multiple cores per process (say 4 each)
#$ -pe smp 4

# Specify the output file                                                                         
#$ -o exon-black_$JOB_ID.out

# Specify the error file
#$ -e exon-black_$JOB_ID.err

#$ -cwd                   
#start=$(date + %s.%N)
# Run the program
echo HindsBlackWalnut.500.scaffolds.fasta$SGE_TASK_ID.fa

cd /archive/Walnut_genomes/Hinds_black_walnut/

exonerate --model protein2genome --query /archive/Walnut_genomes/spcombo.tfa --target /archive/Walnut_genomes/Hinds_black_walnut/HindsBlackWalnut.500.scaffolds.fasta$SGE_TASK_ID.fa -n 1 --percent 70 --score 100 --minintron 20 --maxintron 800000 --showalignment no --showtargetgff yes --geneseed 250 --forcegtag --hspfilter 100 --showvulgar yes > walnut_black.$SGE_TASK_ID.gff

#end=$(date +%s.%N)
#runtime=$(python -c "print(${end}-${start})")

#echo "Runtime for testshortproteome.vvi.$SGE_TASK_ID.gff was $runtime"
