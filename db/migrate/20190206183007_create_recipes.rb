class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :cook_time
      t.integer :user_id

      t.timestamps
    end
  end
end
