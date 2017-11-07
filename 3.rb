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
class NoSuchStrategyError<Exception
end
class WrongNumberOfPlayersError<Exception
    def message ; "Не верно количество игроков"; end
end
def RSP (arg)
    begin      
            puts "#{arg}"
            raise NoSuchStrategyError if arg == nil
            raise WrongNumberOfPlayersError if arg.length != 2
            raise NoSuchStrategyError if (@h[arg[0][1]].nil?)||(@h[arg[1][1]].nil?) #в хэше нет таких значений
            a = @h[arg[0][1]]
            b = @h[arg[1][1]]
            if a == b 
                rez =  arg[0]
            else
                c = (a-b).abs #"расстояние"
                if ( c == ((a-b)*(-1)**(c+1))) #лаконично и понятно в данном случае противоположные вещи
                    rez = arg[1]
                else
                    rez = arg[0]
                end
            end
            return rez
     rescue WrongNumberOfPlayersError => e
     puts e.message
     rescue NoSuchStrategyError => e
     puts e.message
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
