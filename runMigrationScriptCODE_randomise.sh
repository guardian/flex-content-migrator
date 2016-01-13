#!/bin/bash
echo off

#CODE
BATCH_SIZE=${BATCH_SIZE:-5}
NUMBER_OF_BATCHES=1

#Chatterbox tag
TAGIDS=${TAGIDS:-28099}

PREFIX="http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article?tagIds=$TAGIDS&batchSize=$BATCH_SIZE"

echo "Migrating content to $PREFIX"

TIMESTAMP="$(date +"%s")"
OUTPUT_PATH=~/.migration/output/CODE/$TIMESTAMP
mkdir -p ~/.migration/output/CODE
mkdir $OUTPUT_PATH
echo "Results in $OUTPUT_PATH"

#Perform the migration batches and collect the results

 for i in `seq 1 $NUMBER_OF_BATCHES`;
        do
	    RANDOM_NUMBER=$(( ( RANDOM % 100 )  + 1 ))
	    URL="$PREFIX&batchNumber=$RANDOM_NUMBER"

		echo migrating batch $i with $BATCH_SIZE content items : $URL
            BATCH_RESULTS=$OUTPUT_PATH/batch$i.txt
            curl -X POST $URL > $BATCH_RESULTS
            echo "results for batch $i in $BATCH_RESULTS"
            sleep 0.3
        done


#Analyse the files to see if any had failures
EXPECTED_BATCH_RESULT="Batch Success Audios = $BATCH_SIZE, Failed Audios = 0"
echo ""
echo "Problem batches..."

grep -L "$EXPECTED_BATCH_RESULT" $OUTPUT_PATH/batch*.txt
