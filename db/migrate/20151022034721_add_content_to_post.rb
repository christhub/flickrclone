class AddContentToPost < ActiveRecord::Migration
  def change
    add_column :posts, :name, :string
    add_column :posts, :content, :string
  end
end
