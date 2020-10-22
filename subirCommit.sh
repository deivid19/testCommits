#!/bin/bash

echo -e "Commit para Github\n"

echo -e "Escribe la carpeta principal para la subida:"
read folder
cd $folder
echo "Directorio actual: "
pwd

echo -e "Agregando archivos..."
git add .
echo -e "git add .\n"

echo "ingresa la descripcion del commit: "
read descripcion

echo -e "\nCapturando cambios..."
git commit -m "$descripcion"
echo "git commit -m \""$descripcion"\""

echo -e "\nRamas disponibles del repositorio: "
git branch -a

echo "escribe la rama en la que subiras el commit: "
read rama
git push origin $rama
echo -e "\ngit push origin master \n"

echo "Cambios subidos correctamente !"