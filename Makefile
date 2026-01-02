MOTMOT=Motmot
TANAGER=Tanager

.PHONY: test
test: motmot tanager

.PHONY: motmot
motmot:
	git ls-tree -r master --name-only | \
	$(MOTMOT) -string-delim % -pipe 'List.filter ((_ ~= %[.]mot#{String.dollar}%) and^ (_ ~/= %[.]txt[.]mot#{String.dollar}%)) >> List.map (%-file % # _) >> String.concat-words >> (%$(MOTMOT) % # _)'  | \
	sh

.PHONY: tanager
tanager:
	git ls-tree -r master --name-only | \
	$(MOTMOT) -string-delim % -pipe 'List.filter (_ ~= %[.]t5#{String.dollar}%) >> List.map (%$(TANAGER) -s ErrorsFatal -s Pedantic -batch -c % # _) >> List.join % && %' | \
	sh
