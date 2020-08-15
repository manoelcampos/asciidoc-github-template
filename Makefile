all:
	@#Compila o README para um ebook HTML
	asciidoctor README.adoc -o ebook.html

ebook:
	@#Compila o README para um ebook em PDF
	asciidoctor-pdf -a doctype=book README.adoc -o ebook.pdf

slides:
	@#Compila o README o formato de slides em HTML
	asciidoctor-revealjs README.adoc -o apresentacao.html

clean:
	@#Apaga os arquivos gerados pelos comandos acima
	rm -f ebook.html apresentacao.html ebook.pdf
