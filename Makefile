
TEX			=	main.tex
CFG			=	simple.cfg
BUILDDIR	=	docs
JOB      	= 	index
CSS			=	style.css

.PHONY:	all build clean

all: build

clean:
	make4ht -m clean -j $(JOB) ./$(TEX)
	rm -rf $(JOB).idx

build: 
	make4ht -j $(JOB) -c $(CFG) -d ./$(BUILDDIR) ./$(TEX)
	$(MAKE) clean
	cp ./$(CSS) ./$(BUILDDIR)

