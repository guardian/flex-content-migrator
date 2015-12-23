#!/bin/bash
echo off


#PROD

BATCH_SIZE=${BATCH_SIZE:-7}                      # NO BIGGER THAN 30
NUMBER_OF_BATCHES=${NUMBER_OF_BATCHES:-200}
TAGIDS=${TAGIDS:-6964}

PREFIX="http://flexcontentmigrator.gutools.co.uk/migrate/article?tagIds=$TAGIDS&batchSize=$BATCH_SIZE"

read -p "Press [Enter] key to start **PROD** migration (straight sequence)..."

echo "Migrating content to $PREFIX"

TIMESTAMP="$(date +"%s")"
OUTPUT_PATH=~/.migration/output/PROD/$TIMESTAMP
mkdir -p $OUTPUT_PATH
echo "Results in $OUTPUT_PATH"

#Perform the migration batches and collect the results

 for i in `seq 1 $NUMBER_OF_BATCHES`;
        do
	        URL="$PREFIX&batchNumber=1"
            echo migrating batch $i with $BATCH_SIZE content items : $URL
            BATCH_RESULTS=$OUTPUT_PATH/batch$i.txt
            curl -X POST $URL > $BATCH_RESULTS
            echo "results for batch $i in $BATCH_RESULTS"
            sleep 0.5
        done


#Analyse the files to see if any had failures
EXPECTED_BATCH_RESULT="Batch Success Articles = $BATCH_SIZE, Failed Articles = 0"
echo ""
echo "Problem batches..."

grep -L "$EXPECTED_BATCH_RESULT" $OUTPUT_PATH/batch*.txt
