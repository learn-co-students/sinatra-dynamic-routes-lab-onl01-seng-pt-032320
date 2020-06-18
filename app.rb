require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @res = (params[:number].to_i * params[:number].to_i).to_s
    "#{@res}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @str = params[:phrase]
    @res=""
    @num.times do
      @res += @str
    end
    @res
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @str = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]
    "#{@str}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @x = params[:number1].to_i
    @y = params[:number2].to_i
      if @op == "add"
        @val = @x + @y

      elsif @op == "subtract"
        @val = @x - @y

      elsif @op == "multiply"
        @val = @x * @y

      else @op == "divide"
        @val = @x / @y
      end
        "#{@val}"
  end
end
