class CreateBrandsAndStoresTables < ActiveRecord::Migration[5.1]
  def change
    create_table :shoe_brands do |t|
      t.column :name, :string
      t.column :price, :money
    end
    create_table :shoe_stores do |t|
      t.column :name, :string
    end
  end
end
