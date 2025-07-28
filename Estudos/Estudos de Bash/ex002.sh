#!/bin/bash

echo "Qual é o seu nome?"
read nome

echo "Qual é a sua idade?"
read idade

if [[ "$idade" -le 0 ]]; then
  echo "Isso não faz sentido"
  exit 1
elif [[ "$idade" -lt 12 ]]; then
  echo "$nome, vc e um pequeno sayajin!"
elif [[ $idade -ge 12 && $idade -le 17 ]]; then
  echo "$nome, vc é um jovem sayajin!"
elif [[ "$idade" -ge 18 ]]; then
  echo "$nome, vc é um lendário sayajin!"
fi

echo "E não se esqueça do orgulhos dos sayajins, $nome!"
