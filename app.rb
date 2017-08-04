require "sinatra"
# require_relative "sum.rb"
# require_relative "check.rb"

get '/events' do 
	p"Events"
	erb :events
end 

post '/events' do 
	redirect '/verify'  
end

get '/contact_us' do
	p "contact_us"
	erb :contact_us
end

post '/contact_us' do
	redirect '/verify'
end 

get '/products' do
	p "products"
	erb :products
end

post '/products' do
	redirect '/verify'
end

get '/' do 
	erb :user_name 
end 

post '/user_name' do
	user_name = params[:user_name]
	p user_name
 	redirect '/password?user_name=' + user_name
end

get '/password' do 
	user_name = params[:user_name]
	password = params[:password]
	p user_name
	erb :password, :locals => {:user_name=>user_name, :password=>password}
end 

post '/password' do 
	user_name = params[:user_name]
	password = params[:password]
	# userpass = verify("#{user_name}", "#{password}")
	p user_name
	p userpass
	# if verify("#{user_name}", "#{password}") == true
	# 	redirect '/index?username=' + user_name + '&password=' + password 
	# else 
	# redirect '/verify'
	# end  
end

get '/verify' do
	user_name = params[:user_name]
	password = params[:password]
	erb :verify
end 

post '/verify' do
	# redirect '/user_name?'
end

get '/user_name' do 
	erb :user_name 
end 

post '/user_name' do
user_name = params[:user_name]
 redirect '/password?user_name=' + user_name
end


get '/index' do 
	user_name = params[:user_name]
	password = params[:password]
	erb :index, :locals => {:user_name=>user_name, :password=>password}
end 

post '/index' do
  # "You selected #{params[:radio]}"
  	radio = params[:radio]
  	user_name = params[:user_name]
	password = params[:password]
 redirect '/two_numbers?radio=' + radio
end

get '/two_numbers' do
	radio = params[:radio]
	erb :two_numbers, :locals => {:radio=>radio}
end

 post '/two_numbers' do 
	num1 = params[:num1]
	num2 = params[:num2]
	radio = params[:radio]
	# totalnumbers = calc(radio, num1.to_f, num2.to_f)
	p totalnumbers
redirect '/total?radio=' + radio + '&num1=' + num1 + '&num2=' + num2 + '&totalnumbers=' + totalnumbers
end 

get '/total' do 
	num1 = params[:num1]
	num2 = params[:num2]
	radio = params[:radio]
	totalnumbers = params[:totalnumbers]
	p totalnumbers
	erb :total, :locals => {:radio=>radio, :num1=>num1, :num2=>num2, :totalnumbers=>totalnumbers }
end 

get '/index' do 
	user_name = params[:user_name]
	password = params[:password]
	erb :index, :locals => {:user_name=>user_name, :password=>password}
end 

post '/index' do
  # "You selected #{params[:radio]}"
  	radio = params[:radio]
  	user_name = params[:user_name]
	password = params[:password]
 redirect '/two_numbers?radio=' + radio
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
