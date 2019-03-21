#!/usr/bin/env bash
#bash script for finding the length(bp) of each individual overlapping reptitive
#element in regulatory regions (GM12878 cell line)

echo "##########################"
echo "Creating a list of lengths for GM12878 regulatory region overlaps with REs"

bedtools intersect -a chr21_"$1".bed -b chr21_GMreg_tss.bed | awk -F'\t' '{print $3-$2}' > chr21_"$1"_TSS_length.txt
[ -f chr21_"$1"_TSS_length.txt ] && echo "TSS - file created" || echo "TSS file not created"

bedtools intersect -a chr21_"$1".bed -b chr21_GMreg_pf.bed | awk -F'\t' '{print $3-$2}' > chr21_"$1"_PF_length.txt
[ -f chr21_"$1"_TSS_length.txt ] && echo "PF - file created" || echo "TSS file not created"

bedtools intersect -a chr21_"$1".bed -b chr21_GMreg_e.bed | awk -F'\t' '{print $3-$2}' > chr21_"$1"_E_length.txt
[ -f chr21_"$1"_TSS_length.txt ] && echo "E - file created" || echo "TSS file not created"

bedtools intersect -a chr21_"$1".bed -b chr21_GMreg_we.bed | awk -F'\t' '{print $3-$2}' > chr21_"$1"_WE_length.txt
[ -f chr21_"$1"_TSS_length.txt ] && echo "WE - file created" || echo "TSS file not created"

bedtools intersect -a chr21_"$1".bed -b chr21_GMreg_ctcf.bed | awk -F'\t' '{print $3-$2}' > chr21_"$1"_CTCF_length.txt
[ -f chr21_"$1"_TSS_length.txt ] && echo "CTCF - file created" || echo "TSS file not created"

bedtools intersect -a chr21_"$1".bed -b chr21_GMreg_t.bed | awk -F'\t' '{print $3-$2}' > chr21_"$1"_T_length.txt
[ -f chr21_"$1"_TSS_length.txt ] && echo "T - file created" || echo "TSS file not created"

bedtools intersect -a chr21_"$1".bed -b chr21_GMreg_r.bed | awk -F'\t' '{print $3-$2}' > chr21_"$1"_R__length.txt
[ -f chr21_"$1"_TSS_length.txt ] && echo "R - file created" || echo "TSS file not created"

echo "##########################"
