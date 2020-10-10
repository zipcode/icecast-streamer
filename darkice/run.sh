#!/bin/bash
cat /etc/darkice.cfg.template | sed "s/\$ICECAST_SOURCE_PASSWORD/$ICECAST_SOURCE_PASSWORD/" > /etc/darkice.cfg
exec darkice -v 3
