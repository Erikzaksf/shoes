class ChangeShoesTableName < ActiveRecord::Migration[5.1]
    def self.up
      rename_table :shoe_brands, :shoes
    end
    def self.down
      rename_table :shoes, :shoe_brands
    end
end
