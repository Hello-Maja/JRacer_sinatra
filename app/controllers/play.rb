# GET ===================================
get '/play/:player_id' do

 @player_id = params[:player_id]
  erb :play
end

# POST ==================================

post '/racer/:player_id' do
	@player_id = params[:player_id]
  redirect "/racer/#{@player_id}"
end

