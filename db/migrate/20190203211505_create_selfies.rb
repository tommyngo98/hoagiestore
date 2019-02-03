class CreateSelfies < ActiveRecord::Migration[5.1]
  def change
    create_table :selfies do |t|
      t.string :title
      t.text :caption

      t.timestamps
    end
  end
end
