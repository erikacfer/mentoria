require_relative "objetos.rb"

puts "Escolha: (1) json A, (2) json B, (3) json C"
escolha = gets.chomp.to_i
@objeto = Objeto.new

case escolha
when 1
  @objeto.objeto_a
when 2
  @objeto.objeto_b
when 3
  @objeto.objeto_c
end
