class ChangeOptionCountDefaults < ActiveRecord::Migration


  def self.up

    change_column_default(:clickers, :option1_count, 0)
    change_column_default(:clickers, :option2_count, 0)
    change_column_default(:clickers, :option3_count, 0)
    change_column_default(:clickers, :option4_count, 0)
  end



  def self.down

    change_column_default(:clickers, :option1_count, nil)
    change_column_default(:clickers, :option2_count, nil)
    change_column_default(:clickers, :option3_count, nil)
    change_column_default(:clickers, :option4_count, nil)
  end


end
