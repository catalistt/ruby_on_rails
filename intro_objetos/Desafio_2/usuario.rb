#Para acceder a las clases y métodos de cuenta_bancaria
require_relative './cuenta_bancaria.rb'

class Usuario
  attr_accessor :nombre_usuario, :array_cuenta
  
  def initialize (nombre_usuario, array_cuenta)
     @nombre_usuario =nombre_usuario
     @array_cuenta = array_cuenta
  end

  def saldo_total (array_cuenta)
    
    if array_cuenta.count == 0
      puts "Debe ingresar un arreglo con al menos una cuenta"
    else
      aux = @array_cuenta.map { |cuenta| cuenta.saldo_cuenta}.sum
      puts "El saldo total del usuario #{@nombre_usuario} es: $#{aux}"
    end

  end

end

#se instancian las clases de cuentas bancarias
cuenta3 = CuentaBancaria.new("banco1", 12345678, 10000)
cuenta4 = CuentaBancaria.new("banco2", 87654321, 20000)

#se crea el array con las cuentas
array_cuentas1 = [cuenta3,cuenta4]

usuario1 = Usuario.new("Catalina Aliste", array_cuentas1)
usuario1.saldo_total(array_cuentas1)


        

