class RenamePasswordField < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.rename :password, :crypted_password
    end
  end

  def self.down
    change_table :users do |t|
      t.rename :crypted_password, :password
    end
  end
end
