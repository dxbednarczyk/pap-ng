PREFIX = $(HOME)/.local

build:
	cargo build

build-release:
	cargo build --release

install: target/release/pap
	mkdir -p $(PREFIX)/bin
	mv target/release/pap $(PREFIX)/bin
	chmod +x $(PREFIX)/bin/pap*

install-testing: target/debug/pap
	mkdir -p $(PREFIX)/bin
	mv target/debug/pap $(PREFIX)/bin
	chmod +x $(PREFIX)/bin/pap*

lint:
	cargo fmt
	cargo clippy --all -- -D warnings