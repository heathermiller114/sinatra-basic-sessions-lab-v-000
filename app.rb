require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    erb :index
  end
  
  post '/checkout' do
    @item = params[:checkout_item]
  end
  
  get '/checkout' do
    session[:item] = params[:checkout_item]
    @session = session
    erb :checkout
  end
    
  
end