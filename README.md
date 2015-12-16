#Flex Content Migrator
-----------------------

This system is used to migration content from R2 in to Flex

## Background

This project is the ancestor of the Flex Video Adapter project (see https://github.com/guardian/flex-video-adapter)

The Flex Video Adapter project performed two functions
- migrate videos from R2 into Flex
- provide a mechanism to Pluto to talk to a single endpoint as we transitions between R2 and Flex for video publishing

This project takes the code from the first of these and modifies / adds to it to support migration of the following content types:
- gallery

## Migrations


### To Migrate Articles Into Flex

####Cherry-Pick (single article)

local: `curl -X POST "http://localhost:9100/migrate/article/${articleId}"`

code: `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/${articleId}"`

prod: `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/${articleId}"`

You can also cherry-pick using the browser:

local:  http://localhost:9100/article

code:   http://flexcontentmigrator.code.dev-gutools.co.uk/article

prod:   http://flexcontentmigrator.gutools.co.uk/article

####Single Batch

!It is highly recommended that batches should be no bigger than 30!

local: `curl -X POST "http://localhost:9100/migrate/article?batchNumber=${batchNumber}&batchSize=${batchSize}&tagIds=${tagId1,tagId2}"`

code:   `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article?batchNumber=${batchNumber}&batchSize=${batchSize}&tagIds=${tagId1,tagId2}"`

prod:   `curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article?batchNumber=${batchNumber}&batchSize=${batchSize}&tagIds=${tagId1,tagId2}"`

####Multi Batch

There are two scripts that will both run a set number of batches (a multi batch) on your machine.

runMigrationScriptPROD_randomise.sh     : runs a set number of batches in a random sequence
runMigrationScriptPROD.sh               : runs a set number of batches in straight sequence

The random sequence is useful if there is some content that will not migrate - it avoids repeatedly re-trying the same content
Both of these script files log their output to a directory ./migrationOutput



### Previous Migrations

#### To Migrate Galleries Into Flex

Single

local: `curl -X POST "http://localhost:9100/migrate/gallery/${galleryId}"`

code: `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/gallery/${galleryId}"`

Batch

local: `curl -X POST "http://localhost:9100/migrate/gallery?batchNumber=${batchNumber}&batchSize=${batchSize}"`

code: `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/gallery?batchNumber=${batchNumber}&batchSize=${batchSize}"`


#### To Migrate Cartoons Into Flex

Single

local: `curl -X POST "http://localhost:9100/migrate/cartoon/${cartoonId}"`

code: `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/cartoon/${cartoonId}"`

Batch

local: `curl -X POST "http://localhost:9100/migrate/cartoon?batchNumber=${batchNumber}&batchSize=${batchSize}"`

code:   `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/cartoon?batchNumber=${batchNumber}&batchSize=${batchSize}"`


#### To Migrate Quizzes Into Flex

Single

local: `curl -X POST "http://localhost:9100/migrate/quiz/${quizId}"`

code: `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/quiz/${quizId}"`

Batch

local: `curl -X POST "http://localhost:9100/migrate/quiz?batchNumber=${batchNumber}&batchSize=${batchSize}"`

code:   `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/quiz?batchNumber=${batchNumber}&batchSize=${batchSize}"`


#### To Migrate Audios Into Flex

Single

local: `curl -X POST "http://localhost:9100/migrate/audio/${audio}"`

code: `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/audio/${audioId}"`

Batch

local: `curl -X POST "http://localhost:9100/migrate/audio?batchNumber=${batchNumber}&batchSize=${batchSize}"`

code:   `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/audio?batchNumber=${batchNumber}&batchSize=${batchSize}"`

