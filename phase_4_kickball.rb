def identify_winner(array)
 m=0#team_1
 i=1#score_1
 v=2#team_2
 z=3#score_2
 h=0#Game num - 1
 while array[h] != nil
   if array[h][i]>array[h][z]
    puts"~~~~ In Game #{h+1}, #{array[h][0]} won!~~~~~~~~~~~~"
   else
    puts"~~~~~In Game #{h+1}, #{array[h][2]} won!~~~~~~~~~~~~~~"
    puts""
   end
   h+=1
   # m+=4
   # i+=4
   # v+=4
   # z+=4
  end
end

def get_scores
  response="q"
  i=0
  log_array=[]
  while response.downcase != "n"

    puts "What is team one's name?"
    team_1 = gets.chomp
    puts""
    puts"What is team 1's score?"
    puts""
    score_1 = gets.chomp.to_i

    puts"What is team two's name?"
    team_2 = gets.chomp
    puts""
    puts"What is team two's score?"
    puts""
    score_2 = gets.chomp.to_i
    puts""

    scores_array=[]
    scores_array<< team_1
    scores_array<< score_1
    scores_array<< team_2
    scores_array<< score_2

    log_array<<scores_array

    puts"would you like to enter more game results?"
    puts"(y/n)"
    puts""
    i+=1
    response = gets.chomp
    if response == "n"
      identify_winner(log_array)
      break
    end
  end

end

puts "This is a Kickball score tracker"
get_scores
