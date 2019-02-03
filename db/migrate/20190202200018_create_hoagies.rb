class CreateHoagies < ActiveRecord::Migration[5.1]
  def change
    create_table :hoagies do |t|
      t.string :bread
      t.text :ingredients
      t.text :size

      t.timestamps
    end
  end
end
