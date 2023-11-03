class AddOverallToWalts < ActiveRecord::Migration[6.1]
  def change
    add_column :walts, :overall, :integer
  end
end
