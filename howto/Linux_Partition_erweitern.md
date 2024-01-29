ohne Datenverlust
Partitions-Dateisysteme anzeigen mit `blkid`
- Bei EXT2, EXT3, EXT4 (bspw. um 10GB vergrößern)
		- mit `resize2fs <Optionen> /dev/<Partition> 10G` 
- Bei XFS mit `xfs_growfs <Optionen> /dev/<Partition>`