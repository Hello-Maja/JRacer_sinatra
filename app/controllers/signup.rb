get '/signup' do 
    @nickname = params[:new_playernickname] 
    @email = params[:new_player_email]
    @password = params[:new_player_password]
  erb :signup
end


post '/signup' do 
  if params[:new_player_password] == params[:confirm_password] 
    @email = params[:new_player_email]
    @password = params[:new_player_password]
    @create_player = Player.new(email: @email, password: @password, nickname: @nickname).save
    @check_player = Player.authentication(params[:new_player_email],params[:new_player_password])
    
      if @check_user.nil?
        redirect "/error"
      else 
        @player_id = Player.find_by(email: params[:new_player_email]).id
        session[:player_id] = @player_id  
        @session = session[:player_id]
        redirect "/play/#{@player_id}"
      end
  else
    redirect "/error"
    erb :error
  end
  erb :signup
end

