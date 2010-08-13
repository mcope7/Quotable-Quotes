class ValidatePeople < ActiveRecord::Migration
  def self.up
    change_column :people, :name, :string, :null => false
  end

  def self.down
  end
end
