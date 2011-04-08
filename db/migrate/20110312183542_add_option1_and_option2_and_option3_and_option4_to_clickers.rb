class AddOption1AndOption2AndOption3AndOption4ToClickers < ActiveRecord::Migration
  def self.up
    add_column :clickers, :option1, :string
    add_column :clickers, :option2, :string
    add_column :clickers, :option3, :string
    add_column :clickers, :option4, :string
  end

  def self.down
    remove_column :clickers, :option4
    remove_column :clickers, :option3
    remove_column :clickers, :option2
    remove_column :clickers, :option1
  end
end
