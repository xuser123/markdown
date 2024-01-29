1. `mount /dev/sda1 /mnt`
2. mount partitions
```bash
mount --bind /dev /mnt/dev
mount --bind /proc /mnt/proc
mount --bind /sys /mnt/sys
```
3. `chroot /mnt`
4. `passwd root`
5. `umount -a && umount /mnt/proc`

BTRFS:
- `mount -o subvol=@ /dev/sda1 /mnt`
- Check: `sudo btrfs subvolume list /mnt