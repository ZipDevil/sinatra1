require 'sinatra'  

get '/frank-says' do
  'Put this in your pipe & smoke it!'
end

get '/getdoc' do
  "<!DOCTYPE html>
  <html>
  <head>
    <style>
    p {
      text-color: red;
    }
    </style>
  </head>
  <body>
    <div>
      <p>This is the get doc</p>
    </div>
  </body>
  </html>"
end

get '/' do
  "Hello, World!"
end

get '/CodeTheDream' do
  "Hello CodeTheDream"
end

post "/TicTacToe" do
  "Hello TicTacToe"
end

a = "yes"
get "/other" do
  if a == "yes"
  "<h1>Yes</h1>"
  else
  "<h1>No</h1>"
  end
end

