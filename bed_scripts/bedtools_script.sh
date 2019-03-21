#!/usr/bin/env bash

##Bash script for the analysis of overlapping regions between repetitive elements and
#functional regions of the human genome (GRCh37/hg19)
#note: a pre-masked hg19 genome ran with RepeatMasker tool was downloaded from a
#publicly available site (repeatmasker.org). This file is masked with repetitive
#elements and shows the rmsk table schema, named as "hg19.fa.out.gz" and saved onto
#the directory "bed_files".

#1. unzipping of the file "hg19.fa.out.gz" downloaded from RepeatMasker and rename
gunzip -k hg19.fa.out.gz
mv hg19.fa.out hg19_genome_repeats

#2. creating a .bed file of chr21 repeats
awk '{print $5,$6,$7,$8,$9,$10,$11}' hg19_genome_repeats | grep "chr21" | tr ' ' '\t' > chr21_r.bed
#creates a tab-delimited file

#3. extracting different types of repeats (LINEs, SINEs, LTRs, DNA, Satellite)
grep -e "LINE" chr21_r.bed > chr21_LINE.bed #LINEs
grep -e "SINE" chr21_r.bed > chr21_SINE.bed #SINEs
grep -e "LTR" chr21_r.bed > chr21_LTR.bed #LTRs
grep -e "DNA" chr21_r.bed > chr21_DNA.bed #DNA transposons
grep -e "Satellite" chr21_r.bed > chr21_SAT.bed #Satellite DNA

#4. extract main subclass families for each of the repeat element subclasses (except
#Satellite DNA)
grep -e "L1" chr21_LINE.bed > chr21_LINE_L1.bed #LINEs
grep -e "Alu" chr21_SINE.bed > chr21_SINE_ALU.bed #SINEs
grep -e "ERVK" chr21_LTR.bed > chr21_LTR_ERVK.bed #LTRs
grep -e "TcMar" chr21_DNA.bed > chr21_DNA_TM.bed #DNA transposons

#5. download chr21 .bed files for coding exons, 5' UTR and 3' UTR and move to
#"bed_files" directory
mv ~/Downloads/chr21_g.bed ~/Desktop/bed_files #chr21_g = coding exons
mv ~/Downloads/chr21_5utr.bed ~/Desktop/bed_files #chr21_5utr = 5' UTR
mv ~/Downloads/chr21_3utr.bed ~/Desktop/bed_files #chr21_3utr = 3' UTR

#7. download .bed file for the regulatory regions of chr21, move to "bed_files"
#directory
mv ~/Downloads/chr21_reg.bed ~/Desktop/bed_files

#8. extract all types of regulatory regions (TSS, PF, E, WE, CTCF, T, R) into
#separate .bed files
grep -e "TSS" chr21_"$1"reg.bed > chr21_"$1"reg_tss.bed #TSS
grep -e "PF" chr21_"$1"reg.bed > chr21_"$1"reg_pf.bed #PF
grep -e "E" chr21_"$1"reg.bed > chr21_"$1"reg_e.bed #E
grep -e "WE" chr21_"$1"reg.bed > chr21_"$1"reg_we.bed #WE
grep -e "CTCF" chr21_"$1"reg.bed > chr21_"$1"reg_ctcf.bed #CTCF
grep -e "T" chr21_"$1"reg.bed > chr21_"$1"reg_t.bed #T
grep -e "R" chr21_"$1"reg.bed > chr21_"$1"reg_r.bed #R

#note: "$1" = user input to indicate different type of reg .bed file

#6. overlap all the repeat .bed files (chr21 repeats, LINEs, SINEs etc) against the
#gene and regulatory regions (coding exons, 5' UTR, 3' UTR, TSS, PF etc) using bedtools
#and record the count
#note: for this purpose, two scripts were made to reduce time and to output results easily
chmod +x bedtools_count_genes.sh #script for gene regions
./bedtools_count_genes.sh

chmod +x bedtools_count_reg.sh #script for regulatory regions
./bedtools_count_reg

#7. run scripts that allow the use of bedtools to find the size of overlapping repetitive
#elements against gene and regulatory regions of chromosome 21
chmod +x bedtools_rsize_genes.sh
./bedtools_rsize_genes.sh

chmod +x bedtools_rsize_reg.sh
./bedtools_rsize_reg.sh

#8. find the total sizes for each gene and regulatory feature of the corresponding
#.bed files using a script
chmod +x grf_sizes_script.sh
./grf_sizes_script.sh

#9. find the lengths (bp) of each individual overlapping repetitive element in
#regulatory regions
chmod +x lengths_reg_overlap.sh
./lengths_reg_overlap.sh
