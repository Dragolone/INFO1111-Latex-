filename=INFO1111_Group_Project_CC25-2
bibfile=main.bib

pdf: ${filename}.pdf
	echo
	echo "PDF files now up to date"

${filename}.pdf: ${filename}.tex ${bibfile}
	pdflatex ${filename}
	bibtex ${filename}||true
	pdflatex ${filename}
	pdflatex ${filename}
	echo
	echo ${filename} "has been updated"
	
${filename}.bib:

${filename}.tex:

clean:
	rm -f ${filename}.{ps,log,aux,out,dvi,bbl,blg,toc}
