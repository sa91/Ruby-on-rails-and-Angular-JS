class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :Issue, index: true, foreign_key: true
      t.string :body
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
