class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.belongs_to :project, null: false, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
