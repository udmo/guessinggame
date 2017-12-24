all: readme

readme: guessinggame.sh
	echo "# The Guessing Game Project" > README.md
	echo "" >> README.md
	echo -n "* The Make run date and time was  " >> README.md
	date >> README.md
	echo "" >> README.md
	echo -n "* The number of lines of code " >> README.md
	wc -l guessinggame.sh |egrep -o "[0-9]+">> README.md
	echo "" >> README.md

clean:
	rm README.md
