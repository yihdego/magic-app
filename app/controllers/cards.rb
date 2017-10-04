get '/cards' do
  p "this route is getting hit"
  if params[:card_name]
    p params
    p params[:card_name]
    @cards = Card.where(name: params[:card_name])
    p @cards
  end
  if request.xhr?
    erb :'/cards/_card-details', locals: { cards: @cards }, layout: false
  else
    erb :'/cards/index'
  end
end

# post '/cards/dtk' do
#   Card.create(params[:entry])
#   redirect '/cards/dtk'
# end

# get '/cards/:id' do
#   @card = Card.find(params[:id])
#   erb :'/cards/show'
# end

#show
get '/cards/:id' do
  p params
  if params[:card_name]
    if params[:card_name].length > 1
      card_name = params[:card_name].gsub("_"," ")
      card = Card.find_by(name: card_name)
    else
      redirect '/cards'
    end
  else
    card = Card.find_by(name: (params[:id].gsub("_"," ")))
  end
  if request.xhr?
    erb :'/cards/_card-details', locals: { card: card }, layout: false
  else
    erb :'/cards/show'
  end
end
