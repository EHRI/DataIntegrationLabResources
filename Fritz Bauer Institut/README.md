# Fritz Bauer Institut

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/de-002518)

1. Create two datasets with content-type "text/xml; charset=iso-8859-1" one for English collections and the other for German ones.
2. Upload the files from the FAUST system that have been previously exported to EAD-DDB each set in the correspoding language
2. Add the transformations in the following order:
    1. normalize_ead_namespaces.xslt
    2. remove_namespace_prefix.xslt
    3. normalize_test_fritz_bauer_abstract.xslt
    4. faust_to_ead_cdata.tsv
    5. add_english_language.xslt (or add_german_language.xslt for collection in German)
3. Convert the files and ingest them with no further specific options.