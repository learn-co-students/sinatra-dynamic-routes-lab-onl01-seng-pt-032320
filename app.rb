require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name'
    @str = params[:name].to_s
    "#{str.reverse!}"
  end
  
  get '/square/:number'
    "#{params[:number]*params[:number]}"
  end
  
  get '/say/:number/:phrase'
    @x = params[:number]
    @s = ""
    x.times.do 
      @s += params[:phrase]
  end
end