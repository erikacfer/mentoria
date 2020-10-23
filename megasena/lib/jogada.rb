# Exemplo de mixin e utilização de módulos

require_relative '..\lib\aposta.rb'
require_relative '..\lib\sorteio.rb'

class Jogada 
    include Aposta
    include Sorteio
end

