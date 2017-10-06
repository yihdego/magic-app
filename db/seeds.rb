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

yihdego = User.create(name: "yihdego", email: "amanuel.email.com", password: "password")

Dir.glob('db/decklists/*.txt') do |decklists|

  deck_name = File.basename(decklists, ".txt")
  deck = Deck.create(name: deck_name, user: yihdego)
  File.open(decklists, "r").each_line do |line|
    quantity_n_card_name = line.split(' ')
    if quantity_n_card_name.length == 2
      card = Card.find_by(name: quantity_n_card_name[1])
      deck.add_decklist(card, quantity_n_card_name[0])
    else
      card = line[1..-1]
      card = Card.find_by(name: card)
      deck.add_decklist(card, quantity_n_card_name[0])
    end
  end
end
