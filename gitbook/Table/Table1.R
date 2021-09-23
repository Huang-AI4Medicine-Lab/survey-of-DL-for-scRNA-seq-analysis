

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

Algorithm=c("DCA",
            "SAVER-X",
            "DeepImpute",
            "LATE",
            "scGAMI",
            "scIGANs",
            "BERMUDA",
            "DESC",
            "iMAP",
            "Dhaka",
            "scvis",
            "scVAE",
            "VASC",
            "scDeepCluster",
            "cscGAN",
            "scVI",
            "LDVAE",
            "SAUCIE",
            "scScope",
            "DigitalDLSorter",
            "scCapsNet",
            "netAE",
            "scDGN",
            "CNNC",
            "scGen"
            )

Models=c("AE",
         "AE+TL",
         "DNN",
         "AE",
         "AE",
         "GAN",
         "AE+TL",
         "AE",
         "AE+GAN",
         "VAE",
         "VAE",
         "VAE",
         "VAE",
         "AE",
         "GAN",
         "VAE",
         "VAE",
         "AE",
         "AE",
         "DNN",
         "CapsNet",
         "VAE",
         "DANN",
         "CNN",
         "VAE"
         )

Evaluation=c("DREMI",
             "t-SNE, ARI",
             "MSE, Pearson’s correlation",
             "MSE",
             "NMI, ARI, HS and CS",
             "ARI, ACC, AUC, and F-score",
             "kBET, entropy of Mixing, SI",
             "ARI, KL",
             "kBET, LISI",
             "ARI, Spearman Correlation",
             "KNN preservation, log-likelihood",
             "ARI",
             "NMI, ARI, HS, and CS",
             "ARI, NMI, clustering accuracy",
             "t-SNE, marker genes, MMD, AUC",
             "IM: L1 distance; CL: ARI, NMI, SI; BC: Entropy of Mixing",
             "Reconstruction errors",
             "IM: R2 statistics; CL: SI; BC: modified kBET; Visualization: Precision/Recall",
             "IM:Reconstruction errors; BC: Entropy of mixing; CL: ARI",
             "Pearson correlation",
             "Cell-type Prediction accuracy",
            " Cell-type Prediction accuracy, t-SNE for visualization",
             "Prediciton accuracy",
             "AUROC, AUPRC, and accuracy",
             "Correlation, visualization"
             )

Environment =c("Keras, Tensorflow, scanpy",
              " R/sctransfer",
               "Keras/Tensorflow",
               "Tensorflow",
               "Tensorflow",
               "PyTorch",
               "PyTorch",
               "Tensorflow",
               "PyTorch",
               "Keras/Tensorflow",
               "Tensorflow",
               "Tensorflow",
               "H5py, Keras",
               "Keras, Scanpy",
               "Scipy, Tensorflow",
               "PyTorch, Anndata",
              "Part of scVI",
               "Tensorflow",
               "Tensorflow, Scikit-learn",
               "R/Python/Keras",
               "Keras, Tensorflow",
               "PyTorch",
               "PyTorch",
               "Keras, Tensorflow",
               "Tensorflow"
               )

Codes=c("https://github.com/theislab/dca",
        "https://github.com/jingshuw/SAVERX",
       "https://github.com/lanagarmire/DeepImpute",
        "https://github.com/audreyqyfu/LATE",
        "https://github.com/QUST-AIBBDRC/scGMAI/",
        "https://github.com/xuyungang/scIGANs",
        "https://github.com/txWang/BERMUDA", 
        "https://github.com/eleozzr/desc ",
        "https://github.com/Svvord/iMAP", 
        "https://github.com/MicrosoftGenomics/Dhaka ",
        "https://bitbucket.org/jerry00/scvis-dev/src/master/ ",
        "https://github.com/scvae/scvae ",
        "https://github.com/wang-research/VASC ",
        "https://github.com/ttgump/scDeepCluster", 
        "https://github.com/imsb-uke/scGAN",
        "https://github.com/YosefLab/scvi-tools", 
        "https://github.com/YosefLab/scvi-tools", 
        "https://github.com/KrishnaswamyLab/SAUCIE/", 
        "https://github.com/AltschulerWu-Lab/scScope", 
        "https://github.com/cartof/digitalDLSorter", 
        "https://github.com/wanglf19/scCaps", 
        "https://github.com/LeoZDong/netAE", 
        "https://github.com/SongweiGe/scDGN",
        "https://github.com/xiaoyeye/CNNC", 
        "https://github.com/theislab/scgen "
        )


Refs=c("[17]", 
       "[51]", 
       "[19]", 
       "[52]", 
       "[53]",
       "[18]",
       "[57]", 
       "[61]",
       "[64]",
       "[66]",
       "[69]",
       "[70]",
       "[71]",
       "[73]",
       "[76]",
       "[16]", 
       "[80]",
       "[14]", 
       "[86]",
       "[87]",
       "[94]",
       "[98]",
       "[101]",
       "[104]",
       "[113]"
       )


table1=data.frame(App="",
                  Algorithm=Algorithm,
                  Models=Models,
                  Evaluation=Evaluation,
                  Environment=Environment,
                  Codes=Codes,
                  Refs=Refs
                  )


saveRDS(table1, "./Table/Table1.rds")



