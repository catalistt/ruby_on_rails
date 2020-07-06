class CuentaBancaria
  attr_accessor :nombre_de_usuario

  #para poder leerlos en los métodos
  attr_reader :vip, :numero_de_cuenta

  #constructor
  def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
    @nombre_de_usuario = nombre_de_usuario
    @numero_de_cuenta = numero_de_cuenta
    @vip = vip

    #se levanta error por dígitos
    if numero_de_cuenta.digits.count != 8
    raise RangeError, 'Tiene un número de dígitos distinto a 8'
    end

  end

  #asignación de prefijo vip/no vip
  def numero_de_cuenta 
    if vip == 1
      puts "1-#{@numero_de_cuenta}"
    else
      puts "0-#{@numero_de_cuenta}"
    end
  end

  #Ejemplo de uso
  cuenta_ejemplo = CuentaBancaria.new("usuario_1",12345678,1)
  puts cuenta_ejemplo.numero_de_cuenta

end

