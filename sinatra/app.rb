# myapp.rb
require 'sinatra'
set :port, 3000
set :bind, '0.0.0.0'
get '/' do
    content_type :json
    { smessage: "Welcome to the server 1" }.to_json
end