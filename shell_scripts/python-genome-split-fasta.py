;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

# example done by Robin 11/20/2015 @ 1PM - UCONN
python splitfasta2.py --fasta HindsBlackWalnut.500.scaffolds.fasta --path /archive/Walnut_genomes --pieces 20 

# repeat the same process for the other genomes
python splitfasta2.py --fasta ChineseWalnut.500.scaffolds.fasta --path /archive/Walnut_genomes --pieces 20 

python splitfasta2.py --fasta ChineseWignut.500.scaffolds.fasta --path /archive/Walnut_genomes --pieces 20 

python splitfasta2.py --fasta TexasWalnut.500.scaffolds.fasta --path /archive/Walnut_genomes --pieces 20 

