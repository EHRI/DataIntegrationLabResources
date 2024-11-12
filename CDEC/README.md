# Fondazione Centro di Documentazione Ebraica Contemporanea CDEC

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/it-002845)

1. Connect the EHRI portal to the CDEC OAI-PMH endpoint (http://dati.cdec.it/oaicat-cdec/OAIHandler) with metadata format "ead" and set "CDEC-EHRI" (If the OAI-PMH harvester finds an error, alternatively, we can use a set of uploaded files). 
2. Add the XSLT transformations in the following order:
    1. only_ead.xslt
    2. copy_id_in_archdesc.xslt
    3. fill_missing_xlink_type.xslt
    4. correct_false_dates.xslt
    5. normalize_ead_namespaces.xslt
3. Convert the files and ingest them using the ehri2-it-cdec.properties configuration file. 