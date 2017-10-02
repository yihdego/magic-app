require 'csv'


  p 'hello world'
  set_name = File.basename('db/DTK.csv'.downcase, ".csv")
  p set_name
  set = MagicSet.create(name: set_name)
  convert = {"name" => "name", "mana_cost" => "mana_cost", "cmc" => "cmc", "color_identity" => "color_identity", "artist" => "artist","number" => "number", "type" => "cardtype", "text" => "text", "printings" => "printings", "flavor" => "flavor", "layout" => "layout", "multiverseid" => "multiverseid", "power" => "power", "toughness" => "toughness", "rarity" => "rarity", "subtypes" => "subtypes", "types" => "types"}
  CSV.foreach('db/DTK.csv', headers: true, header_converters: lambda { |name| convert[name] }) do |row|
    magic_card_info = row.to_h
    card = Card.create(magic_card_info)
    set.cards << card
  end
