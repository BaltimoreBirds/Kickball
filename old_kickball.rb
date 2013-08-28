puts "This is a Kickball score tracker"
puts "What is team one's name?"
team_1=gets.chomp
puts""
puts"What is team 1's score?"
score_1=gets.chomp.to_i


puts"What is team two's name?"
team_2=gets.chomp
puts""
puts"What is team two's score?"
score_2 = gets.chomp.to_i

scores_hash ={}
scores_hash[:team_1] = score_1
scores_hash[:team_2] = score_2

if scores_hash[:team_1]>scores_hash[:team_2]
    puts"#{team_1} wins!"
else
    puts"#{team_2} wins!"
end
