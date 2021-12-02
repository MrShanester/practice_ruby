require 'csv'

def find_combo(file)
  
  # Reads CSV file
  list = CSV.read(file)

  # Finds Target Price and transforms it into a fractional
  t_price = list[0][1].gsub(/\D/, '')
  t_price.insert(t_price.length - 2, ".")
  t_price = t_price.to_f

  # Removes Target Price from list
  list.delete_at(0)

  # Creates prices array
  prices = []

  # Populates array with fractional values from CSV list
  list.each do |item|
    price = item[1].gsub(/\D/, '')
    price.insert(price.length - 2, ".")
    price = price.to_f
    prices << price
  end

  # Sets a variable that controlls how many permutations are needed to find target price
  variable = 2

  # Finds cheapest item
  smallest = prices.sort[0]

  # Sets variable equal to the greatest amount of permutations possible
  while smallest < t_price
    smallest += smallest
    variable += 1
  end

  # Creates array 
  beefy_array = []

  # Populates beefy_array with the correct number of prices in order to ensure every permutation is calculated
  variable.times do 
    prices.each do |price|
      beefy_array << price
    end
  end

  # Sets array to hold correct permutations
  correct_permutations = []


  # Establishes index at 2, because the lowest calculation we can do is between two numbers
  i = 2

  #Compares every possible permutation to the target price and populates correct_permutations
  (variable - 2).times do
    beefy_array.permutation(i).to_a.each do |array|
      total = 0
      array.each do |num|
        total += num
      end
      # p total
      if total == t_price
        correct_permutations << array
      end
    end
    i += 1
  end


  correct_permutations = correct_permutations.uniq

  winner_winner_chicken_dinner = []

  correct_permutations[0].each do |num|
    list.each do |pair|
      if pair[1].include?(num.to_s)
        winner_winner_chicken_dinner << pair[0]
      end
    end
  end

  if correct_permutations.empty?
    return "No Combinations Equal Target Price. Sorry."
  else
    return winner_winner_chicken_dinner
  end

end

p find_combo(ARGV[0])
