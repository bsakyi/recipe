class CreateRecipeIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_ingredients do |t|
      t.integer :ingredient_id, :recipe_id
      t.timestamps
    end
  end
end
