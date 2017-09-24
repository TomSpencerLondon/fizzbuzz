require 'sinatra'
require './lib/fizzbuzz.rb'

enable :sessions
get '/' do
  p session
  @result = fizzbuzz(15)
  erb :index
end

post '/fizz' do
  session[:guess] = params[:guess]
  redirect to ('/')
end
