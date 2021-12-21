class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name 
      t.text :summary 
      t.text :description
      t.timestamps
    end
  end
end
