
EvaluationMethod=c("Pseudobulk RNA-seq",
                   "Mean squared error (MSE)",
                   "Pearson correlation",
                   "Spearman correlation",
                   "Entropy of accuracy, Hacc [21]",
                   "Entropy of purity, Hpur [21]",
                   "Entropy of mixing [32]",
                   "Mutual Information (MI) [164]",
                   "Normalized Mutual Information (NMI) [165]",
                   "Kullback–Leibler (KL) divergence [166]",
                   "Jaccard Index",
                   "Fowlkes-Mallows Index for two clustering algorithms (FM)",
                   "Rand index (RI)",
                   "Adjusted Rand index (ARI) [167]",
                   "Silhouette index",
                   "Maximum Mean Discrepancy (MMD) [65]",
                   "k-Nearest neighbor batch-effect test (kBET) [168]",
                   "Local Inverse Simpson’s Index (LISI) [34]",
                   "Homogeneity",
                   "Completeness",
                   "V-Measure [169]",
                   "Precision, recall",
                   "Accuracy",
                   "F1-score",
                   "AUC, RUROC"
            )

Equations=c("",
            "$MSE=\\frac{1}{n} \\sum_{i=1}^{n}(x_{i}- \\hat{x}_{i})^{2}$",
            "$\\rho_{X,Y}=\\frac{cov(X,Y)}{\\sigma_{X}\\sigma_{Y}}$",
            "$\\rho_{s}=\\rho_{r_{X},r_{Y}}=\\frac{cov(r_X,r_Y)}{\\sigma_{r_X}\\sigma_{r_Y}}$",
            "$H_{acc}=-\\frac{1}{M} \\sum_{i=1}^{M} \\sum_{j=1}^{N_i} p_i(x_j)logp_{i}(x_{j})$",
            "$H_{pur}=-\\frac{1}{N}\\sum_{i=1}^{N}\\sum_{j=1}^{M_i}q_i(x_j)logq_{i}(x_{j})$",
            "$E=\\sum_{i=1}^{C}p_{i}\\log(p_{i})$",
            "$MI(U,V)=\\sum_{i}^{|U|}\\sum_{j=1}^{|V|}P_{UV}(i,j)log(\\frac{P_{UV}(i,j)}{P_{U}(i)P_{V}(j)})$",
            "$NMI(U,V)=\\frac{2 \\times MI(U,V)}{[H(U)+H(V)]}$",
            "$D_{KL}(P||Q)=\\sum_{x \\in \\chi}P(x)log(\\frac{P(x)}{Q(x)})$",
            "$J(U,V)=\\frac{\\lfloor U \\cap V \\rfloor}{\\lfloor U \\cup V \\rfloor}$",
            "$FM=\\sqrt{ \\frac{TP}{TP + FP} \\times \\frac{TP}{TP+FN} }$",
            "$RI=\\frac{(a+b)}{\\binom{n}{2}}$",
            "$ARI=\\frac{RI-E[RI]}{max(RI)-E[RI]}$",
            "$s(i)=\\frac{b(i)-a(i)}{max(a(i),b(i))}$",
            "$MMD(F,p,q)=sup_{f \\in F}||\\mu_{p}-\\mu_{q}||_{f}$",
            "$a_{n}^{k}=\\sum_{l=1}^{L}\\frac{(N_{nl}^{k} - k \\bullet f_{l})^{2}}{k \\bullet f_{l}} ~ X_{L-1}^{2}$",
            "$\\frac{1}{ \\lambda(n)}=\\frac{1}{\\sum_{l=1}^{L}(p(l))^{2}}$",
            "$HS=1-\\frac{H(P(U|V))}{H(P(U))}$",
            "$CS=1-\\frac{H(P(V|U))}{H(P(V))}$",
            "$V_{\\beta}=\\frac{(1+\\beta)HS \\times CS}{\\beta HS + CS}$",
            "$Precision = \\frac{TP}{TP+FP}, recall=\\frac{TP}{TP+FN}$",
            "$Accuracy = \\frac{TP+TN}{N}$",
            "$F_{1}=\\frac{2Precision \\bullet Recall}{Precision+Recall}$",
            # "./Figures/Table3_AUC_Figure.png"
            "![curve](D:/Github/survey-of-DL-for-scRNA-seq-analysis/Figures/Table3_AUC_Figure.png)"
            )

Explanation=c("Average of normalized (log2-transformed) scRNA-seq counts across cells is calculated and then correlation coefficient between the pseudobulk and the actual bulk RNA-seq profile of the same cell type is evaluated.", 
              "MSE assesses the quality of a predictor, or an estimator, from a collection of observed data $x$, with $\\hat{x}$ being the predicted values.",
              "where cov() is the covariance, $\\sigma X$ and $\\sigma Y$ are the standard deviation of $X$ and $Y$, respectively.", 
              "The Spearman correlation coefficient is defined as the Pearson correlation coefficient between the rank variables, where $r_{X}$ is the rank of $X$.",
              "Measures the diversity of the ground-truth labels within each predicted cluster group. $p_{i}(x_{j})$ (or $q_{i}(x_{j})$) are the proportions of cells in the $j$th ground-truth cluster (or predicted cluster) relative to the total number of cells in the $i$th predicted cluster (or ground-truth clusters), respectively.",
              "Measures the diversity of the predicted cluster labels within each ground-truth group",
              "This metric evaluates the mixing of cells from different batches in the neighborhood of each cell. $C$ is the number of batches, and $p_{i}$ is the proportion of cells from batch $i$ among $N$ nearest cells.",
              "where $P_{U}(i)=\\frac{|U_{i}|}{N}$ and $P_{V}(j)=\\frac{|V_{j}|}{N}$. Also, define the joint distribution probability is $P_{UV}(i,j)=\\frac{|U_{i} \\cap V_{j}|}{N}$. The $MI$ is a measure of mutual dependency between two cluster assignments $U$ and $V$.",
              "where $H(U)=\\sum P_{U}(i)log(P_{U}(i)), H(V)=\\sum P_{V}(i)log(P_V(i))$. The $NMI$ is a normalization of the $MI$ score between 0 and 1.",
              "where discrete probability distributions $P$ and $Q$  are defined on the same probability space $χ$. This relative entropy is the measure for directed divergence between two distributions.",
              "$0 ≤ J(U,V) ≤ 1$. $J = 1$ if clusters $U$ and $V$ are the same. If $U$ are $V$ are empty, $J$ is defined as 1.",
              "TP as the number of pairs of points that are present in the same cluster in both $U$ and $V$; $FP$ as the number of pairs of points that are present in the same cluster in $U$ but not in $V$; $FN$ as the number of pairs of points that are present in the same cluster in $V$ but not in $U$; and TN as the number of pairs of points that are in different clusters in both U and V.",
              "Measure of constancy between two clustering outcomes, where $a$ (or $b$) is the count of pairs of cells in one cluster (or different clusters) from one clustering algorithm but also fall in the same cluster (or different clusters) from the other clustering algorithm.", 
              "ARI is a corrected-for-chance version of RI, where $E[RI]$ is the expected Rand Index.",
              "where $a(i)$ is the average dissimilarity of ith cell to all other cells in the same cluster, and $b(i)$ is the average dissimilarity of ith cell to all cells in the closest cluster. The range of $s(i)$ is [−1,1], with 1 to be well-clustered and -1 to be completely misclassified.", 
              "$MMD$ is a non-parametric distance between distributions based on the reproducing kernel Hilbert space, or, a distance-based measure between two distribution $p$ and $q$ based on the mean embeddings $\\mu_{p}$ and $\\mu_{q}$ in a reproducing kernel Hilbert space $F$.",
              "Given a dataset of $N$ cells from $L$ batches with $N_l$ denoting the number of cells in batch $l$, $N_{nl}^{k}$ is the number of cells from batch $l$ in the $k$-nearest neighbors of cell $n$, $f_{l}$ is the global fraction of cells in batch $l$, or $f_{l}=\\frac{N_l}{N}$, and  $X_{L-1}^{2}$ denotes the $X^{2}$ distribution with $L-1$ degrees of freedom. It uses a $X^{2}$-based test for random neighborhoods of fixed size to determine the significance (“well-mixed”).",
              "This is the inverse Simpson’s Index in the $k$-nearest neighbors of cell $n$ for all batches, where $p(l)$ denotes the proportion of batch $l$ in the $k$-nearest neighbors. The score reports the effective number of batches in the $k$-nearest neighbors of cell $n$.",
              "where $H()$ is the entropy, and $U$ is the ground-truth assignment and $V$ is the predicted assignment. The $HS$ range from 0 to 1, where 1 indicates perfectly homogeneous labeling.",
              "Its values range from 0 to 1, where 1 indicates all members from a ground-truth label are assigned to a single cluster.",
              "where $\\beta$ indicates the weight of $HS$. $V$-Measure is symmetric, i.e. switching the true and predicted cluster labels does not change $V$-Measure.",
              "TP: true positive, FP: false positive, FN, false negative.", 
              "N: all samples tested, TN: true negative",
              "A harmonic mean of precision and recall. It can be extended to $F_\\beta$ where $\\beta$ is a weight between precision and recall (similar to $V$-measure).", 
              "Area Under Curve (grey area). Receiver operating characteristic (ROC) curve (red line). A similar measure can be performed on the Precision-Recall curve (PRC), or AUPRC. Precision-Recall curves summarize the trade-off between the true positive rate and the positive predictive value for a predictive model (mostly for an imbalanced dataset)."
)
        

table3=data.frame(EvaluationMethod=EvaluationMethod,
                  Equations=Equations,
                  Explanation=Explanation
                  )


saveRDS(table3, "./Table/Table3.rds")



