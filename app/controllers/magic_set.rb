get '/magic_set' do
  @magic_sets = Magic_set.all
  erb :'/magic_set/index'
end

get '/cards/dtk/:id' do
  p params
  @card = Card.find(params[:id])
  p @card
  if request.xhr?
    erb :'/cards/dtk/_card-details', layout: false
  else
    erb :'/cards/dtk/show'
  end
end
