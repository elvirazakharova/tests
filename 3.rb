=begin
Мы будем разрабатывать методы для программы Камень-Ножницы-Бумага.
Метод rps_game_winner должен принимать на вход массив примерно следующей структуры
[ ["Armando", "P"], ["Dave", "S"] ], где P - бумага, S - ножницы, R - камень, и функционировать
следующим образом:
• если количество игроков больше 2 необходимо вызывать исключение WrongNumberOfPlayersError;
• если ход игроков отличается от ‘R’, ‘P’ или ‘S’ необходимо вызывать исключение
NoSuchStrategyError;
• в иных случаях необходимо вернуть имя и ход победителя, если оба игрока походили одинаково -
выигрывает первый игрок.
=end
@h = { "R" => 1, "S" => 2, "P" => 3}
puts "R - камень
S - ножницы
P - бумага"  

def RSP (arg)
    begin      
            puts "#{arg}"
            raise "нет длины" if arg == nil
            raise "Не верно количество игроков" if arg.length != 2
            raise "Не верны параметры" if (@h[arg[0][1]].nil?)||(@h[arg[1][1]].nil?) #в хэше нет таких значений
            a = @h[arg[0][1]]
            b = @h[arg[1][1]]
            if a == b 
                puts "Одинаковые значения"
                rez =  arg[0]
            else
                c = (a-b).abs #"расстояние"
                if ( c == ((a-b)*(-1)**(c+1))) #лаконично и понятно в данном случае противоположные вещи
                    puts "Второй выиграл"
                    rez = arg[1]
                else
                    puts "Первый выиграл"
                    rez = arg[0]
                end
            end
            return rez
     rescue Exception => e
     puts e.message
     #rescue RuntimeError => error
     #puts "Шта"
     #puts error.inspect     
     end
end
aa = nil
puts RSP(aa)
aa = [ ["Armando", "S"]]  
puts RSP(aa)
aa = [ ["Armando", "S"], ["Dave", "S"], ["Dave", "S"] ]  
puts RSP(aa)
aa = [ ["Armando", "S"], ["Dave", "A"] ] 
puts RSP(aa)
aa = [ ["Armando", "R"], ["Dave", "P"] ] 
puts RSP(aa)
aa = [ ["Armando", "P"], ["Dave", "R"] ] 
puts RSP(aa)
aa = [ ["Armando", "S"], ["Dave", "R"] ] 
puts RSP(aa)
aa = [ ["Armando", "R"], ["Dave", "S"] ] 
puts RSP(aa)
=begin проще, понятнее, но длиньше
def aaaaa (a, b)
    if (a-b).abs==1 
        if a-b<0
            return a
        else 
            return b
        end
    else
        if a-b<0
            return b
        else 
            return a
        end
    end        
end
=end
