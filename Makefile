LATEXMK = latexmk -g -pdf -interaction=nonstopmode

.PHONY: build digital print

build: digital

digital:
	$(LATEXMK) CS_Packet.tex

print:
	$(LATEXMK) -jobname=CS_Packet-print -usepretex="\def\PrintCover{}" CS_Packet.tex
