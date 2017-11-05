library(diffloop)

h <- loopsMake.mango("../data/hichip/hct116", mergegap = 0)
hfilt <- subsetLoops(h, rowSums(h@counts >= 2) == 2)
dfo <- summary(hfilt)
dfo$totalCounts <- dfo$HCT116_1 +  dfo$HCT116_2
dfo <- dfo[order(dfo$totalCounts, decreasing = TRUE),]
write.table(head(dfo,100), file = "../output/HCT116_HiChIP_top100.tsv", row.names = FALSE,
            col.names = TRUE, sep = "\t", quote = FALSE)

