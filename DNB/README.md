# Deutsches Exilarchiv 1933-1945 der Deutschen Nationalbibliothek

1. Create a URLset with the content in url_set.tsv
2. Add the transformations in the following order:
    1. remove_namespace_prefix.xslt
    2. marc21_to_ead.tsv
3. Convert the files and ingest them using the dnb.properties configuration file. 