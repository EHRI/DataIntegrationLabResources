cd $1
csplit -z -b '-%02d.xml' -f $1 $1.xml '/<ead .*>/' '{*}'
cd ..
