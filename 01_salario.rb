# Método de cálculo de aumento de salario (Requerimiento 1)
#
# Este método recibe el salario actual y el incremento porcentual como parámetros y
# calcula el nuevo salario con el aumento aplicado. El parámetro de incremento es
# opcional y tiene un valor predeterminado de 5% si no se proporciona.
#
# Parámetros:
# - salario: El salario actual del empleado. Debe ser un valor numérico.
# - incremento: El incremento porcentual a aplicar al salario. Debe ser un valor numérico.
#               (opcional, valor predeterminado: 5)
#
# Retorna:
# - El nuevo salario después de aplicar el incremento. Es un valor numérico.

# Metodo de calculo de aumento de salario
def calculo_aumento(salario, incremento=5)
  nuevo_salario = salario + (salario * (incremento / 100.0))
end

# Ingreso de datos por el usuario
print "Ingrese salario actual: "
salario = gets.to_f
print "Ingrese aumento (%): "
incremento = gets.chomp
if incremento == ""
  nuevo_salario = calculo_aumento(salario)
else
  nuevo_salario = calculo_aumento(salario,incremento.to_f)
end
  
# Resultado
puts "El nuevo salario es de #{nuevo_salario}"