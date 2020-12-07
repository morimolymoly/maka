#!/bin/sh

OVMF_CODE=./OVMF_CODE.fd
OVMF_VARS=./OVMF_VARS.fd
BUILD_DIR=$(pwd)/target/x86_64-unknown-uefi/debug
MNT_ROOT=./mnt
EFI_DIR=$MNT_ROOT/EFI/boot

mkdir -p $EFI_DIR
cp $BUILD_DIR/maka.efi $EFI_DIR/bootx64.efi

qemu-system-x86_64 \
    -nodefaults \
    -machine q35,accel=kvm:tcg \
    -nographic \
    -m 128M \
    -drive if=pflash,format=raw,file=$OVMF_CODE,readonly=on \
    -drive if=pflash,format=raw,file=$OVMF_VARS,readonly=on \
    -drive format=raw,file=fat:rw:$MNT_ROOT \
    -serial stdio \
