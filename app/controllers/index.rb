enable :sessions
# GET ===================================

get '/' do
  erb :index
end

# POST ==================================

post '/' do
    @player_id = Player.find_by(email: params[:email]).id
  
    # redirect "/play/"
    redirect "/play/#{@player_id}"
end
