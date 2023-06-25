# Adivina el Número (Requerimiento 2)
# Este programa genera un número aleatorio y le pide al usuario que adivine el número.
# El usuario tiene la oportunidad de ingresar su adivinanza, y el programa le dará
# retroalimentación sobre si la adivinanza fue correcta o no. El juego continúa hasta
# que el usuario adivine correctamente el número o decida rendirse.


# Rango de número "n"
n = 10

# Número aleatorio del computador
numero =  rand(1..n)

puts "Bienvenido a Adivina el Número"
puts "Adivina un número entre 0 y #{n}",""

# Ciclo infinito
while true
  puts "Si te rindes, ingresa \"-1\""
  print "Tu adivinanza: "
  numero_usuario = gets.to_i
  # La condición para ganar es que el número del computador debe ser igual al del jugador.
  if numero_usuario == numero
    puts "Felicidades! has acertado mi número era, en efecto, \"#{numero}\""
    break    # Sale del ciclo
  # Si el usuario se rinde...
  elsif numero_usuario == -1
    puts "¡Mejor suerte para la próxima!"
    break    # Sale del ciclo 
  # Si el usuario falla su adivinanza continúa el ciclo
  else
    puts "Intenta otra vez"
  end
end