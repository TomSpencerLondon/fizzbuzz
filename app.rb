require 'sinatra'
require './lib/fizzbuzz.rb'

enable :sessions

get '/' do
  p session
  @result = fizzbuzz(session[:guess].to_i)
  erb :index
end

get '/fizz' do
  session[:guess] = params[:guess]
  redirect to ('/')
end
