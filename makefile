default:
	cargo build --release

run:
	cargo build && echo -e '1\n2\n3\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111' | target/debug/dmenu-rs

reference:
	echo -e '1\n2\n311111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111\n11111' | dmenu -p "Prompt:"

debug:
	cargo build && echo -e '1\n2\n3' | valgrind -v target/debug/dmenu-rs

gdb:
	rust-gdb target/debug/dmenu-rs
