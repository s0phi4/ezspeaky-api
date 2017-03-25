# frozen_string_literal: true
class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :name, null: false
      t.string :url, null: false
      t.references :therapy, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
