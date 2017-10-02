get '/magic_set' do
  @magic_sets = MagicSet.all
  erb :'/magic_sets/index'
end

get '/magic_set/:id' do
  p params
  @magic_set = MagicSet.find(params[:id])
  p @magic_set
  # if request.xhr?
  #   erb :'/cards/dtk/_card-details', layout: false
  # else
    erb :'/magic_sets/show'
  # end
end
