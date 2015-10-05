import linecache
filename1="amborella.fasta.txt"

fastanames=[]
fastalines=[]
i=1
for row in open(filename1,'r'):
 if row.startswith(">") == True:
     fastanames.append(row[1:])
     fastalines.append(i)
 i+=1    
fastalines.append(i)

with open("output.fasta",'w') as xyz:
   for name in fastanames:
       k=fastanames.index(name)
       entry1=fastalines[k]
       entry2=fastalines[k+1]
       dnaseq=""
       for m in range(entry1+1,entry2):
          dnaseq+=linecache.getline(filename1,m)    
       if len(dnaseq) > 150:
          xyz.write("%s%s%s" %(">",name,dnaseq))
