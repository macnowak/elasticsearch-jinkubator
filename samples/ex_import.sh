#!/bin/bash

SCRIPTDIR=$(dirname "$0")

deleteIndex () {
    echo -e "\n deleting index : ex"$1
    curl -XDELETE http://localhost:9200/ex$1
}

addData () {
    echo -e "\n adding data : ex"$1
    curl -H "Content-Type: application/x-ndjson" -s -XPOST http://localhost:9200/ex$1/party/_bulk --data-binary "@"$SCRIPTDIR"/ex"$1".json"
}

addMapping () {
    echo -e "\n adding mappings: ex"$1
    curl -H "Content-Type: application/json" -XPUT http://localhost:9200/ex$1 -d "@"$SCRIPTDIR"/ex"$1"_mapping.json"
}



#clean up everything

for i in 1 2 3 4 5
do
	deleteIndex $i
done

# add default data without mappings

addData 1


# add data with mappings
for i in 2 3 4 5
do
	addMapping $i
    addData $i
done



