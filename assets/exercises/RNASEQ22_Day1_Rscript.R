# --------------------------------
# Loading R packages

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("NOISeq")
BiocManager::install("Repitools")
BiocManager::install("Rsamtools")
BiocManager::install("Rsubread")
BiocManager::install("rtracklayer")

library(Rsubread)

# Run alignment within R with align function from Rsubread.
# Hint: need to index the reference file with buildindex function

buildindex(basename="chrX_data/genome/chrX_index", reference="chrX_data/genome/chrX.fa")

ERR188044_align.stats <- align(index="chrX_data/genome/chrX_index", 
                    readfile1="chrX_data/samples/ERR188044_chrX_1.fastq.gz",
                    readfile2="chrX_data/samples/ERR188044_chrX_2.fastq.gz", 
                    output_file="ERR188044_alignResultsPE.BAM",phredOffset=64)


# Count the reads with featureCount from Rsubread

ERR188044_counts <- featureCounts("ERR188044_alignResultsPE.BAM", 
                                  annot.ext = "chrX_data/genes/chrX.gtf", 
                                  isGTFAnnotationFile = T, 
                                  isPairedEnd = T, 
                                  requireBothEndsMapped = T)

head(ERR188044_counts$counts)
head(ERR188044_counts$annotation)
dim(ERR188044_counts$counts)
dim(ERR188044_counts$annotation)

hist(ERR188044_counts$counts, breaks = 100)

# Index and sort the bam file
# Use the asBam function from Rsamtools

library(Rsamtools)

asBam("ERR188044_alignResultsPE.BAM", "ERR188044_alignResultsPE_sorted")
