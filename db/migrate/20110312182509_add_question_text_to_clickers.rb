class AddQuestionTextToClickers < ActiveRecord::Migration
  def self.up
    add_column :clickers, :question_text, :string
  end

  def self.down
    remove_column :clickers, :question_text
  end
end
