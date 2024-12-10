# Anne Frank Stichting

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/nl-002892)

The data is harvested from the available OAI-PMH endpoint obtaining a custom-made XML format that includes the data about the item level descriptions and a pointer to the collection. The collections descriptions are exported in an Excel format. To ensure the recreation of the hierarchy it is important to import the datasets in the order indicated below:

1. For the item-level XML files:
    1. Create a dataset using the OAI-PMH option as the harvesting method and targeting the "oai_adlib" metadata format and the "collect" set.
    2. Add the following transformations:
        1. remove_namespace_prefix.xsl
        2. oai_adlib2ead.tsv
    3. Convert the files for each of the datasets and ingest them with no further options.

2. For the collections descriptions in Excel:
    1. The Excel file has to be converted to XML using OpenRefine. For that, the open-refine-steps.json transformations have to be applied in order to normalise the data. Then, the open-refine-template-export.xml contains a template to be applied using the template export option in Open Refine. The different sections of the template export dialog are reflected as comments in the file.
    2. Create a dataset using the uploads option and upload the file created with Open Refine.
    3. Convert the file ingest them using it with no further options.