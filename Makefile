html:
	pandoc --standalone -c style.css --from markdown --to html -o resume.html resume.md

docx:
	pandoc --from markdown --to docx -o resume.docx resume.md

txt:
	pandoc --standalone --from markdown-smart --to plain -o resume.txt resume.md

pdf: 
	pandoc --standalone --template style.tex \
			--from markdown --to context \
			--variable papersize=A4 \
			--output resume.tex resume.md > /dev/null; \
		mtxrun --result=resume.pdf --script context resume.tex > context_resume.log 2>&1

rtf:
	pandoc --standalone --from markdown-smart resume.md --output resume.rtf
