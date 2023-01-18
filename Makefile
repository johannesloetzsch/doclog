.PHONY: gen-docs-scryer
gen-docs-scryer:
	bash doclog.sh scryer.config.pl

.PHONY: clean
clean:
	rm -rf output

.PHONY: upload
upload:
	netlify deploy --prod

.PHONY: setup
setup:
	git clone --depth 1 --branch v1.0.1 https://github.com/aarroyoc/teruel
	git clone --depth 1 --branch v1.0.2 https://github.com/aarroyoc/marquete
	git clone --depth 1 --branch v0.1.3 https://github.com/aarroyoc/djota

.PHONY: test
test:
	bash doclog.sh scryer-test.config.pl
