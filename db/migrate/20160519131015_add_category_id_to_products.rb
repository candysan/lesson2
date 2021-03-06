class AddCategoryIdToProducts < ActiveRecord::Migration
  def change
  end

  def self.up
    add_column :products, :category_id, :integer
    add_index :products, :category_id
  end

  def self.down
    remove_index :products, :column => :category_id
    remove_column :products, :category_id
  end

end
