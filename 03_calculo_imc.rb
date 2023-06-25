# Cálculo del Índice de Masa Corporal (IMC) (Requerimiento 3)

# Descripción:
# Este programa permite calcular el Índice de Masa Corporal (IMC) utilizando el peso y la altura proporcionados por el usuario.
# También muestra la clasificación correspondiente al IMC calculado según los rangos establecidos.

# Métodos:
# - formula_imc: Calcula el IMC utilizando la fórmula IMC = peso / altura^2.
#   Parámetros:
#   - valor1: Peso en kilogramos (valor numérico).
#   - valor2: Altura en metros (valor numérico).
#   Retorna:
#   - El valor del IMC calculado.
#
# - calcular_imc: Evalúa el IMC calculado y muestra la clasificación correspondiente.
#   Parámetros:
#   - imc: Valor del IMC calculado (valor numérico).
#   Retorna:
#   - No retorna ningún valor. Imprime en pantalla la información del IMC y su clasificación, en el caso de obesidad, clasifica en 
# ○ Obesidad grado I: 30 - 34.9 - Moderado
# ○ Obesidad grado II: 35 - 39.9 - Severo
# ○ Obesidad grado III: Más de 40 - Muy severo

# Uso:
# - El usuario debe ingresar su peso en kilogramos y su altura en metros.
# - El programa calculará el IMC utilizando el método formula_imc y lo mostrará en pantalla.
# - A continuación, se evaluará el IMC utilizando el método calcular_imc y se imprimirá la clasificación correspondiente.

# Crearemos un método para realizar el cálculo del IMC. Esta función recibirá por parámetros dos valores

def formula_imc(valor1,valor2)
  imc = valor1 / valor2**2
end

# Creamos una función que evalúe condicionalmente el índice de la persona en función de los datos de la tabla entregada.

def calcular_imc(imc)
  puts("Tu índice de masa corporal es => #{imc}")
  if imc < 18.5
    puts "El índice calculado es Bajo de peso"
  elsif imc <= 18.5 || imc <= 24.9
    puts "El índice calculado es Normal"
  elsif imc <= 25.0 || imc <= 29.9
    puts "El índice calculado es Sobrepeso"
  else
    if imc <= 34.9
      puts "El índice calculado es Obesidad Grado I - Moderado"
    elsif imc <= 35.0 || imc <= 39.9
      puts "El índice calculado es Obesidad Grado II - Severo"
    else
      puts "El índice calculado es Obesidad Grado III - Muy Severo"
    end
  end
end

# Solicitaremos al usuario mediante gets los datos que necesitamos para hacer el cálculo. Esos datos deben ser convertidos a flotantes dado que la fórmula generalmente retorna números decimales.
puts("***¡Bienvenido/a al sistema de cálculo IMC!***")
puts "Ingresa tu peso en Kilogramos: "
peso = gets.chomp.to_f
puts "Ingresa tu altura expresada en metros: "
altura = gets.chomp.to_f

# Llamamos el método de calculo de imc
calcular_imc(formula_imc(peso, altura))