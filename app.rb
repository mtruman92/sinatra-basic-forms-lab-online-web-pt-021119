require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :homepage
  end
  
  get '/' do
    erb :index
  end

post "/puppy" do
      @puppy = Puppy.new(params)
      @name = @puppy.name
      @breed = @puppy.breed
      @months_old = @puppy.months_old
      erb :display_puppy
    end

end
