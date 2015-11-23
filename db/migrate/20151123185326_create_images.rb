class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_url
      t.belongs_to :media_board, index: true, foreign_key: true
    end
  end
end
