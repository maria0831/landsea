class CreateWaltTagRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :walt_tag_relations do |t|
      t.references :walt, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
