require 'sinatra'
require 'sinatra/reloader' if development?
set :port, 4567
set :bind, '0.0.0.0'
get '/' do
    content_type :json
    { smessage: "Welcome to the server 2" }.to_json
end