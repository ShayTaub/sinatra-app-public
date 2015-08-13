require_relative 'bundle/bundler/setup'
require 'sinatra'

# Now we start the actual worker
##################################################################3

port = ENV['PORT'] || 8080
puts "STARTING SINATRA on port #{port}"
set :port, port
set :bind, '0.0.0.0'
post('/somepost') do
  puts "in somepost"
  p params
end
get('/ping') { "pong" }
get('/') { "hi!" }
