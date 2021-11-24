

# Table2a

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


Title=c("Splatter",
        "CIDR",
        "NB+dropout",
        "Bulk RNA-seq",
        "SIMLR"
        )

Algorithm=c("DCA, DeepImpute, PERMUDA, scDeepCluster, scVI, scScope, solo",
            "sclGAN",
            "Dhaka",
            "SAUCIE",
            "scScope"
            )

Number_of_Cells=c("~2000",
        "50",
        "500",
        "1076",
        "1 million"
         )

Simulation_Methods=c("Splatter/R",
                     "CIDR simulation",
                     "Hierachical model of NB/Gamma + random dropout", 
                     "1076 CCLE bulk RNAseq + dropout conditional on expression level",
                     "SIMLR, high-dimensional data generated from latent vector"
                     )

Refs=c("[78]", 
       "[54]", 
       "", 
       "", 
       "[43]"
       )


table2=data.frame(Title=Title,
                  Algorithm=Algorithm,
                  Number_of_Cells=Number_of_Cells,
                  Simulation_Methods=Simulation_Methods,
                  Refs=Refs
                  )


saveRDS(table2, "./Table/Table2.rds")



