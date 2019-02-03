class AddBreadToHoagie < ActiveRecord::Migration[5.1]
  def change
    add_column :hoagies, :bread, :string
  end
end
