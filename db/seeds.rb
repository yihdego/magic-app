require 'csv'

CSV.foreach('db/DTK.csv', headers: true, header_converters: :symbol) do |row|
  magic_card_info = row.to_h
  Card.create(magic_card_info)
end
