get '/signup' do 
    @nickname = params[:new_playernickname] 
    @email = params[:new_player_email]
    @password = params[:new_player_password]
  erb :signup
end


post '/signup' do 
  puts params.inspect
  if params[:player][:password] == params[:player].delete(:confirm_password) 
    @player = Player.new(params[:player])   
    
    if @player.save 
      session[:player_id] = @player.id  
      redirect "/play/#{@player.id}"
    end
  else
    erb :error
  end
end

