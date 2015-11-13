class AddBoardToPins < ActiveRecord::Migration
  def change
    add_column :pins, :board_id, :integer, references: "board"
  end
end
