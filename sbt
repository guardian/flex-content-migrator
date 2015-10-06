#!/bin/bash

SBT_BOOT_DIR=$HOME/.sbt/boot/

if [ ! -d "$SBT_BOOT_DIR" ]; then
  mkdir -p $SBT_BOOT_DIR
fi

# echo "extra params: $SBT_EXTRA_PARAMS"

java -Dfile.encoding=UTF8 -Xmx2048M -XX:MaxPermSize=768m -XX:ReservedCodeCacheSize=128m \
        -XX:+CMSClassUnloadingEnabled -XX:+UseCompressedOops \
        -Dcache.bust.id=DEV \
        $SBT_EXTRA_PARAMS \
        -Dsbt.boot.directory=$SBT_BOOT_DIR \
        -jar `dirname $0`/sbt-launch.jar "$@"
