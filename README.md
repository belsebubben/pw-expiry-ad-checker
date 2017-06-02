# pw-expiry-ad-checker
made for when you are in a windows enterprise environment and want an easy way
to monitor when password for you **AD account** expires
meant to be used on cli or with systemd time / crond

### TODO
- [x] Makefile
- [x] Systemd time unit / crond entry

## Dependencies
1. python 3.5+ 
2. python3-gobject-base	https://wiki.gnome.org/Projects/PyGObject
3. python3-ldap3		https://github.com/cannatag/ldap3

## Install on linux
1. install dependencies
2. create a password (credentials file, we dont want to provide this on the command line)
3. Edit the ``pw-expiry-ad-checker.conf`` all the needed settings
4. Edit the ``pw-expiry-ad-checker.timer`` so that it fits your time requirements
5. make install

## Usage
Usage: ./pw-expiry-ad-checker is meant to be used on *nix machines and for those who need notifications before the AD account expires

example usage:

python3 % -b email.address@domain.com -s dc01.ad.domain.com -S 'DC=ad,DC=domain,DC=com' -d -u johndoe1 -p secretpassword

!! preferrably use the config file for options as to not give away secrets in
the process tree. Also do not store secrets on an unencrypted disk

Warn n days before password expire in ad, use gnome notification for this

Options:
  --version             show program's version number and exit
  -h, --help            show this help message and exit
  -b BIND, --bind=BIND  Bind dn (authentication) DN or mailaddress (AD)
  -s SERVER, --server=SERVER
                        Name of server to connect to (fqdn)
  -S SEARCH, --search=SEARCH
                        Search base RDN ("DC=ad,DC=company,DC=com")
  -u UID, --uid=UID     uid (user id in ad i.e joco02 also sAMAccountName in
                        AD)
  -p PASSWORD, --password=PASSWORD
                        ad password
  -c CONFIG, --config-file=CONFIG
                        path to credentials file (contents should be
                        option=value)
  -w WARN, --warn=WARN  number of days to warn before password expires
  -d, --debug           Enable debugging
