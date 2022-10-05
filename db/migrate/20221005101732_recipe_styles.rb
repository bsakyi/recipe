class RecipeStyles < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_styles do |t|
      t.integer :style_id, :recipe_id
    end 
  end
end
