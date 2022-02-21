# DANS

DANS is able to provide their data through an OAI-PMH endpoint following Dublin Core standard. However, they are not able to create sets with the filtered collections, so instead we need to create two different lists that will be harvested with the URL set harvesting option. In addition, the hierarchical structure is not provided by the ingested meta-data, so mapping should recreate it in order to have a successful import.

## easy-collection:2
1. Harvest the files using the links-easy-collection2.tsv file.
2. Add the following transformations:
    1. dc2ead_dans_easy-collection2.csv
    2. replace_langtag_2_to_3_easy_collection2.xslt
    3. normalize_ead_namespaces.xslt
3. Convert the files and ingest with no further options.

## easy-collection:2:3
1. Harvest the files using the links-easy-collection23.tsv file.
2. Add the following transformations:
    1. dc2ead_dans_easy-collection23.csv
    2. replace_langtag_2_to_3_easy_collection23.xslt
    3. normalize_ead_namespaces.xslt
3. Convert the files and ingest with no further options.