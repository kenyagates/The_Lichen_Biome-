#Call the packages
library(msa)
library(Biostrings)
library(phangorn)
library(ape)

# Read the fasta file into R. 
seqs <- readDNAStringSet('LichenLab06.fasta')

#Align the DNA sequences using the Muscle algorithm
alignment <- msa(seqs,method='Muscle')
print(alignment, show = "alignment")

# Export the alignment to a fasta file
DNAStr <- as(alignment, "DNAStringSet")
writeXStringSet(DNAStr, file="LichLab06Allign.fasta")

