require "./product.rb"

class Food
  include Product

  def initialize(input_hash)
    super
    @stock = "2"
  end

  def item_info
    puts "#{@item_name} is #{@item_color} and costs #{@item_price} dollars. There are #{@stock} in stock."
  end
end
