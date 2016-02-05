#Flex Content Migrator
-----------------------

This system is used to migration content from R2 in to Flex

## Background

The remaining content type to migrate is quizzes

Here is a useful video explaining the code, the project and some other bits:
https://drive.google.com/a/guardian.co.uk/file/d/0B771Q-oAsK-GTERhaW1SOXNHMU0/view?usp=sharing


## Useful URLs

R2 content to migrate:          `curl "cms.guprod.gnl/tools/newspaperintegration/migration/quizzes-to-migrate?tagIds=${tagId1,tagId2}"`
R2 migrated content:            `curl "cms.guprod.gnl/tools/newspaperintegration/migration/recent-migrations?contentType=article&howMany=30000"`  
R2 content requiring re-sync:   `curl cms.guprod.gnl/tools/newspaperintegration/migration/content-to-resync`


##
PLease resolve the following issue in the quiz builder before being able to migrate quizzes
https://github.com/guardian/ten-four_quiz-builder/issues/414


## Migrations

### To Migrate Quizzes Into Flex

Single

local:  `curl -X POST "http://localhost:9100/migrate/quiz/${quizId}"`

code:   `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/quiz/${quizId}"`

prod:   same as code but use `flexcontentmigrator.gutools.co.uk`

Batch

local:  `curl -X POST "http://localhost:9100/migrate/quiz?batchNumber=${batchNumber}&batchSize=${batchSize}"`

code:   `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/quiz?batchNumber=${batchNumber}&batchSize=${batchSize}"`

prod:   same as code but use `flexcontentmigrator.gutools.co.uk`


There is a helper script called `runMigrationScriptPROD_randomise.sh` to perform larger migrations.
This migrates batches of a set size. It randomises which batch to migrate to prevent error quizzes blocking progress.
Since the number of quizzes in the system is small, this is probably not needed and can be ignored.

### To Resync R2 

Sometimes R2 struggles to keep up with the migration messages and the content ends up out of sync in R2
This will result in the R2 headline being wrong, among other things.
Generally about 5% of the content migrated will experience this issue
This issue can be seen in certain R2 rendered pages e.g. http://www.theguardian.com/world/americas/roundup

Therefore after a migration your should run the resync report.

`curl cms.guprod.gnl/tools/newspaperintegration/migration/content-to-resync`

This will generate a list of composer content IDs that should re-issue a message to R2.

Once you have the list, SSH on to one of the Flex API boxes (run `prism flex api AWS-PROD`) and run the following 2 commands for each item in the list.
(note: the sleep is to ensure you do not produce too much traffic against the API)

```
curl -I -X POST "localhost:8080/contentReSync/${flexContentId}"`
sleep 0.5
```

In my experience the out of sync content in R2 will represent about 10% of the migration traffic.
Since quizzes is aprox 3000 items, one can expect this to be aprox 300 items.





