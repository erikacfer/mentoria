# Exemplo de classe com construtor e classe que instancia outra classe
require_relative '..\lib\jogada.rb'
require 'date'

class Apostador 
    attr_accessor :nome, :ano_nasc

    def initialize
        @nome = "Não informado"
        @ano_nasc = 1900
    end

    def validar_idade_jogar(nome, ano_nasc)
        @idade = Time.now.year - ano_nasc.to_i
        if @idade > 18
            @numeros_apostados = Jogada.new
            @numeros_apostados.escolher_numeros

            @numeros_sorteados = Jogada.new
            @numeros_sorteados.sortear_numeros

            @resultado = Resultado.new
            @resultado.conferir_resultado(@numeros_apostados, @numeros_sorteados)
        else
            puts "Você não tem idade para isso. Melhor chamar seus pais, #{nome}."
        end
    end
end

