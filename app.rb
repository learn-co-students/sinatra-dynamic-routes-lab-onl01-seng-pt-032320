require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do 
    number = params[:number].to_i 
    num_squared = number**2
    num_squared.to_s
  end 
  
  get '/say/:number/:phrase' do 
    output = "" #sets empty string 
    
    params[:number].to_i.times do #retrieves the number given, turnes the number given from a string to an integer, tells it to enter a times loop for that number of repetitions 
    
      output += params[:phrase] # changes the empty string to be the inputted phrase however many times the current repetition is (i.e. repition 1 means the formerly empty string  will have the given phrase once, repetition 2 means the string will now be the given phrase twice. etc...)
    end #ends the times loop (only reached after the block has been repeated the given number of times)
      output #returns the formerly empty string which is now the given phrase repeated the given number of times.
   end 
   
   get '/say/:word1/:word2/:word3/:word4/:word5' do 
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
   end 
   
   get '/:operation/:number1/:number2' do 
     number1 = params[:number1].to_i
     number2 = params[:number2].to_i
     
     answer = "Unable to preform this operation"
     
     case params[:operation]
      when 'add'
       answer = number1 + number2
       answer.to_s
      when 'subtract' 
        answer = number1 - number2 
        answer.to_s
      when 'multiply'
        answer = number1 * number2 
        answer.to_s
      when 'divide'
        answer = number1 / number2 
        answer.to_s 
      end 
    end 
end