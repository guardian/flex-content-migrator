#Flex Content Migrator
-----------------------

This system is used to migration content from R2 in to Flex

## Background

This project is the ancestor of the Flex Video Adapter project (see https://github.com/guardian/flex-video-adapter)

The Flex Video Adapter project performed two functions
- migrate videos from R2 into Flex
- provide a mechanism to Pluto to talk to a single endpoint as we transitions between R2 and Flex for video publishing

This project takes the code from the first of these and modifies / adds to it to support migration of the following content types:
- articles
- audios
- cartoons
- galleries

## Useful URLs

R2 content to migrate:          `curl "cms.guprod.gnl/tools/newspaperintegration/migration/articles-to-migrate?tagIds=${tagId1,tagId2}"`
R2 migrated content:            `curl "cms.guprod.gnl/tools/newspaperintegration/migration/recent-migrations?contentType=article&howMany=30000"`  
R2 content requiring re-sync:   `curl cms.guprod.gnl/tools/newspaperintegration/migration/content-to-resync`

## Migrations

### To Migrate Quizzes Into Flex

Single

local: `curl -X POST "http://localhost:9100/migrate/quiz/${quizId}"`

code: `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/quiz/${quizId}"`

Batch

local: `curl -X POST "http://localhost:9100/migrate/quiz?batchNumber=${batchNumber}&batchSize=${batchSize}"`

code:   `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/quiz?batchNumber=${batchNumber}&batchSize=${batchSize}"`



### To Resync R2 

Sometimes R2 struggles to keep up with the migration messages and the content ends up out of sync in R2
This will result in the R2 headline being wrong, among other things.
Generally about 5% of the content migrated will experience this issue
This issue can be seen in certain R2 rendered pages e.g. http://www.theguardian.com/world/americas/roundup

Therefore after a migration your should run the resync report.

`curl cms.guprod.gnl/tools/newspaperintegration/migration/content-to-resync`

This will generate a list of composer content IDs that should re-issue a message to R2.

Once you have the list, SSH on to one of the Flex API boxes (run `prism flex api`) and run the following 2 commands for each item in the list.
The sleep is to ensure you do not overwhelm the API

```
curl -I -X POST "localhost:8080/contentReSync/${flexContentId}"`
sleep 0.5
```







