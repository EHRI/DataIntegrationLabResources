# Yad Vashem

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/il-002798)

The data can be accessed through the new YV API which offers and XML export of the collection level. These files, once collected, they can be uploaded to the EHRI Portal. 

1. Create one dataset per language (English and Hebrew)
    * For each of these datasets we have to upload the files in the corresponding language
2. For the transformations we use a general mapping and a specific one for the Hebrew descriptions.
    1. yv_api_to_ead.tsv
    * lang_to_heb.xslt (only used for the Hebrew dataset)
3. Convert the files for each of the datasets and ingest them with no further options.