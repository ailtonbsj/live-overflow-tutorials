# Simple Tools and Techniques for Reversing a binary

```bash
# Trace system calls
strace a.out

# Trace library calls
ltrace a.out

# Install radare2 tool
git clone https://github.com/radareorg/radare2
radare2/sys/install.sh

# Open binary with radare2
r2 a.out

# Debug binary with radare2
r2 -d a.out
```

## Radare2 commands

```bash
# Automatic analyse and autoname function
> aaa

# print all functions
> afl

# change location to main
> s sym.main

# disasm code
> pdf

# show visual blocks
> VV

# Add Breakpoint
> db 0x0000001

# Run progam on radare2 debugger
> ood "ARGS"
> dc
```

## References

[Radare2](https://github.com/radareorg/radare2)