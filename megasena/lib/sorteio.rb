# Exemplo de módulo com métodos

module Sorteio
  def sortear_numeros
    @data_sorteio = Time.now

    # Tem que melhorar para não sortear número repetidos.
    # Fazer um loop para gerar a quantidade de números desejada.
    @numeros_sorteados = [
      rand(1..10),
      rand(1..10),
      rand(1..10),
      rand(1..10),
      rand(1..10),
    ]
    puts "Números sorteados em #{@data_sorteio}: #{@numeros_sorteados}"
  end
end
