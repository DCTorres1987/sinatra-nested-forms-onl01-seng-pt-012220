require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get '/' do
      erb :'pirates/index' 
    end
    
    get '/new' do 
      erb :'pirates/new'
    end

    post '/pirates' do
      @puppy = Puppy.new(params[:name],params[:breed],params[:age])
      erb :'pirates/show'
    end

  end
end
