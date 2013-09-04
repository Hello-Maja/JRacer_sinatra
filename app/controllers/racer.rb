# GET ===================================
get '/racer/:player_id' do

	@player_id = params[:player_id]

  erb :racer
end

# POST ==================================
post '/winner/:winner' do

@winner = :winner

@game.update(winner: @winner)

erb :winner
end

