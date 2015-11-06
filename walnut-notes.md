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
2. task 2
