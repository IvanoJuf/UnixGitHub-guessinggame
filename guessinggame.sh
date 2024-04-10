# Función para comparar el número ingresado con el número de archivos
comparar_numeros() {
    local num="$1"
    local files="$2"

    if (( num == files )); then
        echo "Felicidades, adivinaste el número de archivos"
    elif (( num > files )); then
        echo "Intenta con un número más pequeño"
    else
        echo "Intenta con un número más grande"
    fi
}

# Función principal
adivinar_archivos() {
    local files=$(ls | wc -l)
    local num=0

    while (( num != files ))
    do
        echo "Adivina cuántos archivos hay en el directorio actual"
        read num
        comparar_numeros "$num" "$files"
    done
}

# Llamada a la función principal
adivinar_archivos

