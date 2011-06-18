require 'sinatra'
PUBLIC_DIR = File.dirname(__FILE__) + '/public'
set :public, PUBLIC_DIR

client = Faye::Client.new('http://localhost:9292/faye')

get('/') do
  File.read(PUBLIC_DIR + '/index.html')
end

get('/post') do
  client.publish('/scrobbles',
    :user => 'sinatra',
    :song => 'current track'
  )
  'yo'
end
