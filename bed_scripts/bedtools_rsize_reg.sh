#!/usr/bin/env bash

#bash script for UNIX and bedtools command line for finding the sizes of the overlapping
#repetitive elements against regulatory regions (TSS, PF, E, WE, CTCF, T, R)

TYPE=$1

#sizes of all the repetitive elements in total
echo "##########################"
echo "CHR21 REPEATS SIZE"
echo "TSS:"
bedtools intersect -a chr21_r.bed -b chr21_"$TYPE"reg_tss.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "PF:"
bedtools intersect -a chr21_r.bed -b chr21_"$TYPE"reg_pf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "E:"
bedtools intersect -a chr21_r.bed -b chr21_"$TYPE"reg_e.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "WE:"
bedtools intersect -a chr21_r.bed -b chr21_"$TYPE"reg_we.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "CTCF:"
bedtools intersect -a chr21_r.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "T:"
bedtools intersect -a chr21_r.bed -b chr21_"$TYPE"reg_t.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "R:"
bedtools intersect -a chr21_r.bed -b chr21_"$TYPE"reg_r.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "LINEs SIZE"
echo "TSS:"
bedtools intersect -a chr21_LINE.bed -b chr21_"$TYPE"reg_tss.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "PF:"
bedtools intersect -a chr21_LINE.bed -b chr21_"$TYPE"reg_pf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "E:"
bedtools intersect -a chr21_LINE.bed -b chr21_"$TYPE"reg_e.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "WE:"
bedtools intersect -a chr21_LINE.bed -b chr21_"$TYPE"reg_we.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "CTCF:"
bedtools intersect -a chr21_LINE.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "T:"
bedtools intersect -a chr21_LINE.bed -b chr21_"$TYPE"reg_t.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "R:"
bedtools intersect -a chr21_LINE.bed -b chr21_"$TYPE"reg_r.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "SINEs SIZE"
echo "coding exons:"
echo "TSS:"
bedtools intersect -a chr21_SINE.bed -b chr21_"$TYPE"reg_tss.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "PF:"
bedtools intersect -a chr21_SINE.bed -b chr21_"$TYPE"reg_pf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "E:"
bedtools intersect -a chr21_SINE.bed -b chr21_"$TYPE"reg_e.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "WE:"
bedtools intersect -a chr21_SINE.bed -b chr21_"$TYPE"reg_we.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "CTCF:"
bedtools intersect -a chr21_SINE.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "T:"
bedtools intersect -a chr21_SINE.bed -b chr21_"$TYPE"reg_t.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "R:"
bedtools intersect -a chr21_SINE.bed -b chr21_"$TYPE"reg_r.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "LTRs SIZE"
echo "TSS:"
bedtools intersect -a chr21_LTR.bed -b chr21_"$TYPE"reg_tss.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "PF:"
bedtools intersect -a chr21_LTR.bed -b chr21_"$TYPE"reg_pf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "E:"
bedtools intersect -a chr21_LTR.bed -b chr21_"$TYPE"reg_e.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "WE:"
bedtools intersect -a chr21_LTR.bed -b chr21_"$TYPE"reg_we.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "CTCF:"
bedtools intersect -a chr21_LTR.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "T:"
bedtools intersect -a chr21_LTR.bed -b chr21_"$TYPE"reg_t.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "R:"
bedtools intersect -a chr21_LTR.bed -b chr21_"$TYPE"reg_r.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "DNA TRANSPOSONS SIZE"
echo "TSS:"
bedtools intersect -a chr21_DNA.bed -b chr21_"$TYPE"reg_tss.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "PF:"
bedtools intersect -a chr21_DNA.bed -b chr21_"$TYPE"reg_pf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "E:"
bedtools intersect -a chr21_DNA.bed -b chr21_"$TYPE"reg_e.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "WE:"
bedtools intersect -a chr21_DNA.bed -b chr21_"$TYPE"reg_we.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "CTCF:"
bedtools intersect -a chr21_DNA.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "T:"
bedtools intersect -a chr21_DNA.bed -b chr21_"$TYPE"reg_t.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "R:"
bedtools intersect -a chr21_DNA.bed -b chr21_"$TYPE"reg_r.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "SATELLITE DNA SIZE"
echo "TSS:"
bedtools intersect -a chr21_SAT.bed -b chr21_"$TYPE"reg_tss.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "PF:"
bedtools intersect -a chr21_SAT.bed -b chr21_"$TYPE"reg_pf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "E:"
bedtools intersect -a chr21_SAT.bed -b chr21_"$TYPE"reg_e.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "WE:"
bedtools intersect -a chr21_SAT.bed -b chr21_"$TYPE"reg_we.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "CTCF:"
bedtools intersect -a chr21_SAT.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "T:"
bedtools intersect -a chr21_SAT.bed -b chr21_"$TYPE"reg_t.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "R:"
bedtools intersect -a chr21_SAT.bed -b chr21_"$TYPE"reg_r.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "OTHER (inc. SAT)"
echo "TSS:"
bedtools intersect -a chr21_r_no.bed -b chr21_"$TYPE"reg_tss.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "PF:"
bedtools intersect -a chr21_r_no.bed -b chr21_"$TYPE"reg_pf.bed | uniq  | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "E:"
bedtools intersect -a chr21_r_no.bed -b chr21_"$TYPE"reg_e.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "WE:"
bedtools intersect -a chr21_r_no.bed -b chr21_"$TYPE"reg_we.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "CTCF:"
bedtools intersect -a chr21_r_no.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "T:"
bedtools intersect -a chr21_r_no.bed -b chr21_"$TYPE"reg_t.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "R:"
bedtools intersect -a chr21_r_no.bed -b chr21_"$TYPE"reg_r.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'


#intersect specific subclass families of each repetitive element subclass (except
#satellite DNA) to the regulatory regions and find out the overall size

echo "###################################"

echo "L1 (LINE) SIZE"
echo "TSS:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_"$TYPE"reg_tss.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "PF:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_"$TYPE"reg_pf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "E:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_"$TYPE"reg_e.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "WE:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_"$TYPE"reg_we.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "CTCF:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "T:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_"$TYPE"reg_t.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "R:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_"$TYPE"reg_r.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "ALU (SINE) SIZE"
echo "TSS:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_"$TYPE"reg_tss.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "PF:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_"$TYPE"reg_pf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "E:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_"$TYPE"reg_e.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "WE:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_"$TYPE"reg_we.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "CTCF:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "T:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_"$TYPE"reg_t.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "R:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_"$TYPE"reg_r.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "ERVK (LTR) SIZE"
echo "TSS:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_"$TYPE"reg_tss.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "PF:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_"$TYPE"reg_pf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "E:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_"$TYPE"reg_e.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "WE:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_"$TYPE"reg_we.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "CTCF:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "T:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_"$TYPE"reg_t.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "R:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_"$TYPE"reg_r.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "##################"

echo "TCMAR (DNA TRANSPOSON) SIZE"
echo "TSS:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_"$TYPE"reg_tss.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "PF:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_"$TYPE"reg_pf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "E:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_"$TYPE"reg_e.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "WE:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_"$TYPE"reg_we.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "CTCF:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "T:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_"$TYPE"reg_t.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'
echo "R:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_"$TYPE"reg_r.bed | uniq | awk -F'\t' 'BEGIN{SUM=0}{SUM+=$3-$2} END{print SUM}'

echo "###################################"
