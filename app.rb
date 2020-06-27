require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    str = params[:name].to_s
    "#{str.reverse}"
  end
  
  get "/square/:number" do
    "#{params[:number].to_i*params[:number].to_i}"
  end
  
  get "/say/:number/:phrase" do
    x = params[:number].to_i
    s = ""
    x.times {s += params[:phrase].to_s}
    "#{s}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    op = params[:operation].to_s
    if op == "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    elsif op == "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    elsif op == "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    elsif op == "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
  
end