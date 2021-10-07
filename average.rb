1.times do
  puts "How many pins were knocked down on the first throw?"
  throw1 = gets.chomp.to_i
  puts "How many pins were knocked down on the second throw?"
  throw2 = gets.chomp.to_i
  score = throw1 + throw2
  puts "Your score it #{score}"
end
