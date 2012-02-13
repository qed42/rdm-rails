class ModifyCategories < ActiveRecord::Migration
  def self.up
    remove_column :categories, :user_id
    remove_column :categories, :post_id
  end

  def self.down
    add_column :categories, :user_id
    add_column :categories, :post_id
  end
end
