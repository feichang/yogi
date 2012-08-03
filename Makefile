all:
	npm install

help:
	./bin/yogi.js --help | tail -n+6 | sed -e 's/^[ \t]*//' > ./conf/docs/partials/help.mustache

docs: help
	./node_modules/.bin/selleck --project conf/docs/ ./docs/ --output ./output

lint:
	npm run-script pretest

test:
	npm test

.PHONY: lint test docs help
