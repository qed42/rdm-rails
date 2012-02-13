class PopulateCategories < ActiveRecord::Migration
  def self.up
    ['Technology', 'Smart Phones', 'Pan cakes', 'Dell studio 15', 'node.js', 'rubyonrails', 'drupal', 'migration module'].each do |c|
      category = Category.new({:name => c})
      category.save
    end

  end

  def self.down
  end
end
