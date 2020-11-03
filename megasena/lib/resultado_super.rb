# Exemplo de classe sem construtor

require_relative '..\lib\jogada.rb'

class ResultadoSuper
  def conferir_resultado(numeros_apostados, numeros_sorteados)
    count = 0
    acertos = []
    Array(numeros_apostados).each do |numero|
      if Array(numeros_sorteados).include? (numero)
        count += 1
        acertos.push(numero)
      end
    end
    if count >= 1
      puts "Parabéns, meu consagrado! Agora você venceu na vida. Acertos: #{acertos}"
    else
      puts "Não foi dessa vez. Continue trabalhando. Acertos: #{acertos}"
    end
  end
end
