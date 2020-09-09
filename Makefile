.PHONY: all
all: build/synthetic-bundle.bvp
	bin/packer

build/synthetic-bundle.bvp:
	mkdir -p build
	tar xzf data-generator/synthetic-bundle.tar.gz -C build

.PHONY: clean
clean:
	rm -rf build

.PHONY: watch
watch:
	bin/watcher bin/packer src
