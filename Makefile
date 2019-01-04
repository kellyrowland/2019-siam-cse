all: slides

slides:
		@pdflatex 2019-siam-cse
		@biber 2019-siam-cse
		@pdflatex 2019-siam-cse
		@pdflatex 2019-siam-cse

clean:
	@rm -f *.aux \
					 *.bbl \
					 *.bcf \
					 *.blg \
					 *.dvi \
					 *.lof \
					 *.log \
					 *.lot \
					 *.nav \
					 *.out \
					 *.snm \
					 *.toc \
				 *.run.xml

current_dir = $(shell pwd)

dock:
	@docker pull kellyrowland/docker-texlive
	@docker run -v $(current_dir):/doc/ \
  -t -i kellyrowland/docker-texlive

dock-local:
	@docker run -v $(current_dir):/doc/ \
  -t -i kellyrowland/docker-texlive
