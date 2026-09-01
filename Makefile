
TEX			=	main.tex
CFG			=	simple.cfg
BUILDDIR	=	build

.PHONY:	all build clean

all: build

build: 
	make4ht -c $(CFG) ./$(TEX) -d ./$(BUILDDIR)

clean:
	rm -rf ./$(BUILDDIR)

index: build
	cp $(BUILDDIR)/main.html index.html
	cp $(BUILDDIR)/*.css . 2>/dev/null || true 
