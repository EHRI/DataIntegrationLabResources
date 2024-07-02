# Buchenwald Memorial Archives
The data comes from an OAI-PMH endpoint which offers a Tectonic file (EA_DDB) and different collections descriptions (EAD3). Therefore, to maintain the hierarchy the Tectonic file should be imported first and then the collection-level descriptions in the correct place of the hierarchy.

1. Create a dataset of type URLSet and use the tectonic.tsv file as the configuration.
2. Add the following transformations:
    1. one_level_up.xsl
    2. one_level_up.xsl
    3. normalise_tektonik_buchenwald.xsl
    4. filter_WIP_data.xsl
3. Transform the file and ingest it with no further options.
4. Create a separate dataset (of type URLSet) for each of the files to be ingested selecting the option "Nest items beneath specified fonds" using the pertinent Fonds ID for the collection to be ingested in the right place of the hierarchy (e.g., BwA-III-K-bS should use de-002463-bwa_iii-k as Fonds ID.)
5. Add the following transformations:
    1. lang_eng_to_deu.xsl
    2. filter_WIP_data_ead3.xsl
    3. filter_description_with_access_restrict.xsl
6. Transform the file ingest it using the ead3_buchenwald.properties file.