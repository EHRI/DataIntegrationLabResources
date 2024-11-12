# Landesarchiv Berlin

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/de-002436)

1. Upload the general Tektonik file that goes up to collection level.
2. Add the following XSLT transformations:
    1. normalize-ead-namespaces.xslt
    2. remove-one-level-tektonik.xslt
    3. adapt-eadddb-to-ehri.xslt
    4. filter_relevant_collections.xslt
    5. one_level_up.xslt
3. Convert the files and ingest them with no further options.
