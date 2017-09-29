class ChangeColumnNamesToMatchChanges < ActiveRecord::Migration[5.1]
  def change
     rename_column :shoes_stores, :shoe_stores_id, :stores_id
     rename_column :shoes_stores, :shoe_brands_id, :shoes_id
   end
end
