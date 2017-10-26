a = [["Amanda", "S"],["Peter", "R"]]
puts "#{a}"
puts "P - бумага"
puts "R - камень"
puts "S - ножницы"
    case 
    when a.length != 2
      puts "WrongNumberOfPlayersError"
#    when ((a[0][1].slice(/[^"SPR"]/))||(a[1][1].slice(/[^"SPR"]/))) #это не работает так, как надо
#      puts "NoSuchStrategyError"
    when ((a[0][1] == "S")&&(a[1][1]=="P"))||((a[0][1] == "R")&&(a[1][1]=="S"))||((a[0][1] == "P")&&(a[1][1]=="R"))||(a[0][1] == a[1][1])
      puts "Winner = #{a[0]}"
    when ((a[0][1] == "P")&&(a[1][1]=="S"))||((a[0][1] == "R")&&(a[1][1]=="P"))||((a[0][1] == "S")&&(a[1][1]=="R"))
      puts "Winner = #{a[1]}"
    else
      puts "NoSuchStrategyError"
    end