#!/bin/bash

PLAN="plan_estudios_semanal.txt"
touch "$PLAN"

echo "📚 Generador de Plan de Estudios Semanal"
echo "Vas a ingresar qué vas a estudiar cada día. Escribe 'nada' si no tienes nada ese día."

dias=("Lunes" "Martes" "Miércoles" "Jueves" "Viernes" "Sábado" "Domingo")

for dia in "${dias[@]}"; do
  read -p "¿Qué estudiarás el $dia?: " tema
  echo "$dia: $tema" >> "$PLAN"
done

echo "✅ Plan de estudio creado: $PLAN"
echo "Contenido del plan:"
cat "$PLAN"
