README.md:
	echo "## Project title: guessinggame">README.md
	echo '**Run on:** $(shell date +"%Y-%m-%d %H:%M:%S") ' >> README.md
	echo '' >> README.md
	echo '**Number of lines:** $$(wc -l guessinggame.sh)' >> README.md 
	
