require './config/environment'
require './app/models/tweet'
 
class ApplicationController < Sinatra::Base
 
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end   
 
  get '/' do
      Tweet.new("shakira-shakira", "My hips don't lie.")
      Tweet.new("Frank-Rocha", "Lies.")
      Tweet.new("Josue-Bravo", "Did you see Spiderman in Captain America Civil War? #captain-america-civil-war")
      Tweet.new("Frank-Rocha", "Lies.")
    @tweets = Tweet.all
    erb :index
  end
 
end