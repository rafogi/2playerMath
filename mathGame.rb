require "./player.rb"
require "./questions.rb"


    print "player 1 name?"
    p1 = gets.chomp
    print "player 2 name?"
    p2 = gets.chomp
    player1 = Player.new(p1)
    player2 = Player.new(p2)

    current = 1

    while player1.is_alive?  && player2.is_alive? do

      player = (current %2 != 0)? player1: player2
      question = Questions.new()
      puts "#{player.name}: #{question.print}"
      answer = gets.chomp.to_i

      if answer == question.answer
        puts "right!"
        puts "#{player1.name} has #{player1.lives}/3 lives #{player2.name} has #{player2.lives}/3 lives"
        current += 1
      else
        puts "wrong!"
        player.lives -= 1
        puts "#{player1.name} has #{player1.lives}/3 lives #{player2.name} has #{player2.lives}/3 lives"
        current +=1
      end

    if player1.lives == 0
      puts "#{player2.name} 2 wins"
    end
    if player2.lives == 0
      puts "#{player1.name}  wins"
    end
    end
    puts "********************game set match ******************"
