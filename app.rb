require 'bundler/setup'
Bundler.require :default
require 'pry'

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
  erb :index
end

get '/shoes' do
  @shoes = Shoe.all
  erb :shoes
end


get '/stores' do
  @stores = Store.all
  erb :stores
end

get '/add_shoe' do
  erb :add_shoe
end


post '/add_shoe' do
  name = params.fetch 'name'
  price = params.fetch 'price'

  shoe = Shoe.create({:name => name, :price => price})

  redirect '/shoes'
end

get '/shoes/:id' do
  @shoe = Shoe.find(params.fetch('id').to_i)
  @price = @shoe.price
  @store_id = @shoe.store_ids

  erb :shoe
end

get '/add_store' do
  erb :add_store
end




post '/add_store' do
  name = params.fetch 'name'
  store = Store.create({:name => name})

  redirect '/stores'
end

get '/stores/:id' do
  @store = Store.find(params.fetch('id').to_i)
  @name = @store.name

  erb :store
end





patch '/shoes/:id' do
  name = Store.find(params.fetch('name'))
  @store_ids = @shoe.store_ids
  @shoe = Shoe.find(params.fetch('id').to_i)
  Shoe.new({:store_id => store_id})
  redirect '/shoes'
end
