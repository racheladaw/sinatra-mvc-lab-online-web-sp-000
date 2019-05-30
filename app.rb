require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @word = PigLatinize.new
    @piglatinized_word = @word.piglatinize(params[:user_phrase])
    # erb :show
  end

end
