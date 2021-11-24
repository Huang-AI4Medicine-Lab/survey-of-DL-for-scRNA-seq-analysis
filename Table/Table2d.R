

# Table2d

Title=c("Worm neuron cells$^{1}$",
        "Cross species, stimulation with LPS and dsRNA"
        )

Algorithm=c("scDeepCluster",
            "scGen"
            )

Species=c("C. elegans",
          "Mouse, rat, rabbit, and pig"
          )

Tissue=c("Neuron",
         "bone marrow-derived phagocyte"
         )

Number_of_Cells=c("4,186",
                  "5,000 to 10,000 /species"
                  )

Data_Sources=c("GSE98561",
               "13 accessions in ArrayExpress"
               )

Refs=c("[156]",
       "[118]"
       )


table2d=data.frame(Title=Title,
                  Algorithm=Algorithm,
                  Species=Species,
                  Tissue=Tissue,
                  Number_of_Cells=Number_of_Cells,
                  Data_Sources=Data_Sources,
                  Refs=Refs
                  )

# row.names(table2d)=Title


saveRDS(table2d, "./Table/Table2d.rds")
writexl::write_xlsx(table2d, "./Table/Table2d.xlsx")


