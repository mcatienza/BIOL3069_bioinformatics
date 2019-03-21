#!/usr/bin/env bash
#bash script for bedtools

#total counts of each gene region in chromosome 21

echo "###################################"

echo "TOTAL NUMBER OF:"

echo

echo "coding exons:"
uniq chr21_g.bed | wc -l
echo "5' UTR:"
uniq chr21_5utr.bed | wc -l
echo "3' UTR:"
uniq chr21_3utr.bed | wc -l

echo

#intersect whole chromosome repeats (+LINEs, SINEs, LTRs, DNA transposons and Satellite
#types) over genes (coding exons, 5' + 3' UTRs) outputting the count

echo "###################################"

echo "CHR21 REPEATS COUNT"
echo "coding exons:"
bedtools intersect -a chr21_r.bed -b chr21_g.bed | uniq | wc -l
echo "5' UTR:"
bedtools intersect -a chr21_r.bed -b chr21_5utr.bed | uniq | wc -l
echo "3' UTR:"
bedtools intersect -a chr21_r.bed -b chr21_3utr.bed | uniq | wc -l

echo "##################"

echo "LINEs COUNT"
echo "coding exons:"
bedtools intersect -a chr21_LINE.bed -b chr21_g.bed | uniq | wc -l
echo "5' UTR:"
bedtools intersect -a chr21_LINE.bed -b chr21_5utr.bed | uniq | wc -l
echo "3' UTR:"
bedtools intersect -a chr21_LINE.bed -b chr21_3utr.bed | uniq | wc -l

echo "##################"

echo "SINEs COUNT"
echo "coding exons:"
bedtools intersect -a chr21_SINE.bed -b chr21_g.bed | uniq | wc -l
echo "5' UTR:"
bedtools intersect -a chr21_SINE.bed -b chr21_5utr.bed | uniq | wc -l
echo "3' UTR:"
bedtools intersect -a chr21_SINE.bed -b chr21_3utr.bed | uniq | wc -l

echo "##################"

echo "LTRs COUNT"
echo "coding exons:"
bedtools intersect -a chr21_LTR.bed -b chr21_g.bed | uniq | wc -l
echo "5' UTR:"
bedtools intersect -a chr21_LTR.bed -b chr21_5utr.bed | uniq | wc -l
echo "3' UTR:"
bedtools intersect -a chr21_LTR.bed -b chr21_3utr.bed | uniq | wc -l

echo "##################"

echo "DNA TRANSPOSONS COUNT"
echo "coding exons:"
bedtools intersect -a chr21_DNA.bed -b chr21_g.bed | uniq | wc -l
echo "5' UTR:"
bedtools intersect -a chr21_DNA.bed -b chr21_5utr.bed | uniq | wc -l
echo "3' UTR:"
bedtools intersect -a chr21_DNA.bed -b chr21_3utr.bed | uniq | wc -l

echo "##################"

echo "SATELLITE DNA COUNT"
echo "coding exons:"
bedtools intersect -a chr21_SAT.bed -b chr21_g.bed | uniq | wc -l
echo "5' UTR:"
bedtools intersect -a chr21_SAT.bed -b chr21_5utr.bed | uniq | wc -l
echo "3' UTR:"
bedtools intersect -a chr21_SAT.bed -b chr21_3utr.bed | uniq | wc -l


#intersect specific subclass families of each repetitive element subclass (except
#satellite DNA)

echo "###################################"

echo "L1 (LINE) COUNT"
echo "coding exons:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_g.bed | uniq | wc -l
echo "5' UTR:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_5utr.bed | uniq | wc -l
echo "3' UTR:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_3utr.bed | uniq | wc -l

echo "##################"

echo "ALU (SINE) COUNT"
echo "coding exons:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_g.bed | uniq | wc -l
echo "5' UTR:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_5utr.bed | uniq | wc -l
echo "3' UTR:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_3utr.bed | uniq | wc -l

echo "##################"

echo "ERVK (LTR) COUNT"
echo "coding exons:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_g.bed | uniq | wc -l
echo "5' UTR:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_5utr.bed | uniq | wc -l
echo "3' UTR:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_3utr.bed | uniq | wc -l

echo "##################"

echo "TCMAR (DNA TRANSPOSON) COUNT"
echo "coding exons:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_g.bed | uniq | wc -l
echo "5' UTR:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_5utr.bed | uniq | wc -l
echo "3' UTR:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_3utr.bed | uniq | wc -l

echo "###################################"
