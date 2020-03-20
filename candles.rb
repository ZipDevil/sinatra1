require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :howmany
end

# get '/howmany' do
#   erb :howmany
# end

post '/candles' do
  erb :candles
end