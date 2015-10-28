## September 18th 2015
10:00am @Home

1. Review [Genetic Science Learning Labs](http://learn.genetics.utah.edu/content/labs/extraction/) 
   * DNA Extraction

2. Background: Annotation of Genes
   * Annotation is the process by which pertinent information about these raw DNA sequences is added to the genome databases. This involves describing different regions of the code and identifying which regions can be called genes.
   * http://www.plantgdb.org/tutorial/annotatemodule/
   
3. Background: Research Articles
   * http://www.genomebiology.com/2014/15/3/R59

## September 20th 2015
6:00PM @Home

1. http://weatherby.genetics.utah.edu/MAKER/wiki/index.php/MAKER_Tutorial
   * Annotations are descriptions of different features of the genome, and they can be structural or functional in        nature. Examples: Structural Annotations: exons, introns, UTRs, splice forms. Functional Annotations: process a      gene is involved in (metabolism), molecular function (hydrolase), location of expression (expressed in the    mitochondria), etc. 

2. Genome sequence itself is not very useful. The first question that occurs to most of us when a genome is sequenced is, "where are the genes?" To **identify the genes we need to annotate the genome**. And while most researchers probably don't give annotations a lot of thought, they use them everyday.

3. Examples of Annotation Databases: Ensembl, RefSeq, FlyBase, WormBase, Mouse Genome Informatics
   Every time we use techniques such as RNAi, PCR, gene expression arrays, targeted gene knockout, or ChIP we are   **basing our experiments on the information derived from a digitally stored genome annotation**. If an annotation is correct, then these experiments should succeed; however, if an annotation is incorrect then the experiments that are based on that annotation are bound to fail. 

4. http://pinegenome.org/pinerefseq/files/PAG2015_Wegrzyn_PineRefSeq.pdf

5. The transcriptome is the set of all RNA molecules, including mRNA, rRNA, tRNA, and other non-coding RNA   transcribed in one cell or a population of cells. It differs from the exome in that it includes only those RNA molecules found in a specified cell population, and usually includes the amount or concentration of each RNA molecule in addition to the molecular identities.


## September 21st 2015

10am @UCONN 

Tutorial: http://bioinformatics.uconn.edu/resources-and-events/tutorials/rna-seq-tutorial-with-reference-genome/

Links:

1. https://dendrome.ucdavis.edu/treegenes/

2. http://nar.oxfordjournals.org/content/32/suppl_2/W309.long
 
3. https://www.youtube.com/watch?v=yWsDt54bezo

4. https://en.wikipedia.org/wiki/Pinus_taeda
 
5. https://en.wikipedia.org/wiki/Hidden_Markov_model
 
6. https://en.wikipedia.org/wiki/FASTA_format

7. http://www.ncbi.nlm.nih.gov/protein

8. http://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=424432

9. http://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?mode=Info&id=3694&lvl=3

_**How to download protien sequence data for gene species Vitis Vinifera:**_

1. Search for **Vitis vinifera** on the [TreeGenes Database](https://dendrome.ucdavis.edu/treegenes/species/index.php?#results)

2. Scroll to the bottom of the page to view the results and Select the Species Link to the [NCBI Taxonomy Browser](http://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=29760)

3. Click on the [main header](http://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?mode=Info&id=29760&lvl=3&lin=f&keep=1&srchmode=1&unlock)

4. On the right-hand side table: "Entrez records", click the **Protein** [link](http://www.ncbi.nlm.nih.gov/protein/?term=txid29760[Organism:exp])

5. Select the Send to link > Select **File** Destination > Format **FASTA** > Default order
![alt tag](https://cloud.githubusercontent.com/assets/6685750/10000206/b6bd50fe-6068-11e5-9773-710effde1a3f.jpeg)

6. Download massively big file which will needed to be then added to a folder on the bbcsvr3

7. To copy files To the server run the following on your workstation or laptop (open up another shell script alongside the UCONN bash shell):

   `scp -r <path_to_directory> <your_username>@<host_name>: # recursively for multiple files`
   
   `scp /Users/jasminedumas/Downloads/sequence.fasta jasdumas@bbcsrv3.biotech.uconn.edu: # for single files`

![alt tag](https://cloud.githubusercontent.com/assets/6685750/10000896/eca78c12-606c-11e5-91bd-a11a51e12d4a.jpeg)

Note: this also needs to be completed for Populus trichocarpa, Eucalyptus as suggested from Jill from Skype:
> Greetings all, just a note that as we are gathering outside resources for inclusion, I would keep it refined to those that actually map nicely against the genome.  Exonerate works very well to take proteins against nucleotide assemblies of genomes (though it is not particularly fast).  Gmap works the best for transcriptomes but watch the parameters because they matter.  Gmap will for example split an alignment across scaffolds without telling you and in this case, we won;t want to consider those for proteins, I would make use of the following species primarily: Vitis vinifera, Populus trichocarpa, Eucalyptus, both spruce projects (gather most recent sets from Congenie since they are not in Genbank), loblolly pine high quality from annotation release 3, recent amborella genome (one of the sequenced common ancestors of angios and gymnos), and throw in rice as well to represent monocot.

## September 25th 2015

noon @ Home

1. Go to Plaza as an alternative starting place for finding the remainding gennomes for the Protein DB http://plaza.psb.ugent.be
2. Go to Plaza [Dicots 3.0](http://bioinformatics.psb.ugent.be/plaza/versions/plaza_v3_dicots/)
3. Go to the [downloads page](http://bioinformatics.psb.ugent.be/plaza/versions/plaza_v3_dicots/download/index) and navigate to the FASTA data dropdown menu
4. Find [Eucalyptus main page](http://bioinformatics.psb.ugent.be/plaza/versions/plaza_v3_dicots/organism/view/Eucalyptus+grandis) and click to open it 
5. Click in [NCBI link](http://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=71139)![alt tag](https://cloud.githubusercontent.com/assets/6685750/10105920/8fa52216-637f-11e5-95a6-8b89837d209f.jpeg)
6. Click the Protein link and follow the 5th step in the previous dy about downloading the fasta data file ![alt tag](https://cloud.githubusercontent.com/assets/6685750/10105913/8896d74e-637f-11e5-85d4-caa6b8a64d62.jpeg)


## September 29th 2015

3:15PM @ HOME

* I had to wait until the douglas-fir genome was put into the server that I have access to from Robin

> I have uploaded the Doug-fir genome in BBC. This can be found using the following path:
> /archive/PineRefSeq/douglasfir/Psme_v1.0.fasta - email from Robin

1. I created a script so that I would be able to submit multiple jobs to be run using my [atom text editor](https://atom.io/). I named the file proteindb.sh with a **.sh** Extension.

2. I moved the file from the local computer to my bbc server with the `scp` command

3. Then after logging into my account. I called the following command: `[jasdumas@bbcsrv3 ~]$ qsub proteindb.sh
Your job 73382 ("proteindb.sh") has been submitted`

4. Job status and tutorial [refference from the lab site](http://bioinformatics.uconn.edu/understanding-the-bbc-cluster-and-sge/)

## October 5th 2015

10AM @ UCONN

Email from Jill: Still need 

1. amborella (which I think is in PLAZA  now or at least should be in phytozome) 
 * http://bioinformatics.psb.ugent.be/plaza/versions/plaza_v3_dicots/organism/view/Amborella+trichopoda
 
2. the monocot rice (Oryza) 
 * http://bioinformatics.psb.ugent.be/plaza/versions/plaza_v3_dicots/organism/view/Oryza+sativa+ssp.+japonica

3. a set of our closely related gymnosperm sequences which are mostly hosted through the Congenie project.

http://phytozome.jgi.doe.gov/pz/portal.html
http://congenie.org/downloads

(Still can't find these)

4. Robin edited/re-created a bash script for the exonerate script filled with the percent/threshold parameters

5. Robin created a python script to trim the fasta files that are atleast 150aa (amino acids) in length and had them generate a shorter version of the file in the `/archive/PineRefSeq/douglasfir/proteinDB` directory.

### Tasks:

* Transfer all files to the directory  `/archive/PineRefSeq/douglasfir/proteinDB`. My common `/home/jasdumas` folder is getting to large. use `mv` command

* Alter permission of files with `chmod 777 /home/jasdumas/amborella.fasta.txt` command which give other users read/write access to everyone 

* rename/re-download generic file name `sequence.fasta` to `vinifera.fasta`

* Run the python script on the other fasta files!


## October 14th 2015

10AM @ UCONN

1. Getting set-up with payroll today
2. https://en.wikipedia.org/wiki/Less_(Unix) : "less > more," implying that less has greater functionality than more. Tip: q = quit
3. Check exonerate [man documentation](http://www.animalgenome.org/bioinfo/resources/manuals/exonerate/exonerate.man.html) for help on multi-threading or two different versions of the software
4. Links to other types of genomic annotation software http://www.nature.com/nrg/journal/v13/n5/fig_tab/nrg3174_T1.html, [More details on exonerate](http://www.biomedcentral.com/1471-2105/6/31)
5. Client-server version of Exonerate: http://www.animalgenome.org/bioinfo/resources/manuals/exonerate/server.html
 * Testing this out with a testsq.fasta (created on Atom text editor and then moved to my bbc folder, then changed permissions and copied into the `cd /archive/PineRefSeq/douglasfir/ folder`) file hand constructed with 5-6 sequences from NCBI protein db
 * Following these steps: To run the exonerate with exonerate-server, you need to build a database file and an index file, and start the server using these files. These steps are explained below: 
   * Building the database (.esd) file
    * Building the index (.esi) file
    * Starting the server
    * Running the client
    * Running under LSF


## October 21 2015

9AM @ HOME

1. I totaly downloaded the protein sequnce files wrong and made the fasta files too big! All I need to do was Data -> Download -> Fasta Data and you will see protein sets 
  
![alt tag](https://cloud.githubusercontent.com/assets/6685750/10641646/167e5d9e-77e8-11e5-8112-8111b8569a64.jpeg)

2. Robin re-downloaded the files, and put them in the path `/archive/PineRefSeq/douglasfir/proteinDB/exonerate/query` [Asana reference task](https://app.asana.com/0/46186443887322/51456931801305)

3. Need to kick-off a new script that runs the regular exonerate on the new short protein sequences by modifiying the `proteindb.sh` script
 * Note: to start a job on the cluster **QSub**: qsub is used for both single and multiple node jobs:
`qsub scriptname.sh`

4. New location of the 150aa (amino acid) script: `/archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/createfasta2.py`

5. Comments and notes from Jill on creating the new exonerate script on the new short proteome files made by Robin:
 ```
  #!/bin/bash
  #$ -N exonerate
  #$ -q highmem.q
  #$ -S /bin/bash
  #$ -pe smp 1
  # Specify the output file
  #$ -o exonerate_$JOB_ID.out
  # Specify the error file
  #$ -e exonerate_$JOB_ID.err
  ```

  * -N is just what you call the job name so you can keep track
  *  -q is the queue to run in - exonerate holds everything in memory so you typically want to use our one high   memory node for this which is labeled here
exonerate is not multi=threaded by default so we just ask for one CPU with this:
  *  -pe smp 1
  you can ask for up to 16 in the highmem.q, otherwise if you don't specify a queue, it is usually 8
  * -o and -e is your file names for output and error messages
the other parts are pretty much statis

6. **qhost**: an overview of the server and what is happening there right now on the cluster server.
  * NCPU is the possible CPU on each of the nodes, Load is what is happening on them; you will see that compute-2-4 is our high memory node that we will use, it has 64 possible CPU and a total of 504 GB of memory available and 120 G are currently in use so when you are requesting CPU with smp, good to take a quick look here to see what is happening ![alt tag](https://cloud.githubusercontent.com/assets/6685750/10641466/5725d116-77e7-11e5-9a05-9c2e1179d972.jpeg)
  
7. **qstat** will give you an idea of where things are, you want to see r. it will usually be qw for a bit...but if it hangs for a long time, either resources are slim (check qhost) or soemthing went wrong the latter is more likely as the server is not tooo busy usually

8. I can use the method I currently use with creating scripts on Atom and them `scp` command to transfer files from my local computer to the bbc server but I could also try out *nano* on the command line which is apparently easier than vim


## October 23rd 2015   
11am @UCONN

1. Gave presentation to lab on our progress and there was alot of good feedback from Jill on the roadblocks we were encountering.     
2. Created a [BLAT](https://genome.ucsc.edu/goldenpath/help/blatSpec.html) submission script in addition to downloading three additional sequence scripts and modifing them with the createfasta2.py script to remove 150aa
3. New things learned for Command Line: 
  * `wget`: is a free utility for non-interactive download of files from the web. 
  * `unzip`: unzip file.zip -d destination_folder
  * `python script.sh`: this will run python scripts
  * `ls *.fileType`: For big directories you can narrow down the listing with specifying a filetype (.tfa, .sh, etc...)
  * `cat`: Move and aggreagate new files with -> cat [options] [file_names] > newfile.txt https://en.wikipedia.org/wiki/Cat_(Unix)
  * 
3. Need to check on script on Monday, but the status was still qw which means that the script has an error and did not run
4. Going to Campus on 10/28 to get help from Robin on the script


## October 28th 2015
9:45am @ UCONN   

1. BLAT Script was fixed by Robin, as I had the database and the query position swapped and the generic output.psl still in the script. The current script is in the repo as `blatjd.sh`  
2. scirpt matrix (blat format: blat database query [-ooc=11.ooc] output.psl)   

| database | query | parameters | outputfile |
|----------|-------|------------|------------|
|/archive/PineRefSeq/douglasfir/psme800bins/shortPsme800_v1.0.fasta$SGE_TASK_ID.fa | /archive/PineRefSeq/douglasfir/proteinDB/exonerate/query/newshort.tfa | -q=prot -t=dnax -maxIntron=800000 -fastMap -minScore=70 -minIdentity=60 | newshort$SGE_TASK_ID.psl |

3. Moving on to another Project!

