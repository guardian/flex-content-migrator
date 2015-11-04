#!/bin/bash
echo off

#PROD
PREFIX="http://flexcontentmigrator.gutools.co.uk/migrate/cartoon"

read -p "Press [Enter] key to start PROD migration..."


BATCH_SIZE=5
NUMBER_OF_BATCHES=2000


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
	    RANDOM_NUMBER=$(( ( RANDOM % 1000 )  + 1 ))
	    URL="$PREFIX?batchSize=$BATCH_SIZE&batchNumber=$RANDOM_NUMBER"
          
		echo migrating batch $i with $BATCH_SIZE videos
            BATCH_RESULTS=$OUTPUT_PATH/batch$i.txt
            curl -X POST $URL > $BATCH_RESULTS
            echo "results for batch $i in $BATCH_RESULTS"
            sleep 1
        done    


#Analyse the files to see if any had failures
EXPECTED_BATCH_RESULT="Batch Success Galleries = $BATCH_SIZE, Failed Galleries = 0"
echo ""
echo "Problem batches..."

grep -L "$EXPECTED_BATCH_RESULT" $OUTPUT_PATH/batch*.txt

 
