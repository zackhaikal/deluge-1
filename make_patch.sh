#!/bin/bash
XIRVIK_PATH="/home/orion/projects/rentacoder/xirvik"
git diff deluge-1.3.1 HEAD > ${XIRVIK_PATH}/patches-deluge/deluge.patch
( cd deluge/ui/web; bash build js/deluge-all )
( cd deluge/ui/web; bash build js/ext-extensions )
tar -czvf ${XIRVIK_PATH}/js-deluge/deluge-all.tar.gz \
    deluge/ui/web/js/deluge-all.js \
    deluge/ui/web/js/deluge-all-debug.js \
    deluge/ui/web/js/ext-extensions.js \
    deluge/ui/web/js/ext-extensions-debug.js