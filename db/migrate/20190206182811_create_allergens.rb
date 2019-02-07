class CreateAllergens < ActiveRecord::Migration[5.2]
  def change
    create_table :allergens do |t|
      t.string :name
      t.integer :user_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
