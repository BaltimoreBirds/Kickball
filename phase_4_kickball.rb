def identify_winner(hash, team_1, team_2)
 if hash[:team_1]>hash[:team_2]
  puts"~~~~~~~~~~~#{team_1} wins!~~~~~~~~~~~~"
 else
  puts"~~~~~~~~~~#{team_2} wins!~~~~~~~~~~~~~~"
  puts""
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

    scores_array=[]
    scores_array[0] = team_1
    scores_array[1] = score_1
    scores_array[2] = team_2
    scores_array[3] = score_2

    log_array[i]<<scores_array
    puts log_array

    puts"would you like to enter more game results?"
    puts"(y/n)"
    puts""
    i+=1
    response = gets.chomp
    if response == "n"
      # identify_winner(hash, team_1, team_2)
      break
    end
  end

end

puts "This is a Kickball score tracker"
get_scores
