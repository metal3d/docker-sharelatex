FROM sharelatex/sharelatex

RUN sed -i 's/pdflatex -synctex=1/pdflatex -synctex=1 -shell-escape/' /var/www/sharelatex/clsi/app/js/LatexRunner.js                                                   
RUN tlmgr install scheme-full --no-persistent-downloads --repository http://ftp.oleane.net/pub/CTAN/systems/texlive/tlnet
