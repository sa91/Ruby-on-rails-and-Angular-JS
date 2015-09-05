class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :issue, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
