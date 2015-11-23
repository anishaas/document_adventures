class CreateMediaBoards < ActiveRecord::Migration
  def change
    create_table :media_boards do |t|
      t.belongs_to :experience, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
