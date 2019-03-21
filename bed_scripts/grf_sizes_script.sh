#!/usr/bin/env bash

#bash script for finding the sizes of chr21 gene and regulatory features of each
#related .bed file

TYPE=$1

#sizes of chr21
echo "######################"
echo "TOTAL SIZES OF CHR21 GENE FEATURES:"
echo
echo "coding exons:"
uniq chr21_g.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "5' UTR:"
uniq chr21_5utr.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}' chr21_5utr.bed
echo "3' UTR:"
uniq chr21_3utr.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}' chr21_3utr.bed

echo
echo "######"
echo "TOTAL SIZES OF CHR21 REG FEATURES:"

echo "all regulatory features:"
uniq chr21_"$TYPE"reg.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "TSS:"
uniq chr21_"$TYPE"reg_tss.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "PF:"
uniq chr21_"$TYPE"reg_pf.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "E:"
uniq chr21_"$TYPE"reg_e.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "WE:"
uniq chr21_"$TYPE"reg_we.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "CTCF:"
uniq chr21_"$TYPE"reg_ctcf.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "T:"
uniq chr21_"$TYPE"reg_t.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "R:"
uniq chr21_"$TYPE"reg_r.bed | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo
echo "######################"s
