# frozen_string_literal: true
class CreateTherapies < ActiveRecord::Migration[5.0]
  def change
    create_table :therapies do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
