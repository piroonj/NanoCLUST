git clone https://github.com/nf-core/configs.git
mkdir db db/taxdb
wget https://ftp.ncbi.nlm.nih.gov/blast/db/16S_ribosomal_RNA.tar.gz && tar -xzvf 16S_ribosomal_RNA.tar.gz -C db
wget https://ftp.ncbi.nlm.nih.gov/blast/db/taxdb.tar.gz && tar -xzvf taxdb.tar.gz -C db/taxdb

nextflow run main.nf -profile singularity --reads test_datasets/mock4_run3bc08_5000.fastq --db /home/piroonj/programs/nextflow/nanoclust/NanoCLUST/db/16S_ribosomal_RNA --tax /home/piroonj/programs/nextflow/nanoclust/NanoCLUST/db/taxdb --bind "/home/piroonj/programs/nextflow/nanoclust/NanoCLUST/db,/home/piroonj/programs/nextflow/nanoclust/NanoCLUST/db/taxdb"


