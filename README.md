# Makefile to generate README.md

README.md: guessinggame.sh
	echo "# Bash Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Generated on: $$(date)" >> README.md
	echo "" >> README.md
	echo "### Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md
	echo "" >> README.md
	echo "### GitHub Repository URL:" >> README.md
	echo "https://github.com/zemmanuelweh/guessing-game-in-bash" >> README.md
	echo "" >> README.md
	echo "### GitHub Pages Site:" >> README.md
	echo "https://github.com/zemmanuelweh/guessing-game-in-bash" >> README.md
