
TEX			=	main.tex
CFG			=	simple.cfg
BUILDDIR	=	build

.PHONY:	all build clean

all: build

build: 
	make4ht -c $(CFG) -d ./$(BUILDDIR) ./$(TEX)
	make4ht -m clean ./$(TEX)
	rm -rf ./main.idx 

clean:
	rm -rf ./$(BUILDDIR)

index: build
	cp $(BUILDDIR)/main.html index.html
	cp $(BUILDDIR)/*.css . 2>/dev/null || true 
