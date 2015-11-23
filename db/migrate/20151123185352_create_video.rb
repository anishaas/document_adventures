class CreateVideo < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :video_url
      t.belongs_to :media_board, index: true, foreign_key: true
    end
  end
end
