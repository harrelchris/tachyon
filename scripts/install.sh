#!/usr/bin/env bash

cp /srv/tachyon/system/speedtest.service /etc/systemd/system/speedtest.service
cp /srv/tachyon/system/speedtest.timer /etc/systemd/system/speedtest.timer

systemctl daemon-reload
systemctl enable speedtest.timer
systemctl start speedtest.timer
