require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "monkey"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session["item"] = params[:item_form]
  end

end
