get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  user = User.new(params[:user])
  user.password = params[:password]
  if user.save
    redirect '/'
  else
    @error = "Invalid username, email or password"
    erb :'/users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end
