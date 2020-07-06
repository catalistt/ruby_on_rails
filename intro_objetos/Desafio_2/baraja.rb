require_relative '../Desafio_1/carta.rb'

puts "\n Aquí parte el ejercicio de Baraja:"
puts "\n"

class Baraja
  attr_accessor :cartas

  #se inicializa con un arreglo vacío (opción personal, para evitar errores)
  def initialize(cartas=[])
    @cartas = cartas
  end

  #se sigue la "línea" del desafío anterior (con respecto a las pintas y números de cartas)
  def mazo
    pintas = ["C","D","E","T"]
    for pinta in pintas 
      13.times do |i|
        @cartas << [i+1,pinta] #se crean 13 cartas por cada pinta
      end
    end
    puts "El arreglo con 52 cartas es: #{@cartas} \n"
  end

  def barajar
    print "La baraja es: #{@cartas.shuffle!()} \n"
  end

  #se utiliza shift que es el inverso de pop
  def sacar 
    print "La primera carta es: #{@cartas.shift} \n"
  end

  def repartir_mano
    print "El arreglo con 5 cartas es: #{@cartas.shift(5)} \n"
  end

end
    
baraja1 = Baraja.new

puts baraja1.mazo
puts baraja1.barajar
puts baraja1.sacar
puts baraja1.repartir_mano