README.md:$(date)
	echo "Project title: guessinggame">README.md
	echo "Run on: $(shell date)">>README.md
	echo "Number of lines: $$(wc -l guessinggame.sh)">>README.md 
	
