require 'sinatra'

get '/' do
  puts params
  erb :index
end

post '/' do
  puts params
  @username = params[:username]
  erb :index
end

get '/user/:name' do
  @name = params[:name]
  erb :index
end

get '/:name/:age' do
  puts params
  @name = params[:name]
  @age = params[:age]
  erb :index
end

get '/coaches' do
  @danceparty = ['sam', 'guillaume', 'ryan']
  erb :coaches # pass @coaches
end
