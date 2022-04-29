CODE=Processing.mot
DOC=SampleDocument
MOTMOT=Motmot -load-cache

.PHONY: clean run
run: $(DOC).basic.md $(DOC).cached.md $(DOC).custom.md

$(DOC).basic.md: $(CODE) $(DOC).txt.mot
	$(MOTMOT) -file $(CODE) -exp 'basic-processing ()'

$(DOC).cached.md: $(CODE) $(DOC).txt.mot
	$(MOTMOT) -file $(CODE) -exp 'cached-processing ()'

$(DOC).custom.md: $(CODE) $(DOC).txt.mot
	$(MOTMOT) -file $(CODE) -exp 'custom-processing ()'

clean:
	rm -f *.md *.cache
