#!/bin/bash
echo off

PREFIX="http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article"


BATCH_SIZE=10
NUMBER_OF_BATCHES=100


URL="$PREFIX?batchSize=$BATCH_SIZE&batchNumber=5"
echo "Migrating content to $URL"

TIMESTAMP="$(date +"%s")"
OUTPUT_PATH=./migrationOutput/$TIMESTAMP
mkdir ./migrationOutput
mkdir $OUTPUT_PATH
echo "Results in $OUTPUT_PATH"

#Perform the migration batches and collect the results

 for i in `seq 1 $NUMBER_OF_BATCHES`;
        do
            echo migrating batch $i with $BATCH_SIZE videos
            BATCH_RESULTS=$OUTPUT_PATH/batch$i.txt
            curl -X POST $URL > $BATCH_RESULTS
            echo "results for batch $i in $BATCH_RESULTS"
            sleep 0.5
        done    


#Analyse the files to see if any had failures
EXPECTED_BATCH_RESULT="Batch Success Galleries = $BATCH_SIZE, Failed Galleries = 0"
echo ""
echo "Problem batches..."

grep -L "$EXPECTED_BATCH_RESULT" $OUTPUT_PATH/batch*.txt

 
