class AddCorrectOptionToClickers < ActiveRecord::Migration
  def self.up
    add_column :clickers, :correct_option, :integer
  end

  def self.down
    remove_column :clickers, :correct_option
  end
end
