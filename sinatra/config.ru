require './app'
configure :development do
  register Sinatra::Reloader
end
run Sinatra::Application