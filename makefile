READEME.md:
	touch README.md
	echo "## Guessing Game assignment" >> README.md
	date >> README.md
	echo "The number of lines in guessinggames.sh is: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+">> README.md
