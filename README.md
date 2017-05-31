# pw-expiry-ad-checker
made for when you are in a windows enterprise environment and want an easy way
to monitor when password for you **AD account** expires
meant to be used on cli or with systemd time / crond

### TODO
- [ ] Makefile
- [ ] Systemd time unit / crond entry

## Install on linux
1. install python 3
2. install dependencies :) 
3. create an password (credentials file, we dont want to provide this on the command line)
3. run

## Usage
Usage: pw-expiry-ad-checker is meant to be used on *nix machines and for those who need notifications before the AD account expires
example usage:
python3 % -b email.address@domain.com -s dc01.ad.domain.com -S 'DC=ad,DC=domain,DC=com' -d -u johndoe1


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
  -c CREDENTIALS, --credfile=CREDENTIALS
                        path to credentials file (contents should be
                        password=changeme)
  -w WARN, --warn=WARN  number of days to warn before password expires
  -d, --debug           Enable debugging

