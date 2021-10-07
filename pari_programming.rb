puts "Enter your favorite food."

food = []

5.times do
  food << gets.chomp
end

i = 1
food.each do |food|
  puts "#{i}. #{food}"
  i += 1
end
