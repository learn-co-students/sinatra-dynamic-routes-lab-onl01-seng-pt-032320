require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @reverse_user_name = params[:name].reverse 
  end 

  get '/square/:number' do
    @number_square = (params[:number].to_i ** 2).to_s
  end 

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase] 
    [@phrase].cycle(@number).to_a.join(' ')
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1]
    @word_2 = params[:word2] 
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]

    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end 

  get '/:operation/:number1/:number2' do 
    @op = params[:operation]
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    case @op
    when "add" 
      @num_1 + @num_2
    when "subtract"
      @num_1 - @num_2
    when "multiply" 
      @num_1 * @num_2
    when "divide"
      @num_1 / @num_2
    end.to_s
  end 
end