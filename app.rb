require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @word = Piglatinize.new
    @word.piglatinize(params[:string])
  end

  get '/result/:id' do
  end
end
