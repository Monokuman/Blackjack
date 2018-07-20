require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    # @playerCard1 = getCard 
    # @playerCard2 = randomNumber
  
    
    
    return erb :index
  end
  
  get '/results' do
    return erb :index
  end
  
  post '/gameplay' do
    puts params
    @choice = params["choice"].to_s
    @playerCard1 = params["playerCard1"].to_i
    @playerCard2 = params["playerCard2"].to_i
    @playerCard3 = 0
    puts @choice
    if @choice == "HIT" || @choice == "Hit"
      puts "Hit me"
    @playerCard3 = getCard 
    end
    @total = @playerCard2 + @playerCard3 
    puts "Card is #{@playerCard3}"
    puts "Total is #{@total}"
      if @total < 21 
        puts "Under 21"
        @message = "You won"
      else 
        puts "You lose"
        @message =  "You Lost"
      end 
    
    return erb :games
  end
  
  get '/gamestart' do
    @playerCard1 = getCard 
    @playerCard2 = randomNumber
    @playerCard3 = 0
    return erb :games
  end
end 