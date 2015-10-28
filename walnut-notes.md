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

1. Protein Species Set we will be using: 

| Species | Do we already have? | location |
|----|----|---|
[P.patens](ftp://ftp.psb.ugent.be/pub/plaza/plaza_public_dicots_03/Fasta/proteome.ppa.tfa.gz) | |
A. trichopoda | :heavy_check_mark:| /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/shortproteome.atr.tfa
P. trichocarpa | :heavy_check_mark:| /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/shortproteome.ptr.tfa
E. grandis| :heavy_check_mark:| /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/shortproteome.egr.tfa
A.thaliana |  |
C.sinensis| |
O.sativa | :heavy_check_mark:| /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/shortproteome.osa.tfa 
G.max| |
P. persica| |
S. moellendorffii| |

2. mv existing files to `/archive/Walnut_genomes` and download the rest from PLAZA
