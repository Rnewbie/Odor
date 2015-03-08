ReceptorDNA <- read.csv("~/Desktop/PythonKid/Odor/ReceptorDNA.csv", header = TRUE)
#data <- ReceptorDNA[-1]
man <- lapply(ReceptorDNA$Nucleotides, as.character)
DNA <- t(sapply(man, s2c))
Protein <- t(sapply(DNA, seqinr::translate))
write.fasta(sequence=Protein, names=ReceptorDNA$Gene, nbchar=80, file.out = "OderReceptor.fasta")


