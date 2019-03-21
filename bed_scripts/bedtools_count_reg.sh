#!/usr/bin/env bash
#bash script for bedtools, to find overlapping regions between regulatory sequences
#and repetitive elements

TYPE=$1

#total counts of each regulatory region in chromosome 21

echo "###################################"
echo "$TYPE"
echo "TOTAL NUMBER OF:"

echo

echo "regulatory:"
uniq chr21_"$TYPE"reg.bed | wc -l
echo "TSS:"
uniq chr21_"$TYPE"reg_tss.bed | wc -l
echo "PF:"
uniq chr21_"$TYPE"reg_pf.bed | wc -l
echo "E:"
uniq chr21_"$TYPE"reg_e.bed | wc -l
echo "WE:"
uniq chr21_"$TYPE"reg_we.bed | wc -l
echo "CTCF:"
uniq chr21_"$TYPE"reg_ctcf.bed | wc -l
echo "T:"
uniq chr21_"$TYPE"reg_t.bed | wc -l
echo "R:"
uniq chr21_"$TYPE"reg_r.bed | wc -l

echo

#intersect whole chromosome repeats (+LINEs, SINEs, LTRs, DNA transposons and Satellite
#types) over regulatory regions (TSS, PF, E, WE, CTCF, T, R) outputting the count

echo "###################################"

echo "CHR21 REPEATS COUNT"
echo "TSS:"
bedtools intersect -a chr21_r.bed -b chr21_"$TYPE"reg_tss.bed | uniq | wc -l
echo "PF:"
bedtools intersect -a chr21_r.bed -b chr21_"$TYPE"reg_pf.bed | uniq | wc -l
echo "E:"
bedtools intersect -a chr21_r.bed -b chr21_"$TYPE"reg_e.bed | uniq | wc -l
echo "WE:"
bedtools intersect -a chr21_r.bed -b chr21_"$TYPE"reg_we.bed | uniq | wc -l
echo "CTCF:"
bedtools intersect -a chr21_r.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | wc -l
echo "T:"
bedtools intersect -a chr21_r.bed -b chr21_"$TYPE"reg_t.bed | uniq | wc -l
echo "R:"
bedtools intersect -a chr21_r.bed -b chr21_"$TYPE"reg_r.bed | uniq | wc -l

echo "##################"

echo "LINEs COUNT"
echo "TSS:"
bedtools intersect -a chr21_LINE.bed -b chr21_"$TYPE"reg_tss.bed | uniq | wc -l
echo "PF:"
bedtools intersect -a chr21_LINE.bed -b chr21_"$TYPE"reg_pf.bed | uniq | wc -l
echo "E:"
bedtools intersect -a chr21_LINE.bed -b chr21_"$TYPE"reg_e.bed | uniq | wc -l
echo "WE:"
bedtools intersect -a chr21_LINE.bed -b chr21_"$TYPE"reg_we.bed | uniq | wc -l
echo "CTCF:"
bedtools intersect -a chr21_LINE.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | wc -l
echo "T:"
bedtools intersect -a chr21_LINE.bed -b chr21_"$TYPE"reg_t.bed | uniq | wc -l
echo "R:"
bedtools intersect -a chr21_LINE.bed -b chr21_"$TYPE"reg_r.bed | uniq | wc -l

echo "##################"

echo "SINEs COUNT"
echo "coding exons:"
echo "TSS:"
bedtools intersect -a chr21_SINE.bed -b chr21_"$TYPE"reg_tss.bed | uniq | wc -l
echo "PF:"
bedtools intersect -a chr21_SINE.bed -b chr21_"$TYPE"reg_pf.bed | uniq | wc -l
echo "E:"
bedtools intersect -a chr21_SINE.bed -b chr21_"$TYPE"reg_e.bed | uniq | wc -l
echo "WE:"
bedtools intersect -a chr21_SINE.bed -b chr21_"$TYPE"reg_we.bed | uniq | wc -l
echo "CTCF:"
bedtools intersect -a chr21_SINE.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | wc -l
echo "T:"
bedtools intersect -a chr21_SINE.bed -b chr21_"$TYPE"reg_t.bed | uniq | wc -l
echo "R:"
bedtools intersect -a chr21_SINE.bed -b chr21_"$TYPE"reg_r.bed | uniq | wc -l

echo "##################"

echo "LTRs COUNT"
echo "TSS:"
bedtools intersect -a chr21_LTR.bed -b chr21_"$TYPE"reg_tss.bed | uniq | wc -l
echo "PF:"
bedtools intersect -a chr21_LTR.bed -b chr21_"$TYPE"reg_pf.bed | uniq | wc -l
echo "E:"
bedtools intersect -a chr21_LTR.bed -b chr21_"$TYPE"reg_e.bed | uniq | wc -l
echo "WE:"
bedtools intersect -a chr21_LTR.bed -b chr21_"$TYPE"reg_we.bed | uniq | wc -l
echo "CTCF:"
bedtools intersect -a chr21_LTR.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | wc -l
echo "T:"
bedtools intersect -a chr21_LTR.bed -b chr21_"$TYPE"reg_t.bed | uniq | wc -l
echo "R:"
bedtools intersect -a chr21_LTR.bed -b chr21_"$TYPE"reg_r.bed | uniq | wc -l

echo "##################"

echo "DNA TRANSPOSONS COUNT"
echo "TSS:"
bedtools intersect -a chr21_DNA.bed -b chr21_"$TYPE"reg_tss.bed | uniq | wc -l
echo "PF:"
bedtools intersect -a chr21_DNA.bed -b chr21_"$TYPE"reg_pf.bed | uniq | wc -l
echo "E:"
bedtools intersect -a chr21_DNA.bed -b chr21_"$TYPE"reg_e.bed | uniq | wc -l
echo "WE:"
bedtools intersect -a chr21_DNA.bed -b chr21_"$TYPE"reg_we.bed | uniq | wc -l
echo "CTCF:"
bedtools intersect -a chr21_DNA.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | wc -l
echo "T:"
bedtools intersect -a chr21_DNA.bed -b chr21_"$TYPE"reg_t.bed | uniq | wc -l
echo "R:"
bedtools intersect -a chr21_DNA.bed -b chr21_"$TYPE"reg_r.bed | uniq | wc -l

echo "##################"

echo "SATELLITE DNA COUNT"
echo "TSS:"
bedtools intersect -a chr21_SAT.bed -b chr21_"$TYPE"reg_tss.bed | uniq | wc -l
echo "PF:"
bedtools intersect -a chr21_SAT.bed -b chr21_"$TYPE"reg_pf.bed | uniq | wc -l
echo "E:"
bedtools intersect -a chr21_SAT.bed -b chr21_"$TYPE"reg_e.bed | uniq | wc -l
echo "WE:"
bedtools intersect -a chr21_SAT.bed -b chr21_"$TYPE"reg_we.bed | uniq | wc -l
echo "CTCF:"
bedtools intersect -a chr21_SAT.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | wc -l
echo "T:"
bedtools intersect -a chr21_SAT.bed -b chr21_"$TYPE"reg_t.bed | uniq  | wc -l
echo "R:"
bedtools intersect -a chr21_SAT.bed -b chr21_"$TYPE"reg_r.bed | uniq | wc -l


#intersect specific subclass families of each repetitive element subclass (except
#satellite DNA) to the regulatory regions

echo "###################################"

echo "L1 (LINE) COUNT"
echo "TSS:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_"$TYPE"reg_tss.bed | uniq | wc -l
echo "PF:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_"$TYPE"reg_pf.bed | uniq | wc -l
echo "E:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_"$TYPE"reg_e.bed | uniq | wc -l
echo "WE:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_"$TYPE"reg_we.bed | uniq  | wc -l
echo "CTCF:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | wc -l
echo "T:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_"$TYPE"reg_t.bed | uniq | wc -l
echo "R:"
bedtools intersect -a chr21_LINE_L1.bed -b chr21_"$TYPE"reg_r.bed | uniq | wc -l

echo "##################"

echo "ALU (SINE) COUNT"
echo "TSS:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_"$TYPE"reg_tss.bed | uniq | wc -l
echo "PF:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_"$TYPE"reg_pf.bed | uniq | wc -l
echo "E:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_"$TYPE"reg_e.bed | uniq | wc -l
echo "WE:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_"$TYPE"reg_we.bed | uniq | wc -l
echo "CTCF:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | wc -l
echo "T:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_"$TYPE"reg_t.bed | uniq | wc -l
echo "R:"
bedtools intersect -a chr21_SINE_ALU.bed -b chr21_"$TYPE"reg_r.bed | uniq | wc -l

echo "##################"

echo "ERVK (LTR) COUNT"
echo "TSS:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_"$TYPE"reg_tss.bed | uniq | wc -l
echo "PF:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_"$TYPE"reg_pf.bed | uniq | wc -l
echo "E:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_"$TYPE"reg_e.bed | uniq | wc -l
echo "WE:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_"$TYPE"reg_we.bed | uniq | wc -l
echo "CTCF:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | wc -l
echo "T:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_"$TYPE"reg_t.bed | uniq | wc -l
echo "R:"
bedtools intersect -a chr21_LTR_ERVK.bed -b chr21_"$TYPE"reg_r.bed | uniq | wc -l

echo "##################"

echo "TCMAR (DNA TRANSPOSON) COUNT"
echo "TSS:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_"$TYPE"reg_tss.bed | uniq | wc -l
echo "PF:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_"$TYPE"reg_pf.bed | uniq | wc -l
echo "E:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_"$TYPE"reg_e.bed | uniq | wc -l
echo "WE:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_"$TYPE"reg_we.bed | uniq | wc -l
echo "CTCF:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_"$TYPE"reg_ctcf.bed | uniq | wc -l
echo "T:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_"$TYPE"reg_t.bed | uniq | wc -l
echo "R:"
bedtools intersect -a chr21_DNA_TM.bed -b chr21_"$TYPE"reg_r.bed | uniq | wc -l

echo "###################################"
