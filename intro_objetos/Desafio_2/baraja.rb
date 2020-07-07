require_relative '../Desafio_1/carta.rb'

puts "\n Aquí parte el ejercicio de Baraja:"
puts "\n"

class Baraja
  attr_accessor :cartas

  #se inicializa con un arreglo vacío
  def initialize
    @cartas = []
  end

  #se sigue la "línea" del desafío anterior (con respecto a las pintas y números de cartas)
  def mazo
    pintas = ["C","D","E","T"]
    for pinta in pintas 
      13.times do |i|
        instancia_carta = Carta.new(i+1,pinta) #se instancia la clase Carta
        @cartas << instancia_carta #se crean 13 cartas por cada pinta
      end
    end
    @cartas
  end

  def barajar
    @cartas.shuffle!
  end

  #se utiliza shift que es el inverso de pop
  def sacar 
    @cartas.shift
  end

  def repartir_mano
    @cartas.shift(5)
  end

end
    
baraja1 = Baraja.new

puts baraja1.mazo
puts ""
puts baraja1.barajar
puts ""
puts baraja1.sacar
puts ""
puts baraja1.repartir_mano
