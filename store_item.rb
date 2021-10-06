inventory = [
  { item: "Safe", color: "Silver", price: 1200 },
  { item: "Air Conditioner", color: "White", price: 350 },
  { item: "Trampoline", color: "Blue", price: 800 },
  { item: "Tin Can", color: "Grey", price: 0.5 },
]

class Item
  attr_reader :item_name, :item_color, :item_price
  attr_writer :item_name, :item_color, :item_price

  def initialize(item_name, item_color, item_price)
    @item_name = item_name
    @item_color = item_color
    @item_price = item_price
  end

  def item_info
    puts "#{item_name} is #{item_color} and costs #{@item_price} dollars."
  end
end

item = Item.new("Tin Can", "Grey", 0.5)
item2 = Item.new("Trampoline", "Blue", 800)
item3 = Item.new("Air Conditioner", "White", 350)
item4 = Item.new("Stick", "Woody", 4)

puts item.item_info
puts item2.item_info
puts item3.item_info
puts item4.item_info
item4.item_price = "4.2 Million"
puts item4.item_info
