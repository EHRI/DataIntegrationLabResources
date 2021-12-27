# Czech Institutions

1. Open Open Refine and import the Excel file (EHRI-fromYerusha.xlsx) as a new project. Use the first row as headers.
2. Apply the data transformations steps in open-refine-steps.json going to the "Undo/Redo" tab and using the "Apply..." option
3. Facet the rows by the institution using the column "Yerusha identifier (created by Yerusha)".
4. Export an XML file per institution (changing the faceted institution with the previous step) using the Export -> Templating... option. Use the contents of the file openrefine-export.xml in the Row template input, let prefix and suffix blank and introduce a carriage return in the row separator. 
5. Create a folder for each of the exported files, like they are now in this project.
6. Remove null tags using the script removeNullTags.sh. Example: `$ sh removeNullTags.sh cz-002226/cz-002226.xml`
7. Split the big XML file in several XML files (one per collection) using the split.sh script `$ sh split.sh cz-002226`
8. After these steps the files with a number suffix  (e.g., cz-002226-00.xml) will be ready to be imported in the EHRI portal. Before the final ingestion, make sure that you add the ead2002YerushaOpenRefine.properties so all the information is ingested correctly. Be aware that every XML export should be uploaded to the right institution, so 27 import tasks should be performed.