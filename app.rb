require "sinatra"
require_relative "sum.rb"

get '/' do 
	erb :index
end 

post '/index' do
  # "You selected #{params[:radio]}"
  radio = params[:radio]
  puts "RADIO IN INDEX #{radio}"
 redirect '/two_numbers?radio=' + radio
end

get '/two_numbers' do
	radio = params[:radio]
	puts "RADIO IN TWONUMBERS GET #{radio}"
	erb :two_numbers, :locals => {:radio=>radio}
end

 post '/two_numbers' do 
	num1 = params[:num1]
	num2 = params[:num2]
	radio = params[:radio]
	puts "RADIO IN TWONUMBERS POST #{radio}"
	totalnumbers = calc(radio, num1.to_i, num2.to_i)
redirect '/total?radio=' + radio + '&num1=' + num1 + '&num2=' + num2 + '&totalnumbers=' + totalnumbers
end 

get '/total' do 
	num1 = params[:num1]
	num2 = params[:num2]
	radio = params[:radio]
	puts "RADIO IN TOTAL GET #{radio}"
	totalnumbers = params[:totalnumbers]
	erb :total, :locals => {:radio=>radio, :num1=>num1, :num2=>num2, :totalnumbers=>totalnumbers }
end 

# get '/three_numbers' do
# 	age = params[:age]
# 	name = params[:user_name]
# 	erb :three_numbers, :locals => {:name=>name, :age=>age}
# end

# post '/three_numbers' do 
# 	age = params[:age]
# 	name = params[:user_name]
# 	num1 = params[:num1]
# 	num2 = params[:num2]
# 	num3 = params[:num3]
# 	totalnumbers = sum(num1.to_i,num2.to_i,num3.to_i)
# redirect '/total?user_name=' + name + '&age=' + age + '&num1=' + num1 + '&num2=' + num2 + '&num3=' + num3

# end 

# get '/total' do 
# 	age = params[:age]
# 	name = params[:user_name]
# 	num1 = params[:num1]
# 	num2 = params[:num2]
# 	num3 = params[:num3]
# 	totalnumbers = params[:totalnumbers]
# 	erb :total, :locals => {:name=>name, :age=>age, :num1=>num1, :num2=>num2, :num3=>num3, :totalnumbers=>totalnumbers }
# end 
