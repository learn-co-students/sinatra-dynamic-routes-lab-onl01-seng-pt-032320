require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @answer = params[:number].to_i ** 2
    @answer.to_s
  end

  get '/say/:number/:phrase' do
    string = ""
    params[:number].to_i.times do
      string += params[:phrase]
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = params[:word1]+" "+params[:word2]+" "+params[:word3]+" "+params[:word4]+" "+params[:word5]+"."
    string
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      @answer = @num1 + @num2
    elsif @operation == "subtract"
      @answer = @num1 - @num2
    elsif @operation == "multiply"
      @answer = @num1 * @num2
    elsif @operation == "divide"
      @answer = @num1 / @num2
    end
    @answer.to_s
  end

end