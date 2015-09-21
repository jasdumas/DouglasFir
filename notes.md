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


