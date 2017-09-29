class CreateManyToManyRelation < ActiveRecord::Migration[5.1]
  def change
    create_table :shoe_brands_shoe_stores do |t|
      t.column :shoe_brands_id, :integer
      t.column :shoe_stores_id, :integer

      t.timestamps
    end
    change_table :shoe_brands do |t|

      t.timestamps
    end
    change_table :shoe_stores do |t|

      t.timestamps
    end
  end
end
