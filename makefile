README.md: 
	touch README.md
	echo "# Título del Proyecto" > README.md
	echo "" >> README.md
	echo "Fecha y hora de ejecución de make: $$(date)" >> README.md
	echo "" >> README.md
	echo "Número de líneas de código en guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md
