require 'csv'


Dir.glob('db/csv/*.csv') do |set|
  set_name = File.basename(set.downcase, ".csv")
  magicset = MagicSet.create(name: set_name)
  convert = {"name" => "name", "manaCost" => "mana_cost", "cmc" => "cmc", "colorIdentity" => "color_identity", "artist" => "artist","number" => "number", "type" => "cardtype", "text" => "text", "printings" => "printings", "flavor" => "flavor", "layout" => "layout", "multiverseid" => "multiverseid", "power" => "power", "toughness" => "toughness", "rarity" => "rarity", "subtypes" => "subtypes", "types" => "types"}
  CSV.foreach(set, headers: true, header_converters: lambda { |name| convert[name] }) do |row|
    magic_card_info = row.to_h
    card = Card.create(magic_card_info)
    magicset.cards << card
  end
end
