require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
    "Hello!"
end

get '/secret' do
    "makers"
end

get '/ruby' do
    "progamming"
end

get '/cat' do
    @random_names = ["Amigo", "Misty", "Almond"].sample
    erb(:index)
end

