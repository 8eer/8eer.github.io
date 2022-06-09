all:
	npx tailwindcss -i ./src/source.css -o ./dist/output.css

loop:
	npx tailwindcss -i ./src/source.css -o ./dist/output.css --watch

release: 
	rm release/ -rf
	npx tailwindcss -i ./src/source.css -o ./dist/output.css
	mkdir release
	cp -a * release/
	rm release/tailwind.config.js
	rm release/src --rf
	rm release/Makefile

compile:
	npx tailwindcss -i ./src/source.css -o ./dist/output.css
