require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :homepage
  end
  
  get '/' do
    erb :index
  end

 post '/' do
  text_from_user = params[:user_text]
 
  @analyzed_text = TextAnalyzer.new(text_from_user)
 
  erb :results
end

end
