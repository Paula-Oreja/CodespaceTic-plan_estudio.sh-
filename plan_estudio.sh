#!/bin/bash

# Crear una carpeta donde se guardará el archivo del plan de estudios
# Esto ayuda a organizar los archivos y mantener todo ordenado
echo "🗂 Creando una carpeta para guardar el plan de estudios..."
mkdir -p "Plan_Estudio"  # Si la carpeta no existe, la crea

# Cambiar al directorio creado
cd "Plan_Estudio"  # Cambia a la carpeta Plan_Estudio

# Crear un archivo llamado plan_estudios_semanal.txt
PLAN="plan_estudios_semanal.txt"
touch "$PLAN"  # Crea el archivo si no existe

# Mensaje para el usuario
echo "📚 Generador de Plan de Estudios Semanal"
echo "Vas a ingresar qué vas a estudiar cada día. Escribe 'nada' si no tienes nada ese día."

# Días de la semana para el plan de estudios
dias=("Lunes" "Martes" "Miércoles" "Jueves" "Viernes" "Sábado" "Domingo")

# Bucle para pedir el tema de estudio para cada día
for dia in "${dias[@]}"; do
  read -p "¿Qué estudiarás el $dia?: " tema
  echo "$dia: $tema" >> "$PLAN"  # Agrega el tema ingresado al archivo
done

# Mensaje de confirmación y mostrar el contenido del archivo
echo "✅ Plan de estudio creado y guardado exitosamente en '$PLAN'."
echo "Contenido del plan de estudios:"
cat "$PLAN"  # Muestra el contenido del archivo

# Vuelve al directorio original
cd ..  # Vuelve a la carpeta anterior
echo "📁 Has vuelto al directorio original."
