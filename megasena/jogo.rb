# Serão sorteados 5 números de 1 a 10. Sua aposta tem 5 números e ganhará se acertar pelo menos 1.

require_relative '..\megasena\lib\apostador.rb'
require_relative '..\megasena\lib\resultado.rb'

puts "Vamos começar. Deseja de identificar (sim/não)?"

count_error = 0

while count_error < 3
    identificado = gets.chomp
    if identificado == 'sim'
        puts "Qual seu nome?"
        @nome = gets.chomp
        puts "Qual o ano de nascimento (aaaa)?"
        @ano_nasc = gets.chomp.to_i
        break
    elsif identificado == 'nao'
        puts "Se você é tímido e não quer dizer seu nome, se ganhar, não vai receber."
        break
    else
        puts "Resposta errada." 
    end
    count_error += 1
end

if identificado == 'sim' or identificado == 'nao'
    @apostador = Apostador.new
    @apostador.validar_idade_jogar(@nome, @ano_nasc)
else
    puts "Você não sabe brincar."
end




