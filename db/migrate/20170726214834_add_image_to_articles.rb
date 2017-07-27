class AddImageToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :img, :string
    
  end
end
