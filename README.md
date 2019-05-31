# MAKA
maka is a tiny UEFI application written in Rust.  
In the future, maka will be a bootloader for my own OS.

# Usage
```
make run

Shell> map
Mapping table
      FS0: Alias(s):HD0a65535a1:;BLK1:
          PciRoot(0x0)/Pci(0x1F,0x2)/Sata(0x0,0xFFFF,0x0)/HD(1,MBR,0xBE1AFDFA,0x3F,0xFBFC1)
     BLK0: Alias(s):
          PciRoot(0x0)/Pci(0x1F,0x2)/Sata(0x0,0xFFFF,0x0)
Shell> fs0:
Shell> fs0: maka.efi
```

# References
https://github.com/garasubo/uefi-practice
