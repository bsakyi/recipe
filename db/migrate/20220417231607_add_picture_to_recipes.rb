class AddPictureToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :picture, :string
  end
end
