# Exemplo de módulo com métodos

module Aposta
  def escolher_numeros
    count_erro = 0
    count_num = 0
    numeros_apostados = []
    while count_num < 5
      puts "Escolha um número:"
      numero = gets.chomp.to_i
      if numero >= 1 and numero <= 10
        numeros_apostados.push(numero)
        count_num += 1
      else
        puts "Número inválido"
        count_erro += 1
        if count_erro > 2
          puts "Você não sabe brincar"
          break
        end
      end
    end
    puts "Números escolhidos: #{numeros_apostados}"
  end
end
