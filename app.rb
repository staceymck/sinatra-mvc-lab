require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end

  get '/piglatinize' do
    erb :results.erb
  end

  post '/piglatinize' do
    @result = PigLatinizer.new.piglatinize(params[:user_phrase])

    erb :result
  end
end