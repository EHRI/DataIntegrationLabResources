# Center for Urban History of East Central Europe

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/ua-006557)

The data integration process starts with a set of CSV files (under the export folder) that are converted using Open Refine. For each file a new project is created in Open Refine following the steps below:

1. Upload the file and create a project in Open Refine.
2. Apply the transformation steps (open-refine-steps.json) under the folder resources.
3. Export the contents using the templating options in Open Refine and the template transform-*-ead.txt. Remove the prefix and suffix content, and add a line break as row separator.
4. Divide the txt file into multiple XML-EAD file using the following command: `csplit -z -b -%02d.xml -f photos-uk CUH-photos-uk.txt "/<ead .*>/" "{*}"`
5. Upload the created files and ingest them without any further option.