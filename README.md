# DouglasFir
My UCONN virtual Lab notebook for the annotation of genes within the Douglas-fir genome 

## Goal
The annotation of genes within the Douglas-fir genome by leveraging the transcriptome resources we have generated for this species and making use of a package called MAKER-P. 

## Process
One of the first steps in the process is to train a portion of the pipeline that calls the genes with good alignments against the genome.


## Resources from Jill (PI)
We have transcriptome sequence (and successful de novo assemblies) of genes for Douglas-fir.  This resource can be found on the FTP site here:
http://dendrome.ucdavis.edu/ftp/Genome_Data/genome/pinerefseq/Psme/v1.0/transcripts/

The README describes the three objects available there (all transcripts, just those mapped to the genome assembly, and a gff3 file which contains coordinates on how those genes aligned).

The actual genome assembly is the FASTA available at this level.

Carson Holt who is the developer of MAKER-P will run the pipeline once we have all the input objects in place.
MAKER-P: http://www.yandell-lab.org/software/maker-p.html

To get some background on the complexities of these genomes - I suggest a read through of the published loblolly pine genome (the first of the three conifers sequenced)

http://www.genomebiology.com/2014/15/3/R59

http://www.genetics.org/content/196/3/875.long

The software development aspect of this is an evaluation of the accuracy of gene prediction and some potential solutions to improve upon this via more accurate machine learning techniques.  The current implementation of AUGUSTUS within MAKER-P is not as good as we would hope.  The caveat here though is that gene prediction is a very difficult problem in bioinformatics so specific shortcomings will need to be identified so they can be improved.  At the same time, we will be annotating one of the largest genomes sequenced on the planet.

# Walnut Genome

### Providing Gene Annotation!
