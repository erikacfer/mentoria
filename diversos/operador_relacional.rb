var1 = rand(1..100)
puts "O primeiro número é: #{var1}"
puts "Digite o segundo número (de 1 a 100):"
var2 = gets.chomp.to_i

if var2 == var1
    puts "#{var2} é igual a #{var1}."
elsif var2 == 0
    puts "você digitou errado."
else var2 != var1
    puts "#{var2} é diferentede #{var1}." 
    if var2 >= var1
        puts "#{var2} é maior igual a #{var1}." 
    else var2 <= var1
        puts "#{var2} é menor igual a #{var1}." 
    end
end



