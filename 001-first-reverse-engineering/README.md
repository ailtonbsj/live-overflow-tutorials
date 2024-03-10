# First reverse engineering

```bash
# Compile C program with all protection disabled
echo 0 | sudo tee /proc/sys/kernel/randomize_va_space
gcc license.c -fno-stack-protector -z execstack -no-pie

# Debug program with gdb
gdb a.out

# show asm on executable file
objdump -d a.out
objdump -x a.out
```

## GDB commands

```bash
# Set intel sintax
(gdb) set disassembly-flavor intel

# Disassemble program
(gdb) disass main
(gdb) disass foo_function

# Add breakpoint on gdb
(gdb) break *main
(gdb) break *0x000000001

# Run program
(gdb) run

# Run step by step
(gdb) si
(gdb) ni
(gdb) continue

# Show registers
(gdb) info registers

# Set value of register
(gdb) set $eax=0

# Print value on memory
(gdb) x/s 0x00000001
```

## Extra commands for others linux

```bash
# Set limit of core dump as unlimited and show
ulimit -S -c unlimited
ulimit -c

# OR set limit of core dump permanently
sudo vi /etc/security/limits.conf
# * soft core unlimited

# Open core dump with gdb
gdb ./app /var/lib/apport/coredump/core._path_to_app.whatever
```
