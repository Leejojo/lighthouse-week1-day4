require "pry"

@player1_points = 3
@player2_points = 3

@players = {player1: @player1_points, player2: @player2_points}.cycle

def whos_playing

  puts "#{@current_player[0]}, your turn"

end

def question_generator

  @x, @y = [rand(1...20), rand(1...20)]
    
  puts "What does #{@x} plus #{@y} equal?"
  @player_answer = gets.chomp.to_i

end  



def verify_answer

  right_answer = @x + @y

  if right_answer == @player_answer
    puts "Correct! You still have #{@current_player[1]} lives."
  else
    puts "#{@player_answer} is incorrect."
    

    @current_player[1] -= 1
    puts "You now have #{@current_player[1]} lives left."
  end
    
  @current_player[1]

end


def winner
  puts "The Winner is #{@current_player[0].next}!!"
end


loop do 

  @current_player = @players.next

  whos_playing
  question_generator
  verify_answer

  break if @current_player[1] == 0
  

end

winner

puts "GAME OVER!!"

