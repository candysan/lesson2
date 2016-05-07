class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
     t.integer :product_id
     t.string  :product_name_ja
     t.string  :category
     t.string  :company
     t.text    :amazon_url
     t.text    :image
     t.text    :text
      t.timestamps 
    end
  end
end
