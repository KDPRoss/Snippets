MOTMOT=Motmot
TANAGER=Tanager

.PHONY: test
test: motmot tanager

.PHONY: motmot
motmot:
	git ls-tree -r master --name-only | \
	$(MOTMOT) -string-delim % -pipe 'filter ((_ ~= %[.]mot#{dollar}%) and^ (_ ~/= %[.]txt[.]mot#{dollar}%)) >> map (%-file % # _) >> concat-words >> (%$(MOTMOT) % # _)'  | \
	sh

.PHONY: tanager
tanager:
	git ls-tree -r master --name-only | \
	$(MOTMOT) -string-delim % -pipe 'filter (_ ~= %[.]t5#{dollar}%) >> map (%$(TANAGER) -s ErrorsFatal -s Pedantic -batch -c % # _) >> join % && %' | \
	sh
