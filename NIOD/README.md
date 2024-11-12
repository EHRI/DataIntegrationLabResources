# NIOD

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/nl-002896)

1. Harvest the files from the OAI-PMH endpoint. (Attention: if it does not work the IP for the EHRI portal server should be whilelisted by the provider).
2. Add the following XSLT transformations:
    1. fix_namespaces_for_extref.xslt
    2. add_accessrestrict_to_c01_empty_collection.xslt
    3. generate_web_sources_for_inner_collections.xslt
    4. normalize_ead_namespaces.xslt
3. Convert the files and ingest them with the nl-niod3.properties