'''
filtering the target genome to reduce the search space to those scaffolds
over 400 or 500bp in length. 

'''
# Requires numpy, matplotlib and biopython libraries for execution
# Syntax:
# python createfasta.py --query [queryfile] --output [outputfile]

from Bio import SeqIO
import argparse

parser = argparse.ArgumentParser(
     prog='createfasta',
     usage='''python createfasta.py --query [queryfile] --output [outputfile]''',
     description='''This program renames DNA sequences (fasta ID) to numeric values in ascending order ''',
     epilog='''It requires numpy, matplotlib and biopython libraries for execution''')
parser.add_argument('--query', type=str, help='The query fasta file', required=True)
parser.add_argument('--output', type=str, help='The output file (optional)', required=False)

args = parser.parse_args()

filename1=args.query # Query scaffold
filename2=args.output # Output scaffold

if filename2==None:
   filename2="Output.fasta"
   print filename2

with open(filename2,'w') as ijk:
    i=1
    for seq_records1 in SeqIO.parse(filename1, "fasta"):
      if len(str(seq_records1.seq)) >= 500:
         ijk.write("%s%s\n%s\n" % (">",seq_records1.id, seq_records1.seq)) # Making the fasta file
         i+=1

ijk.close()
