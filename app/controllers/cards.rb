get '/cards' do
  if params[:card_name]
    @cards = Card.where("name LIKE ?", "%#{params[:card_name]}%")
  end
  if request.xhr?
    erb :'/cards/_card-details', locals: { cards: @cards }, layout: false
  else
    erb :'/cards/index'
  end
end

#show
get '/cards/:id' do
  p params
  if params[:card_name]
    if params[:card_name].length > 1
      card_name = params[:card_name].gsub("_"," ")
      @card = Card.find_by(name: card_name)
    else
      redirect '/cards'
    end
  else
    @card = Card.find_by(name: (params[:id].gsub("_"," ")))
  end
  if request.xhr?
    erb :'/cards/_card-details', locals: { card: @card }, layout: false
  else
    erb :'/cards/show'
  end
end
