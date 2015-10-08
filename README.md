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

code: --TODO: dns for code env

####Batch

local: `curl -X POST "http://localhost:9100/migrate/gallery?batchNumber=${batchNumber}&batchSize=${batchSize}"`

code:   --TODO: dns for code env


