ODIN_FLAGS ?= -debug -o:none

all: run

install: npmstuff

npmstuff:
	npm install ohm-js yargs atob pako

run: 
	odin build . $(ODIN_FLAGS)
	./fabghoststars

dev:
	./transpile 0<src.txt 3<grammar.ohm 4<fabricate.fab 5<support.js 
