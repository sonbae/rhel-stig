#!/bin/bash
systemctl enable rngd.service
systemctl start rngd.service

systemctl enable rsyslog.service
systemctl start rsyslog.service

systemctl disable --now systemd-coredump.socket
systemctl mask systemd-coredump.socket

systemctl stop autofs
systemctl disable autofs