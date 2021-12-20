# Some utils commands

```bash
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
