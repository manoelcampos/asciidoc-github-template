all:
	asciidoctor README.adoc

slides:
	asciidoctor-revealjs README.adoc -o apresentacao.html
