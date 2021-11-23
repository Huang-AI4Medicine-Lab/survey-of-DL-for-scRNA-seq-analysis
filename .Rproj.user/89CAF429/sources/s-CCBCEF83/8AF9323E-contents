

# Table1

# "Imputation"=6, 
# "Batch correction"=3, 
# "Clustering, latent representation, dimension reduction, and data augmentation"=6,
# "Multi-functional models (IM: imputation, BC: batch correction, CL: clustering)"=4,
# "Cell type Identification"=4,
# "Function analysis"=2

# App=c(rep("Imputation", 6), 
#       rep("Batch correction", 3), 
#       rep("Clustering, latent representation, dimension reduction, and data augmentation",6),
#       rep("Multi-functional models (IM: imputation, BC: batch correction, CL: clustering)", 4),
#       rep("Cell type Identification", 4),
#       rep("Function analysis",2)
#       )


# App=c("Imputation", 
#       "Batch correction", 
#       "Clustering, latent representation, dimension reduction, and data augmentation",
#       "Multi-functional models (IM: imputation, BC: batch correction, CL: clustering)",
#       "Cell type Identification",
#       "Function analysis"
#       )

Algorithm=c("DCA","","",
            "SAVER-X","",
            "DeepImpute","","",
            "LATE","",
            "scGAMI","",
            "scIGANs","","",
            "BERMUDA","","",
            "DESC","","",
            "iMAP","","",
            "Dhaka","",
            "scvis","",
            "scVAE","",
            "VASC","","","",
            "scDeepCluster","",
            "cscGAN","","","",
            "scVI","","",
            "LDVAE",
            "SAUCIE","","",
            "scScope","","",
            "DigitalDLSorter","",
            "scCapsNet","",
            "netAE","",
            "scDGN","",
            "CNNC","",
            "scGen",""
            )

Feature=c("Strongest recovery of the top 500 genes",  
          "Choices of noise models, including NB, and ZINB",
          "Outperform other existing methods in capturing cell population structure",
          
          "Pretraining from existing data sets (transfer learning)",
          "Decomposes the variation into three components",
          
          "Divide-and-conquer approach, using a bank of DNN models",
          "Reduced complexity by learning smaller sub-network",
          "Minimized overfitting by removing target genes from input",
          
          "Takes the log-transformed expression as input",
          "No explicit distribution assumption on input data",
          
          "A model designed for clustering but it includes an AE",
          "Uses fast independent component analysis algorithm: FastICA",
          
          "Trains a GAN model to generate samples with imputed expressions", 
          "", 
          "",
          
          "Preserves batch-specific biological signals through transfer-learning Preserves batch-specific cell populations", 
          "", 
          "",
          
          "Removes batch effect through clustering with the hypothesis that batch differences in expressions are smaller than true biological variations",
          "Does not require explicit batch information for batch removal", 
          "",
          
          "iMAP combines AE and GAN for batch effect removal",
          "It consists of two processing stages, each including a separate DL model",
          "",
          
          
          "It was proposed to reduce the dimension of scRNA-seq data for efficient stratification of tumor subpopulations", 
          "",
          
          "VAE network that learns low-dimensional representations",
          "Capture both local and global neighboring structures",
          
          "scVAE includes multiple VAE models for denoising gene expression levels and learning the low-dimensional latent representation",
          "Gaussian Mixture VAE (GMVAE) with negative binomial distribution achieved the highest lower bound and ARI",
          
          "Another VAE for dimension reduction and latent representation",
          "Explicitly model dropout with a Zero-inflated layer", 
          "",
          "",
          
          "AE network that simultaneously learns feature representation and performs clustering via explicit modeling of cell clusters", 
          "",
          
          "It was designed to augment the existing scRNA-seq samples by generating expression profiles of specific cell types or subpopulations",
          "The cscGAN learns the expression patterns of a specific subpopulation (few cells), and simultaneously learns the cells from all populations (a large number of cells).",
          "",
          "",
          
          "Designed to address a range of fundamental analysis tasks, including batch correction, visualization, clustering, and differential expression",
          "Integrated a normalization procedure and batch correction ", 
          "",
          
          "Adaption of scVI to improve the model interpretability ",
          
          "It is applied to the normalized data instead of count data", 
          "", 
          "",
          
          "AE with recurrent steps designed for imputation and batch correction", 
          "", 
          "",
          
          "A deconvolution model with 4-layer DNN",
          "Designed to identify and quantify the immune cells infiltrated in tumors captured in bulk RNA-seq, utilizing single-cell RNA-seq data",
          
          "It takes log-transformed, normalized expressions as input and follows the general CapsNet model", 
          "",
          
          "VAE-based semi-supervised cell type prediction model",
          "Aiming at learning a low dimensional space from which the original space can be accurately reconstructed", 
          
          "scDGN takes the log-transformed, normalized expression as the input",
          "Supervised domain adversarial network",
          
          "CNNC takes expression levels of two genes from many cells and transforms them into a 32 x 32 image-like normalized empirical probability function",
          "Inferring causal interactions between genes from scRNA-seq",
          
          "ScGen follows the general VAE for scRNA-seq data but uses the “latent space arithmetics” to learn perturbations' response",
          "Designed to learn cell response to certain perturbation (drug treatment, gene knockout, etc)"
         )

ApplicationNotes=c("AE integrated into the Scanpy framework",
                   "High scalability of AE, up to millions of cells",
                   "This method was compared to SAVER, scImpute, and MAGIC",
                   
                   "SAVER-X pretraining on PBMCs outperformed other denoising methods, including DCA, scVI, scImpute, and MAGIC",
                   "SAVER-X was also applied for cross-species analysis",
                   
                   "DeepImpute had the highest overall accuracy and offered shorter computation time than other methods like MAGIC, DrImpute, ScImpute, SAVER, VIPER, and DCA", 
                   "DeepImpute showed benefits in improving clustering results and identifying significantly differentially expressed genes",
                   "Scalable and faster training time",
                   
                   "LATE outperforms other existing methods like MAGIC, SAVER, DCA, scVI, particularly when the ground truth contains only a few or no zeros",
                   "Better scalability than DCA and scVI up to 1.3 million cells with 10K genes",
                   
                   "Significantly improved the clustering performance in eight of seventeen selected scRNA-seq datasets",
                   "scGMI’s scalability needs to be improved",
                   
                   "This framework forces the model to reconstruct the real samples and discriminate between real and generated samples.",  
                   "Best reported performance in clustering compared to DCA, DeepImpute, SAVER, scImpute, MAGIC",
                   "Scalable over 100K cells, also robust to small datasets",
                   
                   "Outperform other methods like mnnCorrect, BBKNN, Seurat, and scVI",  
                   "Removes batch effects even when the cell population compositions across different batches are vastly different",
                   "Scalable by using mini-batch gradient descent algorithm during training",
                   
                   "DESC is effective in removing the batch effect, whereas CCA, MNN, Seurat 3.0, scVI, BERMUDA, and scanorama were sensitive to batch definitions",
                   "DESC is biologically interpretable and can reveal both discrete and pseudo-temporal structures of cells",
                   "Small memory footprint and GPU enabled",
                   
                   "iMAP was shown to separate the batch-specific cell types but mix batch shared cell types and outperformed other existing batch correction methods including Harmony, scVI, fastMNN, Seurat",
                   "Capable handling datasets from Smart-seq2 and 10X Genomics platforms",
                   "Demonstrated the stability over hyperparameters, and scalability for thousands of cells.",
                   
                   "Dhaka was shown to have an ARI higher than most other comparing methods including t-SNE, PCA, SIMLR, NMF, an autoencoder, MAGIC, and scVI",
                   "Dhaka can represent an evolutionary trajectory",
                   
                   "scvis was tested on the simulated data and outperformed t-SNE",
                   "scvis is much more scalable than BH t-SNE (t-SNE takes O(M log(M)) time and O(M log(M)) space) for very large dataset (>1 million cells)",
                   
                   "GMVAE was also compared with Seurat and shown to perform better, however, scVAE performed no better than scVI or scvis",
                   "Algorithm applicable to large datasets with million cells",
                   
                   "VASC was compared with PCA, t-SNE, ZIFA, and SIMLR on 20 datasets", 
                   "In the study of embryonic development from zygote to blast cells, VASC shthe owed better performance to model embryo developmental progression",
                   "VASC is reported to handle a large number of cells or cell types",
                   "Demonstrated model stability",
                   
                   "It was tested on the simulation data with different dropout rates and compared with DCA, MPSSC and SIMLR CIDR, PCA + k-mean, scvis and DEC significantly outperforming them",
                   "Running time of scDeepCluster scales linearly with the number of cells, suitable for large scRNA-seq datasets",
                   
                   "cscGAN was shown to generate high-quality scRAN-seq data for specific cell types.",  
                   "The augmentation in this method improved the identification of rare cell types and the ability to capture transitional cell states from trajectory analysis",
                   "Better scalability than SUGAR (Synthesis Using Geometrically Aligned Random-walks)",
                   "Capable re-establish developmental trajectories through pseudo-time analysis via cscGAN data augmentation",
                   
                   "ScVI was shown to be faster than most non-DL algorithms and scalable to handle twice as many cells as non-DL algorithms with a fixed memory",
                   "For imputation, ScVI, together with other ZINB-based models, performed better than methods using alternative distributions",
                   "Similar scalability as DCA",
                   
                   "For LDVAE the variations along the different axes of the latent variable establish direct linear relationships with input genes.",
                   
                   "Results showed that SAUCIE had a better or comparable performance with other approaches",
                   "SAUCIE has better scalability and faster runtimes than any of the other models",
                   "Applications with single-cell CyTOF datasets",
                   
                   "It was compared with PCA, MAGIC, ZINB-WaVE, SIMLR, AE, scVI, and DCA",
                   "Efficiently identify cell subpopulations from complex datasets with high dropout rates, large numbers of subpopulations and rare cell types",
                   "For scalability and training speed, scScope was shown to offer scalability (for >100K cells) with high efficiency (faster than most of the approaches)",
                   
                   "DigitalDLSorter achieved excellent agreement (linear correlation of 0.99 for colorectal cancer, and good agreement in quadratic relationship for breast cancer) at predicting cell type proportion.",
                   "",
                   
                   "Interpretable capsule network designed for cell type prediction",
                   "scCapsNet makes the deep-learning black box transparent through the direct interpretation of internal parameters",
                   
                   "Deals with scenarios of having a small number of labeled cells.",
                   "netAE outperformed most of the baseline methods including scVI, ZIFA, PCA and AE as well as a semi-supervised method scANVI",
                   
                   "scDGN was tested for classifying cell types and aligning batches", 
                   "scDGN outperformed many deep learning and traditional machine learning methods in classification accuracy, including DNN, CaSTLe, MNN, scVI, and Seurat",
                   
                   "CNNC outperforms prior methods for inferring TF–gene and protein–protein interactions, causality inference, and functional assignments",
                   "Was shown to have more than 20% higher AUPRC than other methods and reported almost no false-negative for the top 5% predictions",
                   
                   "Compared with other methods including CVAE, style transfer GAN, linear approaches based on vector arithmetics(VA) and PCA+VA, scGen predicted full distribution of ISG15 gene (strongest regulated gene by IFN-b) response to IFN- b",
                   "scGen can be used to translate the effect of a stimulation trained in study A to how stimulated cells would look in study B, given a control sample set"
             )


table1b=data.frame(App="",
                  Algorithm=Algorithm,
                  Feature=Feature,
                  ApplicationNotes=ApplicationNotes
                  )


saveRDS(table1b, "./Table/Table1b.rds")



