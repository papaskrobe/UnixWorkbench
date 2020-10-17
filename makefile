readme:
	touch README.md
	echo "Guessing Game Project for Unix Workbench">>README.md
	date>>README.md
	(wc -l guessinggame.sh)>>README.md
