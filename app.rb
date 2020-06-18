require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse 
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
    @sentence ? @sentence += (" " + @phrase) : @sentence = @phrase
    end
    "#{@sentence}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation] == "add"
      @oper = "+"
    elsif params[:operation] == "subtract"
      @oper = "-"
    elsif params[:operation] == "multiply"
      @oper = "*"
    else
      @oper = "/"
    end

    @answer = @num1.send(@oper,@num2)
    "#{@answer}"
  end

end