require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/square/:number" do
    @number = params[:number]
    square = @number.to_i * @number.to_i
    "#{square.to_s}"
  end

  get "/say/:number/:phrase" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/:operation/:number1/:number2" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

end
