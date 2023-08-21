.PHONY: joosc

joosc:
	unzip -o build/distributions/joosc-1.0-SNAPSHOT.zip -d build

.PHONY: build

build:
	./gradlew assemble
cup:
	java -jar libs/java_cup.jar -nowarn -destdir build/generated/sources/main/cup src/main/cup/PorkCup.cup

log:
	git log > a6.log

excludedirs := src/test/resources .git .idea .gradle build/kotlin build/classes build/generated build/resources build/reports build/test-results bin/*

zip: build joosc log
	rm build/porkbelly.zip ; \
	zip -r -o build/porkbelly.zip . $(shell for dir in $(excludedirs); do echo "-x '*$$dir/*' "; done)

scp: zip
	scp build/porkbelly.zip Waterloo:~/cs444/

marmoset: scp
		ssh Waterloo 'cd cs444 && /u/cs_build/bin/marmoset --username=-dy4liu-dymo-k49sun- submit CS444 "A6 code" porkbelly.zip'

# Rule to build .o files from .s files
output/%.o: output/%.s
	/u/cs444/bin/nasm -O1 -f elf -g -F dwarf -o $@ $<

# Assemble
as: $(patsubst output/%.s,output/%.o,$(wildcard output/*.s))
	ld -melf_i386 -o main output/*.o

test:
	echo $(patsubst output/%.s,output/%.o,$(wildcard output/*.s))
# Run
run: as
	./main; echo "Exit code: $$?"

scp-asm:
	ssh Waterloo 'rm -rf ~/cs444/test-asm/* && mkdir -p ~/cs444/test-asm/output' && \
	scp -r output/*.s Waterloo:~/cs444/test-asm/output/ && \
	scp Makefile Waterloo:~/cs444/test-asm/Makefile

test-asm: scp-asm
	ssh Waterloo 'cd cs444/test-asm && make run'

STDLIBFILES := $(wildcard src/test/resources/6.1/java/**/*.java)

bench:
	./joosc src/test/resources/CustomTest/ConstBench.java $(STDLIBFILES) -opt-const-only && ./main

