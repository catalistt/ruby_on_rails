class Carta
  #Agregar getters y setters
  attr_accessor :numero, :color

  #Crear el constructor
  def initialize(numero, color)
    @numero = numero
    @color = color
  end

  #Para que se pueda leer el contenido
    def to_s
    puts "número: #{numero} | color: #{color}"
  end
end

cartas1=[]

#Se agregan 5 cartas, según los paŕametros del enunciado
5.times do
  cartas1 << Carta.new( Random.rand(1..13), ["C","D", "E", "T"].sample)
end

#puts cartas1


