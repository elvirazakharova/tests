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
class NoSuchStrategyError<Exception
    def initialize(msg="No such strategy error") ;  super;  end
end
class WrongNumberOfPlayersError<Exception
    def message ; "Не верно количество игроков"; end
end
def RSP (arg)
    begin      
            raise NoSuchStrategyError, "nil" if arg == nil 
            raise WrongNumberOfPlayersError if arg.length != 2
            raise NoSuchStrategyError if (@h[arg[0][1]].nil?)||(@h[arg[1][1]].nil?)
            a, b = @h[arg[0][1]], @h[arg[1][1]]
            if a == b
                arg[0]
            else
                (a-b).abs == ((a-b)*(-1)**((a-b).abs + 1)) ? arg[1] : arg[0]
            end
     rescue WrongNumberOfPlayersError => e
     puts e.message
     rescue NoSuchStrategyError => e
     puts e.message
     end
end

aa = [ ["Armando", "S"], ["Dave", "R"] ] 
puts RSP(aa)
