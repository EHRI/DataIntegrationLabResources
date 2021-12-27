# CDEC

1. Connect the EHRI portal to the CDEC OAI-PMH endpoint (http://dati.cdec.it/oaicat-cdec/OAIHandler) with metadata format "ead" and set "CDEC-EHRI".
2. Add the XSLT transformations in the following order:
    1. normalize_ead_namespaces.xslt
    2. fill_missing_xlink_type.xslt
    3. correct_false_dates.xslt
3. Convert the files and ingest them using the ehri2-it-cdec.properties configuration file. 