delete '/entries/:id' do
  @entry = Entry.find(params[:id])
  deck = @entry.deck
  @entry.destroy
  redirect "/decks/#{deck.id}"
end
