#!/bin/sh
# This runs a container in default mode. Note that this expects that the sieglstefan/introscope-em already is started. If you can you should rather use docker-compose (there are some scripts at top level).

docker run -d --name introscope-sample -p 8888:8888 -p 8099:8099 --link introscope-em:em stefansiegl/introscope-sample
