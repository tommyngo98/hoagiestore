class RemoveBreadFromHoagie < ActiveRecord::Migration[5.1]
  def change
    remove_column :hoagies, :bread, :string
  end
end
