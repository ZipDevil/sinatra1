require 'sinatra'  
enable :sessions

get '/' do
  if session[:name]
    "Welcome to Sinatra #{session[:name]}"
  else
    "Welcome, please log in."
  end
end

get "/submitted" do
  "Submitted: #params[:message]}"
end

post "/submitted" do
  if params[:message] == "welcome"
    "Thank you!"
  else
    "What do you mean by #{params[:message]}?"
  end
end

get '/getdoc' do
  "<!DOCTYPE html>
  <html>
  <head>
    <style>
    p { text-color: red; }
    </style>
  </head>
  <body>
    <div>
      <p>This is the get doc</p>
    </div>
  </body>
  </html>"
end

get "/login.html" do
  "Another method."
end

post "/login" do
  if params[:username] == "bob" && params[:password] == "pass"
    "<h1>SUCCESS</h1>"
  else
    "<h1>FAILURE</h1>"
  end
end

post "/submitted" do
  "<h1>Form Submitted</h1>"
end

get "/set" do
  session[:message] = params[:message]
  "session saved"
end 

get "/get" do
  session[:message]
end

get "hi" do
  session[:name] = params[:name]
  "Name saved."
end

post "greeting" do
  "Hi, it's very nice to meet you, #{session[:name]}"
end

get '/frank-says' do
  'Put this in your pipe & smoke it!'
end

get '/CodeTheDream' do
  "Hello, welcome to CodeTheDream!"
end

post "/TicTacToe" do
  "Hello, TicTacToe."
end

a = "yes"
get "/other" do
  if a == "yes"
  "<h1>Yes</h1>"
  else
  "<h1>No</h1>"
  end
end

