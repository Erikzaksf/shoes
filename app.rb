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
