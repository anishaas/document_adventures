class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :description
      t.belongs_to :user, index: true, foreign_key: true
    end
  end
end
