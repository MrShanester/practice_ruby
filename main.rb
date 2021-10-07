require "./store_item.rb"
require "./food.rb"

inventory = [
  { item_name: "Safe", item_color: "Silver", item_price: 1200 },
  { item_name: "Air Conditioner", item_color: "White", item_price: 350 },
  { item_name: "Trampoline", item_color: "Blue", item_price: 800 },
  { item_name: "Tin Can", item_color: "Grey", item_price: 0.5 },
]

item = Item.new(inventory[0])
item2 = Item.new(inventory[1])
item3 = Item.new(inventory[2])
item4 = Item.new(inventory[3])
item5 = Food.new(inventory[3])

puts item.item_info
puts item2.item_info
puts item3.item_info
puts item4.item_info
item4.item_price = "4.2 Million"
puts item4.item_info
puts item5.item_info
