# Kazerne Dossin

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/be-002157)

1. Harvest the files from the ResourceSync endpoint.
2. Add the following transformations:
    1. kd_export_to_ead.tsv (use parametersECT.json as the parameters, so namespaces in the XML files are recognised by the ECT tool.)
    2. normalize_ead_namespace.xslt
3. Convert and ingest the files using the kd-ead.properties file.