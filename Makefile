FILEPATH=/Applications/NeteaseMusic.app/Contents/MacOS
FILENAME=NeteaseMusic
SRCFILE=main.m
DYLIBFILE=m163pwd.dylib

build::
	mkdir -p dist
	clang -dynamiclib ./${SRCFILE} -fobjc-link-runtime -current_version 1.0 -compatibility_version 1.0 -o ./dist/${DYLIBFILE}

debug::
	make clean
	make build
	DYLD_INSERT_LIBRARIES=./dist/${DYLIBFILE} ${FILEPATH}/${FILENAME} &

clean::
	rm -rf ./dist