class ChangeTableNamesToAvoidErrors < ActiveRecord::Migration[5.1]
  def self.up
    rename_table :shoe_brands, :shoes
  end
  def self.down
    rename_table :shoes, :shoe_brands
  end
  def self.up
    rename_table :shoe_stores, :stores
  end
  def self.down
    rename_table :stores, :shoe_stores
  end
  def self.up
    rename_table :shoe_brands_shoe_stores, :shoes_stores
  end
  def self.down
    rename_table :shoes_stores, :shoe_brands_shoe_stores
  end
end
