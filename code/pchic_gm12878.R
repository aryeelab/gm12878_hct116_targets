library(diffloop)
library(data.table)
dt <- data.frame(fread(paste0("zcat < ", "../data/pchic/TS5_GM12878_promoter-other_significant_interactions.txt.gz")))

# already sorted from high to low
write.table(head(dt,100), file = "../output/GM12878_pcHiC_top100.tsv", row.names = FALSE,
            col.names = TRUE, sep = "\t")