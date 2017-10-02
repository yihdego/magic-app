require 'csv'


  p 'hello world'
  set_name = File.basename('db/DTK.csv'.downcase, ".csv")
  p set_name
  set = MagicSet.create(name: set_name)
  CSV.foreach('db/DTK.csv', headers: true, header_converters: :symbol) do |row|
    magic_card_info = row.to_h
    card = Card.create(magic_card_info)
    set.cards << card
  end
