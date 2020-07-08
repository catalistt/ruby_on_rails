###################### Enunciado ######################

module Habilidades

  module Volador
    def volar
    'Estoy volandooooo!'
    end
    
    def aterrizar
    'Estoy cansado de volar, voy a aterrizar'
    end
  end

  module Nadador
    def nadar
    'Estoy nadando!'
    end

    def sumergir
    'glu glub glub glu'
    end
  end

  module Caminante
    def caminar
    'Puedo caminar!'
    end
  end

end

module Alimentacion

  module Herbivoro
     def comer
       'Puedo comer plantas!'
     end
  end

  module Carnivoro
    def comer
      'Puedo comer carne!'
    end
  end
end

###################### Ejercicio ######################

class Animal
  attr_reader :nombre
  def initialize(nombre) #no decía que agregara un constructor, pero me pareció mejor
    @nombre = nombre
  end
end

#No se agregan habilidades ni alimentación a estas clases, porque dependen de cada animal
class Ave < Animal
end

class Mamifero < Animal
end

class Insecto < Animal
end

#Se agregan los métodos a las subclases. 
#No sé si están bien todas, pero por falta de conocimiento en animales

class Pinguino < Ave
  include Habilidades::Nadador
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Paloma < Ave
  include Habilidades::Volador
  include Habilidades::Caminante
  include Alimentacion::Herbivoro
end

class Pato < Ave
  include Habilidades::Volador
  include Habilidades::Nadador
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
  include Alimentacion::Herbivoro
end

class Perro < Mamifero
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Gato < Mamifero
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Vaca < Mamifero
  include Habilidades::Caminante
  include Alimentacion::Herbivoro
end

class Mosca < Insecto
  include Habilidades::Volador
  include Alimentacion::Carnivoro
  include Alimentacion::Herbivoro
end

class Mariposa < Insecto
  include Habilidades::Volador
  include Alimentacion::Herbivoro
end

class Abeja < Insecto
  include Habilidades::Volador
  include Alimentacion::Herbivoro
end

#Ejemplo de uso
ejemplo_perro = Perro.new("león")
puts ejemplo_perro.caminar