get '/sessions/new' do
  erb :'/sessions/new'
end

post '/sessions' do
  user = User.login(params[:email], params[:password])
  if user != nil
    session[:user_id] = user.id
    redirect '/'
  else
    @error = "Invalid email or password"
    erb :'/sessions/new'
  end
end
