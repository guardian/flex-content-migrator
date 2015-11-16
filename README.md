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

### To Migrate Galleries Into Flex

####Single

local: `curl -X POST "http://localhost:9100/migrate/gallery/${galleryId}"`

code: `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/gallery/${galleryId}"`

####Batch

local: `curl -X POST "http://localhost:9100/migrate/gallery?batchNumber=${batchNumber}&batchSize=${batchSize}"`

code: `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/gallery?batchNumber=${batchNumber}&batchSize=${batchSize}"`


### To Migrate Cartoons Into Flex

####Single

local: `curl -X POST "http://localhost:9100/migrate/cartoon/${cartoonId}"`

code: `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/cartoon/${cartoonId}"`

####Batch

local: `curl -X POST "http://localhost:9100/migrate/cartoon?batchNumber=${batchNumber}&batchSize=${batchSize}"`

code:   `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/cartoon?batchNumber=${batchNumber}&batchSize=${batchSize}"`


### To Migrate Quizzes Into Flex

####Single

local: `curl -X POST "http://localhost:9100/migrate/quiz/${quizId}"`

code: `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/quiz/${quizId}"`

####Batch

local: `curl -X POST "http://localhost:9100/migrate/quiz?batchNumber=${batchNumber}&batchSize=${batchSize}"`

code:   `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/quiz?batchNumber=${batchNumber}&batchSize=${batchSize}"`


### To Migrate Audios Into Flex

####Single

local: `curl -X POST "http://localhost:9100/migrate/audio/${audio}"`

code: `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/audio/${audioId}"`

####Batch

local: `curl -X POST "http://localhost:9100/migrate/audio?batchNumber=${batchNumber}&batchSize=${batchSize}"`

code:   `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/audio?batchNumber=${batchNumber}&batchSize=${batchSize}"`


### To Migrate Articles Into Flex

####Single

local: `curl -X POST "http://localhost:9100/migrate/article/${articleId}"`

code: `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/${articleId}"`

####Batch

local: `curl -X POST "http://localhost:9100/migrate/article?batchNumber=${batchNumber}&batchSize=${batchSize}"`

code:   `curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article?batchNumber=${batchNumber}&batchSize=${batchSize}"`