module Product
  attr_reader :item_name, :item_color, :item_price
  attr_writer :item_name, :item_color, :item_price

  def initialize(input_hash)
    @item_name = input_hash[:item_name]
    @item_color = input_hash[:item_color]
    @item_price = input_hash[:item_price]
  end

  def item_info
    puts "#{@item_name} is #{@item_color} and costs #{@item_price} dollars."
  end
end