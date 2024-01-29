1. **POST** Bios- ( Power On Selftest )
2. **UEFI** ( Unified Extensible Firmware Interface ) 
3. `boot.img` " Stufe 1 " 
	- **GPT** ( -Header ) / **MBR** ( Master Boot Record ) 
	- **Partition Entry Array** 
4. `core.img` " Stufe 1.5 "
6. **Grub Bootloader** `/boot/efi` vfat,fat32
	- `/boot/grub2`

 User Infos : `/etc/default/grub`
 Encrypted PWs : `/etc/grub.d`