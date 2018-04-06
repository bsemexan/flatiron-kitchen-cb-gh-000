class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
    
      t.timestamps null: false
      add_foreign_key :recipe_ingredients, :recipes
      add_foreign_key :recipe_ingredients, :ingredients
    end
  end
end
