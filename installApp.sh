#!/bin/bash
yum install -y rsyslog 
yum install -y policycoreutils
yum install -y aide
yum install -y openssl-pkcs11
yum install -y opensc
yum install -y audit
yum install -y rsyslog-gnutls
yum install -y firewalld.noarch
yum install -y fapolicyd.x86_64
yum install rng-tools