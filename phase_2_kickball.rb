#make algo that determines higher score of team and outputs winner





def identify_winner(hash, team_1, team_2)
 if hash[:team_1]>hash[:team_2]
  puts"#{team_1} wins!"
 else
  puts"#{team_2} wins!"
 end
end




puts "This is a Kickball score tracker"
puts "What is team one's name?"
team_1 = gets.chomp
puts""
puts"What is team 1's score?"
score_1 = gets.chomp.to_i


puts"What is team two's name?"
team_2 = gets.chomp
puts""
puts"What is team two's score?"
score_2 = gets.chomp.to_i

scores_hash ={}
scores_hash[:team_1] = score_1
scores_hash[:team_2] = score_2

identify_winner(scores_hash, team_1, team_2)

