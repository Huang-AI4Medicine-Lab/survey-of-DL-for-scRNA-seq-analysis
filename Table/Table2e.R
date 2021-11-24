

# Table2e

Title=c("10X Single-cell gene expression dataset",
        "Tabula Muris ",
        "HCA",
        "MCA",
        "scQuery",
        "SeuratData",
        "cytoBank"
        )

Sources=c("https://support.10xgenomics.com/single-cell-gene-expression/datasets",
          "https://tabula-muris.ds.czbiohub.org/",
          "https://data.humancellatlas.org/ ",
          "https://figshare.com/s/865e694ad06d5857db4b, or GSE108097",
          "https://scquery.cs.cmu.edu/", 
          "https://github.com/satijalab/seurat-data", 
          "https://cytobank.org/" 
)

Notes=c("Contains large collection of scRNA-seq dataset generated using 10X system",
        "Compendium of scRNA-seq data from mouse",
        "Human single-cell atlas",
        "Mouse single-cell atlas",
        "A web server cell type matching and key gene visualization. It is also a source for scRNA-seq collection (processed with common pipeline)", 
        "List of datasets, including PBMC and human pancreatic islet cells", 
        "Community of big data cytometry"
          )


table2e=data.frame(Title=Title,
                  Sources=Sources,
                  Notes=Notes
                  )

# row.names(table2d)=Title
saveRDS(table2e, "./Table/Table2e.rds")



