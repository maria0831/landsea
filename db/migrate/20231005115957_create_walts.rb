class CreateWalts < ActiveRecord::Migration[6.1]
  def change
    create_table :walts do |t|
      t.string :title
      t.string :image
      t.text :about

      t.timestamps
    end
  end
end
