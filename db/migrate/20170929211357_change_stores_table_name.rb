class ChangeStoresTableName < ActiveRecord::Migration[5.1]
  def self.up
    rename_table :shoe_stores, :stores
  end
  def self.down
    rename_table :stores, :shoe_stores
  end
end
