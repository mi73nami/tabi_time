class RenameAdressColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :adress, :address
  end
end
