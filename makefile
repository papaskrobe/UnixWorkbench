readme:
	echo "Create README if file does not exist:"
	touch README.md
	echo "Overwrite data if file is not empty:"
	echo "Guessing Game Project for Unix Workbench">README.md
	echo "Append remaining required data:"
	date>>README.md
	(wc -l guessinggame.sh)>>README.md
