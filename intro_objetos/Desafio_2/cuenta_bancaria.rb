class CuentaBancaria
  attr_accessor :banco, :numero_cuenta, :saldo_cuenta

  #Se crea el constructor
  def initialize (banco, numero_cuenta, saldo_cuenta = 0)
    @banco = banco
    @numero_cuenta = numero_cuenta
    @saldo_cuenta = saldo_cuenta
  end

  #crear método para transferir
  def transferir(monto, otra_cuenta)

    #se le quita el monto a transferir
    @saldo_cuenta -= monto

    #se le agrega a la otra cuenta
    otra_cuenta.saldo_cuenta = monto + otra_cuenta.saldo_cuenta

    #se muestra el resultado de ambas cuentas (para que se entienda más)
    puts "La cuenta #{otra_cuenta.numero_cuenta} quedó con $#{otra_cuenta.saldo_cuenta}"
    puts "La cuenta #{@numero_cuenta} quedó con $#{@saldo_cuenta}"
    puts "\n"
  end

end

#se instancian las clases con los datos de enunciado
cuenta1 = CuentaBancaria.new("banco1", 12345678, 5000)
cuenta2 = CuentaBancaria.new("banco2", 87654321, 5000)

#se instancia el método y se "transfiere" $5000 a la otra cuenta
cuenta1.transferir(5000,cuenta2)