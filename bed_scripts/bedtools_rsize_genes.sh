#!/usr/bin/env bash

#bash script for UNIX and bedtools command line for finding the sizes of the overlapping
#repetitive elements against gene regions (coding exons, 5' UTR, 3' UTR)

#sizes of all the repetitive elements in total
echo "##########################"
echo "TOTAL SIZE OF(bp):"
echo
echo "all repeats in chr21:"
uniq chr21_r.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "LINEs:"
uniq chr21_LINE.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "SINEs:"
uniq chr21_SINE.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "LTRs:"
uniq chr21_LTR.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "DNA TRANSPOSONS:"
uniq chr21_DNA.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "SATELLITE DNA:"
uniq chr21_SAT.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo
echo "L1:"
uniq chr21_LINE_L1.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "ALU:"
uniq chr21_SINE_ALU.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "ERVK:"
uniq chr21_LTR_ERVK.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "TCMAR:"
uniq chr21_DNA_TM.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo
echo "##########################"

#sizes of overlapping regions of repeat element subclasses against gene regions
echo "CHR21 OVERLAPPING REPEATS SIZES"
echo "coding exons:"
bedtools intersect -a chr21_r.bed -b chr21_g.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "5' UTR:"
bedtools intersect -a chr21_r.bed -b chr21_5utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "3' UTR:"
bedtools intersect -a chr21_r.bed -b chr21_3utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "LINEs SIZE"
echo "coding exons:"
bedtools intersect -a chr21_LINE.bed -b chr21_g.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "5' UTR:"
bedtools intersect -a chr21_LINE.bed -b chr21_5utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "3' UTR:"
bedtools intersect -a chr21_LINE.bed -b chr21_3utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "SINEs SIZE"
echo "coding exons:"
bedtools intersect -a chr21_SINE.bed -b chr21_g.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "5' UTR:"
bedtools intersect -a chr21_SINE.bed -b chr21_5utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "3' UTR:"
bedtools intersect -a chr21_SINE.bed -b chr21_3utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "LTRs SIZE"
echo "coding exons:"
bedtools intersect -a chr21_LTR.bed -b chr21_g.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "5' UTR:"
bedtools intersect -a chr21_LTR.bed -b chr21_5utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "3' UTR:"
bedtools intersect -a chr21_LTR.bed -b chr21_3utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "DNA TRANSPOSONS SIZE"
echo "coding exons:"
bedtools intersect -a chr21_DNA.bed -b chr21_g.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "5' UTR:"
bedtools intersect -a chr21_DNA.bed -b chr21_5utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "3' UTR:"
bedtools intersect -a chr21_DNA.bed -b chr21_3utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "SATELLITE DNA SIZE"
echo "coding exons:"
bedtools intersect -a chr21_SAT.bed -b chr21_g.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "5' UTR:"
bedtools intersect -a chr21_SAT.bed -b chr21_5utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "3' UTR:"
bedtools intersect -a chr21_SAT.bed -b chr21_3utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "OTHER (inc. SAT)"
echo "coding exons:"
bedtools intersect -a chr21_r_no.bed -b chr21_g.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "5' UTR:"
bedtools intersect -a chr21_r_no.bed -b chr21_5utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "3' UTR:"
bedtools intersect -a chr21_r_no.bed -b chr21_3utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'


#intersect specific subclass families of each repetitive element subclass (except
#satellite DNA)

echo "###################################"

echo "L1 (LINE) SIZE"
echo "coding exons:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_g.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "5' UTR:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_5utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "3' UTR:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_3utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "ALU (SINE) SIZE"
echo "coding exons:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_g.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "5' UTR:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_5utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "3' UTR:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_3utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "ERVK (LTR) SIZE"
echo "coding exons:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_g.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "5' UTR:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_5utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "3' UTR:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_3utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "TCMAR (DNA TRANSPOSON) SIZE"
echo "coding exons:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_g.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "5' UTR:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_5utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "3' UTR:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_3utr.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "###################################"
