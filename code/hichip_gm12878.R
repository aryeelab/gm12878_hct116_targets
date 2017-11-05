library(diffloop)

h <- loopsMake.mango("../data/hichip/gm12878", mergegap = 0)
hfilt <- subsetLoops(h, rowSums(h@counts >= 2) >= 3)
dfo <- summary(hfilt)
dfo$totalCounts <- rowSums(hfilt@counts)
dfo <- dfo[order(dfo$totalCounts, decreasing = TRUE),]
write.table(head(dfo,100), file = "../output/GM12878_HiChIP_top100.tsv", row.names = FALSE,
            col.names = TRUE, sep = "\t", quote = FALSE)


