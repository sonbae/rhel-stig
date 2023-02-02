#!/bin/bash
# 230223
fips-mode-setup --enable

# 230238
rm -rf /etc/*.keytab

# 230254
fips-mode-setup --enable

# 230264
sed -i 's/gpgcheck\s*=.*/gpgcheck=1/g' /etc/yum.repos.d/*

# 230283
rm /etc/ssh/shosts.equiv

# 230284
find / -name '*.shosts' -type f -exec rm {} \;

# 230506
nmcli radio all off