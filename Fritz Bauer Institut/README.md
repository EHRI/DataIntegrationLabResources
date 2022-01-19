# Fritz Bauer Institut

1. Upload the files from the FAUST system that have been previously exported to EAD-DDB
2. Add the transformations in the following order:
    1. normalize_ead_namespaces.xslt
    2. remove_namespace_prefix.xslt
    3. faust_to_ead_cdata.csv
3. Convert the files and ingest them with no further specific options.