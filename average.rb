frames = []

10.times do
  puts "How many pins were knocked down on the first throw?"
  throw1 = gets.chomp.to_i
  puts "How many pins were knocked down on the second throw?"
  throw2 = gets.chomp.to_i

  if throw1 == 10 || throw2 == 10
    puts "Strike!"
  elsif throw1 + throw2 == 10
    puts "Spare!"
  elsif throw1 + throw2 == 0
    puts "Gutter Ball!"
  end

  score = throw1 + throw2
  frames << score
  puts "Your score it #{score}"
end

game_score = 0

frames.each do |frame|
  game_score += frame
end

puts "Your Final Score was #{game_score}!"
