class ValidateQuotes < ActiveRecord::Migration
  def self.up
    change_column :quotes, :person_id, :integer, :null => false
    change_column :quotes, :text, :text, :null => false
  end

  def self.down
  end
end
