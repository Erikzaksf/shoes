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
  @stores.each do |store|
    if store.shoes == []
      store.destroy
    end
  end
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

  erb :shoe
end
