---
title: RNA-seq course, CIG - January February 2022
summary: course website
author: Isabelle Dupanloup
date: 2022-01-06
some_url: https://idupanloup.github.io/RNA-seq_course_0122/
---

# Requirements

- Hardware (64-bit computer with 4 GB of RAM (8 GB preferred))

- FASTQC (https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
- QualiMap (http://qualimap.bioinfo.cipf.es/)

- R (https://www.r-project.org, version > 4.0)
- latest version of R Studio

---------------------
Installation of R packages for Practical 1

- if (!requireNamespace("BiocManager", quietly = TRUE))
	install.packages("BiocManager")

- BiocManager::install("NOISeq")
- BiocManager::install("Repitools")
- BiocManager::install("Rsamtools")
- BiocManager::install("Rsubread")
- BiocManager::install("rtracklayer")

---------------------
Installation of R packages for Practical 2

- install.packages("devtools")
- install.packages("ggplot2")
- install.packages("gridExtra")
- install.packages("RColorBrewer")
- install.packages("reshape2")

- if (!requireNamespace("BiocManager", quietly = TRUE))
	install.packages("BiocManager")

- BiocManager::install("DESeq2")
- BiocManager::install("edgeR")
- BiocManager::install("mixOmics")

---------------------
Installation of R packages for Practical 3

- install.packages("pheatmap")

- if (!requireNamespace("BiocManager", quietly = TRUE))
	install.packages("BiocManager")

- BiocManager::install("clusterProfiler")
- BiocManager::install("org.Mm.eg.db")
