#!/bin/bash
chmod 0640 /var/log/messages
chown root /var/log/messages
chgrp root /var/log/messages

chmod 0755 /var/log
chown root /var/log
chgrp root /var/log

find -L /bin /sbin /usr/bin /usr/sbin /usr/local/bin /usr/local/sbin -perm /022 -type f -exec chmod 755 {} \;
find -L /bin /sbin /usr/bin /usr/sbin /usr/local/bin /usr/local/sbin ! -user root -type f -exec chown root {} \;
find -L /bin /sbin /usr/bin /usr/sbin /usr/local/bin /usr/local/sbin ! -group root -type f -exec chgrp root {} \;

find -L /lib /lib64 /usr/lib /usr/lib64 -perm /022 -type f -exec chmod 755 {} \;
find -L /lib /lib64 /usr/lib /usr/lib64 ! -user root -type f -exec chown root {} \;
find -L /lib /lib64 /usr/lib /usr/lib64 ! -group root -type f -exec chgrp root {} \;

find -L /lib /lib64 /usr/lib /usr/lib64 -perm /022 -type d -exec chmod 755 {} \;
find -L /lib /lib64 /usr/lib /usr/lib64 ! -user root -type d -exec chown root {} \;
find -L /lib /lib64 /usr/lib /usr/lib64 ! -group root -type d -exec chgrp root {} \;

chmod 0644 /etc/ssh/*key.pub
chmod 0600 /etc/ssh/ssh_host*key

chown root /var/log/audit/audit.log

chmod 0700 /var/log/audit
chown root /var/log/audit
chgrp root /var/log/audit

chmod 0640 /etc/audit/audit.rules
chmod 0640 /etc/audit/auditd.conf
chmod -R 0640 /etc/audit/rules.d/*

chmod 0755 /sbin/auditctl /sbin/aureport /sbin/ausearch /sbin/autrace /sbin/auditd /sbin/rsyslogd /sbin/augenrules
chown root /sbin/auditctl /sbin/aureport /sbin/ausearch /sbin/autrace /sbin/auditd /sbin/rsyslogd /sbin/augenrules
chgrp root /sbin/auditctl /sbin/aureport /sbin/ausearch /sbin/autrace /sbin/auditd /sbin/rsyslogd /sbin/augenrules
