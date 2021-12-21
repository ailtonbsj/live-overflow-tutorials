# Some utils commands

```bash
# Run ssh without execute .bashrc or .profile
ssh user@host -p 22 /bin/bash

# See diference between files
diff file.old file.new

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
