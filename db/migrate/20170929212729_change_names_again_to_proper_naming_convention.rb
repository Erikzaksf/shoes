class ChangeNamesAgainToProperNamingConvention < ActiveRecord::Migration[5.1]
  def change
    rename_column :shoes_stores, :stores_id, :store_id
    rename_column :shoes_stores, :shoes_id, :shoe_id
  end
end
