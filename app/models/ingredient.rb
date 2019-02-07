class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  has_many :allergens
  has_many :users, through: :allergens

  def users_allergic
    list = []
    User.all.each do |user|
      user.allergens.each do |allergen|
        if allergen.ingredient_id == self.id
          list << allergen
        end
      end
    end
    list.count
  end
end
