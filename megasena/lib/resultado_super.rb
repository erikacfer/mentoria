# Exemplo de classe sem construtor

require_relative '..\lib\jogada.rb'

class ResultadoSuper
  def conferir_resultado(numeros_apostados, numeros_sorteados)
    count = 0
    numeros_apostados.each do |numero|
      if numeros_sorteados.include? (numero)
        count += 1
      end
    end
    if count >= 1
      puts "Parabéns, meu consagrado! Agora você venceu na vida."
    else
      puts "Não foi dessa vez. Continue trabalhando."
    end
  end
end
