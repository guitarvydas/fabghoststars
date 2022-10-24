all: repos run


install: repos npmstuff

repos:
	multigit -r

npmstuff:
	npm install ohm-js yargs atob pako

run: 
	./fab/fab src.txt GhostStars grammar.ohm fabricate.fmt

runlisp:
	./fab/fab src.txt GhostStars grammar.ohm lispfabricate.fmt
