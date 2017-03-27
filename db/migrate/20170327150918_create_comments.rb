class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.references :user, :therapy, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
