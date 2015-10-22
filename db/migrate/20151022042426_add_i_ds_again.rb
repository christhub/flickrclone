class AddIDsAgain < ActiveRecord::Migration
  def change
    add_column :pictures, :user_id, :integer
    add_column :pictures, :post_id, :integer
    add_column :tags, :user_id, :integer
  end
end
