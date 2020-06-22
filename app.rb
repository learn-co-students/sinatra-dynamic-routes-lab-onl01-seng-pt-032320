require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    number = params[:number].to_i * params[:number].to_i
    @squared = number.to_s
  end 

  get '/say/:number/:phrase' do
    phrase = params[:phrase] 
    number = params[:number].to_i
    string = ""
    @phrases = number.times do
      string += phrase
    end
  string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    params[:operation]
    params[:number1]
    params[:number2]
  end

end