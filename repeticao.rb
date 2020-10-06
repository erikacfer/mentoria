puts " Digite o número do que quer executar:"
puts "1 - While"
puts "2 - For"
puts "3 - Each"
puts "4 - Times"

tipo = gets.chomp.to_i
puts "***************************************"

case tipo
    when 1
        numero = 1
        while numero <= 10 
            puts "Número #{numero}"
            numero += 1
        end
    when 2
        arr1 = [1, 2, 3, 2, 4, 5, 6, 7, 8 , 9, 10]
        arr1_size = arr1.size
        puts "Elementos do array: #{arr1_size} elementos"
        for item in arr1
            puts item
        end

        puts "Números pares:"
        for item in arr1
            if item.even?
                puts item
            end
        end
    
        puts "Números ímpares:"
        for item in arr1
            if item.odd?
                puts item
            end
        end  

        puts "Números maiores que 5:"
        for item in arr1
            if item > 5
                puts item
            end
        end      

    when 3
        arr1 = [1, 2, 3, 2, 4, 5, 6, 7, 8 , 9, 10]
        arr1_size = arr1.size
        puts "Elementos do array: #{arr1_size} elementos"
        arr1.each do |item|
            puts item
        end
        
        puts "Números pares:"
        arr1.each do |item|
            if item.even?
                puts item
            end
        end

        puts "Números ímpares:"
        arr1.each do |item|
            if item.odd?
                puts item
            end
        end     

        puts "Números maiores que 5:"
        arr1.each do |item|
            if item > 5
                puts item
            end
        end 

    when 4
    puts "Quantas vezes quer executar o times?"

    var1 = gets.chomp.to_i
    var1.times do |var2|
        puts "Execução: #{var2}" 
    end
    # var3 += var2
    # puts "Soma parcial: #{var3}"

end
