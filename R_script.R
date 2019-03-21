#R BIOL3069 script for plotting overlap results then used as figures

library(ggplot2)
library(reshape2)


#1. Stacked bar plot showing the percentage of each overlapping repetitive
#element subclass with the total overlap of all repetiive elements
dfre.ov <- read.xlsx("dataframes.xlsx", sheet = "re.ov", rowNames = FALSE) ;
dfre.ov$RE <- factor(dfre.ov$RE, levels = c("LINEs", "SINEs", "LTRs", "DNA transposons", "Other")) ;

jpeg("Rplot_10.jpeg", units = "in", width = 7, height = 5.5, res = 300) ;
ggplot(dfre.ov, aes(x=Region, y=Percentage, fill = RE)) +
  geom_bar(stat = "identity") +
  scale_x_discrete(limits=c("5' UTR", "coding exons", "3' UTR", "TSS", "PF", "E", "WE", "CTCF", "T", "R")) +
  labs(title = "Stacked bar plot of repeat subclass percentage with\ntotal repeat overlap in gene and regulatory features",
       x = "Gene and regulatory feature", y ="Percentage (%)", fill = "Repeat Element") +
  theme(
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
    axis.title = element_text(face = "bold"),
    legend.title = element_text(face = "bold"),
    legend.position = "bottom",
    legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour = "black")
  );
dev.off() ;


#2. Stacked bar plot showing the percentage of repetitive element overlap in
#gene and regulatory regions
dfre.ovtot <- read.xlsx("dataframes.xlsx", sheet = "re.ovtot", rowNames = FALSE) ;
dfre.ovtot$RE <- factor(dfre.ovtot$RE, levels = c("LINEs", "SINEs", "LTRs", "DNA transposons", "Other")) ;

jpeg("Rplot_11.jpeg", units = "in", width = 8, height = 8, res = 300) ;
ggplot(dfre.ovtot, aes(x=Region, y=Percentage, fill = RE)) +
  geom_bar(stat = "identity") +
  scale_x_discrete(limits=c("5' UTR", "coding exons", "3' UTR", "TSS", "PF", "E", "WE", "CTCF", "T", "R")) +
  labs(title = "Stacked bar plot of overlapping repeat subclass\npercentage with total gene (5' UTR, Coding Exons, 3' UTR)\nand regulatory (TSS, PF, E, WE, CTCF, T, R) sizes",
       x = "Gene and regulatory feature", y ="Percentage (%)", fill = "Repeat Element") +
  theme(
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
    axis.title = element_text(face = "bold"),
    legend.title = element_text(face = "bold"),
    legend.position = "bottom",
    legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour = "black")
  ) ;
dev.off() ;


#3. Stacked bar plot showing the percentage of repetitive element overlap in
#different cell line regulatory regions
dfre.regov <- read.xlsx("dataframes.xlsx", sheet = "re.regov", rowNames = FALSE) ;
dfre.regov$RE <- factor(dfre.regov$RE, levels = c("LINEs", "SINEs", "LTRs", "DNA transposons", "Other")) ;
dfre.regov$Cell <- factor(dfre.regov$Cell, levels = c("GM12878", "H1-hESC", "HUVEC", "HeLa-S3", "HepG2", "K562")) ;

jpeg("Rplot_12.jpeg", units = "in", width = 8, height = 8, res = 300) ;
ggplot(dfre.regov, aes(x=Region, y=Percentage, fill = RE)) +
  geom_bar(stat = "identity") +
  scale_x_discrete(limits=c("TSS", "PF", "E", "WE", "CTCF", "T", "R")) +
  labs(title = "Stacked bar plot of overlapping repeat subclass percentage\nwith regulatory (TSS, PF, E, WE, CTCF, T, R) sizes",
       x = "Regulatory feature", y ="Percentage (%)", fill = "Repeat Element") +
  theme(
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
    axis.title = element_text(face = "bold"),
    legend.title = element_text(face = "bold"),
    legend.position = "bottom",
    legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour = "black")) +
  facet_wrap(. ~ Cell) ;
dev.off() ;


#4. Boxplot of the lengths of overlapping repeat subclasses with all regulatory
#regions in GM12878
dfov.len <- read.xlsx("dataframes.xlsx", sheet = "chr21_reg_length") ;
dfov.len$RE <- factor(dfov.len$RE, levels = c("LINE", "SINE", "LTR", "DNA", "Other")) ;
dfov.len$Region <- factor(dfov.len$Region, levels = c("CTCF", "Promoter(+TSS)", "Promoter flanking", "Enhancer", "Weak Enhancer", "Transcribed", "Repressed")) ;

jpeg("Rplot_13.jpeg", units = "in", width = 10, height = 9, res = 300) ;
ggplot(dfov.len, aes(x=RE, y=Length, fill=Region)) +
  geom_boxplot() +
  labs(title = "Boxplot of log10 lengths of overlapping\nrepeat classes with all regulatory regions",
       x = "Repeat", y = "Length (log10(bp))", fill = "Region") +
  theme(
    plot.title = element_text(size = 18, face = "bold", hjust = 0.5),
    axis.title = element_text(size = 14, face = "bold"),
    legend.title = element_text(size = 14, face = "bold"),
    legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour = "black"),
    legend.position = "bottom") +
  scale_y_continuous(name = "Length (log10(bp))", breaks =  c(0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4)
  );
dev.off() ;


#5. Distribution plot showing the lengths of repetitive element overlap in
#GM12878
dfdis.len <- read.xlsx("dataframes.xlsx", sheet = "chr21_reg_length", rowNames = FALSE) ;
dfdis.len$RE <- factor(dfdis.len$RE, levels = c("LINE", "SINE", "LTR", "DNA", "Other")) ;
dfdis.len$Region <- factor(dfdis.len$Region, levels = c("Promoter(+TSS)", "Promoter flanking", "Enhancer", "Weak Enhancer", "CTCF", "Transcribed", "Repressed")) ;

dfdis.len_mean <- ddply(.data = dfdis.len, .(RE,Region), summarise, length.mean = mean(Length)) ;

jpeg("Rplot_14.jpeg", units = "in", width = 8, height = 7, res = 300) ;
ggplot(dfdis.len, aes(x = Length, fill = RE)) +
  geom_density(alpha=0.4) +
  facet_wrap(. ~ Region) +
  labs(title = "Distributions of the length(log10(bp)) of each\nrepetitive element type in regulatory regions of GM12878",
       x = "Length (log10(bp))", y ="Density", fill = "Repeat Element", color = "Repeat Element") +
  theme(
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
    axis.title = element_text(face = "bold"),
    legend.title = element_text(face = "bold"),
    legend.position = "bottom",
    legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour = "black")) +
  geom_vline(data = dfdis.len_mean, aes(xintercept = length.mean, color = RE), linetype = "dashed") ;
dev.off() ;
