#!/usr/bin/env bash
echo off

#PROD

## Variables
COLD_START=false                                    # Set this true to ignore the most recently migrated article and start for the lowest articles again
BATCH_SIZE=${BATCH_SIZE:-15}                        # NO BIGGER THAN 30
NUMBER_OF_BATCHES=${NUMBER_OF_BATCHES:-200}
SLEEP_TIME=${SLEEP_TIME:-1}
PREFIX="http://flexcontentmigrator.gutools.co.uk/migrate/article?batchSize=$BATCH_SIZE"
HIGHEST_ATTEMPTED=0                                 # This will be set later on and maintained by the script as it runs


setHighestAttemptedIdFromTempFile(){
    HIGHEST_ATTEMPTED=$(grep "Highest Attempted Id: " temp.txt | sed "s/^Highest Attempted Id: //" );
    echo "HIGHEST_ATTEMPTED is now $HIGHEST_ATTEMPTED"
}

bootstrapHighestAttemptedId(){
    if $COLD_START
    then {
        echo "Cold start";
        HIGHEST_ATTEMPTED=0;
    }
    else {
        echo "Warm start";
        # Bootstrap by CURLing the most recent article we manged to migrate in R2, we will start from there.
        # This means we might retry a (small) number of previously failed articles at startup.
        LastMigrated=$(curl "http://cms.guprod.gnl/tools/newspaperintegration/migration/last-migrated?content-type=article")
        echo "Highest Attempted Id: $LastMigrated" > temp.txt
        setHighestAttemptedIdFromTempFile
    }
    fi;
}

bootstrapHighestAttemptedId
echo PARMS: BATCH_SIZE=$BATCH_SIZE NUMBER_OF_BATCHES=$NUMBER_OF_BATCHES RANDOM_FACTOR=$RANDOM_FACTOR SLEEP_TIME=$SLEEP_TIME MIN_BATCH_NUMBER=$MIN_BATCH_NUMBER HIGHEST_ATTEMPTED=$HIGHEST_ATTEMPTED
read -p "Press [Enter] key to start **PROD** migration (restartable straight sequence)..."


echo "Migrating content to $PREFIX"

TIMESTAMP="$(date +"%s")"
OUTPUT_PATH=~/.migration/output/PROD/$TIMESTAMP
mkdir -p $OUTPUT_PATH
echo "Results in $OUTPUT_PATH"

#Perform the migration batches and collect the results

 for i in `seq 1 $NUMBER_OF_BATCHES`;
        do
	        URL="$PREFIX&withIdHigherThan=$HIGHEST_ATTEMPTED"
            BATCH_RESULTS=$OUTPUT_PATH/batch$i.txt

            echo migrating batch $i with $BATCH_SIZE content items : $URL
            curl -X POST $URL > temp.txt
            setHighestAttemptedIdFromTempFile

            #copy the results somewhere useful
            cp temp.txt $BATCH_RESULTS
            echo "results for batch $i in $BATCH_RESULTS"
            sleep $SLEEP_TIME

        done


#Analyse the files to see if any had failures
EXPECTED_BATCH_RESULT="Batch Success Articles = $BATCH_SIZE, Failed Articles = 0"
echo ""
echo "Problem batches..."

grep -L "$EXPECTED_BATCH_RESULT" $OUTPUT_PATH/batch*.txt









