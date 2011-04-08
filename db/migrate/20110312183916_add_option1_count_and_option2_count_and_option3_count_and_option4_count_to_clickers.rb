class AddOption1CountAndOption2CountAndOption3CountAndOption4CountToClickers < ActiveRecord::Migration
  def self.up
    add_column :clickers, :option1_count, :integer
    add_column :clickers, :option2_count, :integer
    add_column :clickers, :option3_count, :integer
    add_column :clickers, :option4_count, :integer
  end

  def self.down
    remove_column :clickers, :option4_count
    remove_column :clickers, :option3_count
    remove_column :clickers, :option2_count
    remove_column :clickers, :option1_count
  end
end
