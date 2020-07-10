class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.text :material, null: false
      t.text :howto1, null: false
      t.text :howto2, null: false
      t.text :howto3, null: false
      t.text :howto4
      t.text :howto5
      t.text :howto6
      t.text :howto7
      t.text :howto8
      t.text :howto9
      t.text :howto10
      t.timestamps
    end
  end
end
