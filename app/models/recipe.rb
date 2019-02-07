class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  belongs_to :user
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true

  def ingredients_attributes=(ingredient_attributes)
    byebug
    self.ingredients = []
    ingredient_attributes.values.each do |ingredient_attribute|
      if ingredient_attribute != ""
        @ingredient = Ingredient.find_or_create_by(ingredient_attribute)
        self.ingredients << @ingredient
        byebug
     end
     self.ingredients.select do |ingredient|
       ingredient != ""
     end
    end
  end

  def number_of_ingredients
    self.ingredients.count
  end

end
