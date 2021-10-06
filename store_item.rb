inventory = [
  { item_name: "Safe", item_color: "Silver", item_price: 1200 },
  { item_name: "Air Conditioner", item_color: "White", item_price: 350 },
  { item_name: "Trampoline", item_color: "Blue", item_price: 800 },
  { item_name: "Tin Can", item_color: "Grey", item_price: 0.5 },
]

class Item
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

item = Item.new(inventory[0])
item2 = Item.new(inventory[1])
item3 = Item.new(inventory[2])
item4 = Item.new(inventory[3])

puts item.item_info
puts item2.item_info
puts item3.item_info
puts item4.item_info
item4.item_price = "4.2 Million"
puts item4.item_info
