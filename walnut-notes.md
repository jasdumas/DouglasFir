:chestnut: :chestnut: :chestnut:

## October 28th 2015   
11:00am @UCONN

From Jill on Skype: 
> Hi Jasmine, alrighty so we are in a bit of a holding pattern while we see how blat does with everything so I am going to have you check out another project here (just invited) and we are going to do something similar there.  Here, we are looking at four walnut genomes and we will be interested in providing genic annotation for them.
> [10/28/15, 11:09:25 AM] Jill Wegrzyn: the cool part is they have many close relatives, angiosperm (flowering trees) that have been sequenced so it will be easier to map everything back
[10/28/15, 11:09:51 AM] Jill Wegrzyn: Let's do the same thing with Plaza but we'll select a few more species and I'll provides those to you over there in asana.
 
From Jill on Asana: 
>Four species total with SOAPdenovo assemblies represented in asm3 files.  First step is to reduce these into assemblies with contigs > 500 bp in length for analysis.
These files are now in the main directory here:
>These shorter genomes are located here: /archive/Walnut_genomes
*500.scaffolds.fasta
> Location of walnut genomes: `/archive/Walnut_genomes`

### Protein Species Sets We Will Be Using: 

| Species | Do we already have? | location |
|----|----|---|
A. trichopoda | :heavy_check_mark:| /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/shortproteome.atr.tfa
P. trichocarpa | :heavy_check_mark:| /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/shortproteome.ptr.tfa
E. grandis| :heavy_check_mark:| /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/shortproteome.egr.tfa
O.sativa | :heavy_check_mark:| /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/shortproteome.osa.tfa 
V. Vinifera | :heavy_check_mark: | /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/shortproteome.vvi.tfa  
P.patens | New Download :arrow_double_down: ftp://ftp.psb.ugent.be/pub/plaza/plaza_public_dicots_03/Fasta/proteome.ppa.tfa.gz| /archive/Walnut_genomes/shortproteome.ppa.tfa
A.thaliana | New Download :arrow_double_down: ftp://ftp.psb.ugent.be/pub/plaza/plaza_public_dicots_03/Fasta/proteome.ath.tfa.gz| /archive/Walnut_genomes/shortproteome.ath.tfa
C.sinensis|New Download :arrow_double_down: ftp://ftp.psb.ugent.be/pub/plaza/plaza_public_dicots_03/Fasta/proteome.csi.tfa.gz| /archive/Walnut_genomes/shortproteome.csi.tfa
G.max|New Download :arrow_double_down: ftp://ftp.psb.ugent.be/pub/plaza/plaza_public_dicots_03/Fasta/proteome.gma.tfa.gz| /archive/Walnut_genomes/shortproteome.gma.tfa
P. persica|New Download :arrow_double_down: ftp://ftp.psb.ugent.be/pub/plaza/plaza_public_dicots_03/Fasta/proteome.ppe.tfa.gz | /archive/Walnut_genomes/shortproteome.ppe.tfa
C. reinhardtii | New Download :arrow_double_down: ftp://ftp.psb.ugent.be/pub/plaza/plaza_public_dicots_03/Fasta/proteome.cre.tfa.gz| /archive/Walnut_genomes/shortproteome.cre.tfa
Zea mays | New Download :arrow_double_down: ftp://ftp.psb.ugent.be/pub/plaza/plaza_public_dicots_03/Fasta/proteome.zma.tfa.gz| /archive/Walnut_genomes/shortproteome.zma.tfa

2. Move/Copy: mv/cp existing files to `/archive/Walnut_genomes` and download the rest from PLAZA - Robin has to change the permissions of the existing files in order for me to move files from `/archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/`   
3. `wget filepath` for each of the above links to download the PLAZA file
4. `chmod 777` on each downloaded file
3. `gunzip`: to unzip .gz files into the current folder, needed for each do for each new download
4. Run the `createfasta2.py` on each of the downloaded proteome files
5. `cat` all the files into one!   
cat shortproteome.atr.tfa shortproteome.ptr.tfa shortproteome.egr.tfa shortproteome.osa.tfa shortproteome.vvi.tfa shortproteome.ppa.tfa shortproteome.ath.tfa shortproteome.csi.tfa shortproteome.gma.tfa shortproteome.ppe.tfa shortproteome.cre.tfa shortproteome.zma.tfa > spcombo.tfa
 * File location: Here is the combined file of the PLAZA species: `/archive/Walnut_genomes/spcombo.tfa`
6. From Jill: The next step is go forward with a BLAT run of these proteins and such - go ahead and use asana for the path to your scripts and output FASTA


## November 6 2015    
10AM @Home   
1. Create separate scripts for each of the walnut genomes and then submit with qsub
  * ChineseWalnut.500.scaffolds.fasta (already created last week)
  * ChineseWignut.500.scaffolds.fasta
  * HindsBlackWalnut.500.scaffolds.fasta
  * `blatwalnut_black.sh  blatwalnut.sh  blatwalnut_texas.sh  blatwalnut_wing.sh`


## November 13 2015   
10AM @UCONN    

1. Edited the blatwalnut.sh script and removed the SGE_TASK tag to mediate the error:  Can't open /archive/Walnut_genomes/HindsBlackWalnut.500.scaffolds.fasta44.fa to read: No such file or directory     
2. Re-ran the BLAT scripts which should hopefully run quite quick   
3. Next step is to run exonerate on the BLAT script for comparisons - waiting for a script template    
  * [11/13/15, 10:41:47 AM] Jill Wegrzyn: let's get your script that will identify the genomic contigs (from the scaffolds file with hits) and then take just those and run exonerate against them
blat should probably finish pretty quick but exonerate is not so which is why we'll use this first pass filtering
 * path location: `/common/robin/wholegenome/douglasfir/augustus/BLAT2/bins/serial.exonerate.test.sh`
4. BLAT run from November 6th created too many/incorrect .psl files, so I was trying to create an R script to delete those output files

## November 20 2015      
10:45AM @ UCONN      

1. Trying to remove the junk .psl files
2. Recieved an email from Larry @ UCONN about over-using the cluster resources and my jobs were deleted
3. Changed shell_scripts to have #$ -tc 4  to limit the array to four concurrent tasks at a time. instead of the 16 which they were on previously.
4. Once I remove the junk files, I need to run exonerate on the selected/matched scaffolds and put them on Asana. __Record Exonerate run information here.  How many scaffolds were selected from the BLAT runs in total (for each species).  End results in terms of how many sequences aligned to this shortened genome.__ - from Jill
5. Steps to re-do script, bin down the reference genome and Run the BLAT script correctly now:
  * Create a new folder for each genome ie (/archive/Walnut_genomes/Hinds_black_walnut):
    `mkdir /archive/Walnut_genomes/ChineseWalnut`
  * Copy the shell script, the scratch.txt, and the splitfasta2.py to the new folder:
    `cp /archive/Walnut_genomes/blatwalnut.sh /archive/Walnut_genomes/ChineseWalnut`     
    `cp /archive/Walnut_genomes/Hinds_black_walnut/scratch.txt /archive/Walnut_genomes/ChineseWalnut`      
    `cp /archive/Walnut_genomes/Hinds_black_walnut/splitfasta2.py /archive/Walnut_genomes/ChineseWalnut`     
  * Change directory (if not in the specific genome folder yet)
    `cd /archive/Walnut_genomes/ChineseWalnut`
  * Modifiy the scratch.txt script for the file individually
    # example done by Robin 11/20/2015 @ 1PM - UCONN
    `python splitfasta2.py --fasta HindsBlackWalnut.500.scaffolds.fasta --path /archive/Walnut_genomes --pieces 20 `      
    Current one for the example: `python splitfasta2.py --fasta ChineseWalnut.500.scaffolds.fasta --path  /archive/Walnut_genomes --pieces 20`       
    `python splitfasta2.py --fasta ChineseWignut.500.scaffolds.fasta --path /archive/Walnut_genomes --pieces 20`      
    `python splitfasta2.py --fasta TexasWalnut.500.scaffolds.fasta --path /archive/Walnut_genomes --pieces 20`      
 * Call the python line in the terminal and it takes a few seconds and the outputted bins will now be avaibale in the folder
 * Modify the shell script with vim and use the template/example: https://github.com/jasdumas/DouglasFir/blob/master/shell_scripts/blatwalnut_black.sh      
 * submit via qsub:
    Your job-array 109421.1-20:1 ("bw-chinese") has been submitted

## November 30, December 3     
REMOTE

Copy into the command line for each walnut genome (texas specifically):    
`mkdir /archive/Walnut_genomes/texas  `      
`cp /archive/Walnut_genomes/blatwalnut_texas.sh /archive/Walnut_genomes/texas`          
`cp /archive/Walnut_genomes/Hinds_black_walnut/scratch.txt /archive/Walnut_genomes/texas`      
`cp /archive/Walnut_genomes/Hinds_black_walnut/splitfasta2.py /archive/Walnut_genomes/texas`      
`cd /archive/Walnut_genomes/texas`

Copy into the command line for each walnut genome (ChineseWingnut specifically):    
`mkdir /archive/Walnut_genomes/ChineseWignut  `      
`cp /archive/Walnut_genomes/blatwalnut_wing.sh /archive/Walnut_genomes/ChineseWignut`          
`cp /archive/Walnut_genomes/Hinds_black_walnut/scratch.txt /archive/Walnut_genomes/ChineseWignut`      
`cp /archive/Walnut_genomes/Hinds_black_walnut/splitfasta2.py /archive/Walnut_genomes/ChineseWignut`      
`cd /archive/Walnut_genomes/ChineseWignut`


