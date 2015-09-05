class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.references :member, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
