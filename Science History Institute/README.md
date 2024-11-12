# Science History Institute

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/us-006556)

1. Download the contents from the institution webpage: https://archives.sciencehistory.org/ead/scihist-2019-011.xml
2. Add the XSLT transformations in the following order:
    1. remove_namespace_prefix.xslt
    2. give_id_to_inner_collections.xslt
    3. give_namespace_to_removed_attribtues.xslt
    4. add_link_to_digitised_collections.xslt
    5. remove_namespace_from_ead_tag.xslt
    6. normalize_ead_namespaces.xslt
3. Convert files and ingest with no further options.


