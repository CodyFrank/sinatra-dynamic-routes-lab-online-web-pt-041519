require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num*@num}"
  end

  get '/say/:number/:phrase' do
    string = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do 
      string += @phrase
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ""
    params.each do |word|
      string += "#{word[1]} "
    end
    string.strip! 
    string +="."
    string
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation]=="add"
      "#{@num1+@num2}"
    elsif params[:operation]=="subtract"
      "#{@num1-@num2}"
    elsif params[:operation]=="multiply"
      "#{@num1*@num2}"
      elsif params[:operation]=="divide"
        "#{@num1/@num2}"
    end
  end

end