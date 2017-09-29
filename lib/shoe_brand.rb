class Shoe < ActiveRecord::Base
  has_and_belongs_to_many :shoe_stores
end
