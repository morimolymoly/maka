build:
	cargo xbuild --target x86_64-unknown-uefi

run: build
	./qemu-run.sh
