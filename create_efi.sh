#!/bin/bash
function createEfi {
        grub-mkimage -o $1 -p /efi/boot -O $2 \
                fat iso9660 part_gpt part_msdos \
                normal boot linux configfile lspci reboot loopback chain \
                efifwsetup efi_gop efi_uga file \
                ls lvm search search_label search_fs_uuid search_fs_file \
                true cat tar memdisk gzio squash4 xzio scsi usb \
                gfxterm gfxterm_background gfxterm_menu test all_video loadenv \
                exfat ext2 ntfs btrfs cat hfsplus udf multiboot multiboot2 terminal echo
}

createEfi bootia32.efi i386-efi
createEfi bootx64.efi x86_64-efi
