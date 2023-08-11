all: run

install: npmstuff

npmstuff:
	npm install ohm-js yargs atob pako

run: 
	./fab grammar.ohm fabricate.fab <src.txt

runlisp:
	./fab grammar.ohm lispfabricate.fab <src.txt
