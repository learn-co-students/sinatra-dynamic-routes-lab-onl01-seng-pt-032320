require_relative 'config/environment'

class App < Sinatra::Base
   get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
   end

   get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
   end

   get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    output = ""
      (1..@number).each{ output += "#{@phrase} "}
    output
   end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
    output = ""
    params.each do |k,v|
      output+= "#{v} " unless v==params.values.last
      output+= "#{v}." if v==params.values.last
    end
    output
   end

   get '/:operation/:number1/:number2' do
    @operation = params[:operation].downcase
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    output = 0
    output = @number1 + @number2 if @operation == "add"
    output = @number1 - @number2 if @operation == "subtract"
    output = @number1 * @number2 if @operation == "multiply"
    output = @number1 / @number2 if @operation == "divide"
    output.to_s
   end
end