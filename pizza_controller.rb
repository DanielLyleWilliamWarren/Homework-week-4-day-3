require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/pizza_order.rb')
also_reload( './models/*')

#INDEX  - first page you'll see on a webpage
get '/pizza-orders' do
    @orders = PizzaOrder.all()
    erb( :index )
end
# NEW
get '/pizza-orders/new' do
  erb ( :new )
end
# SHOW
get '/pizza-orders/:id' do
  @order = PizzaOrder.find(params[:id].to_i)
  erb( :show )
end
# CREATE
post '/pizza-orders' do
  @order = PizzaOrder.new(params)
  @order.save()
  erb(:create)
end
#DELETE

post '/pizza-orders' do
  erb (:destory)
end
