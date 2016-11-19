class CreateFoodTypes < ActiveRecord::Migration
  def change
    create_table :food_types do |t|
      t.string :name
      t.integer :calories
      t.text :desc

      t.timestamps null: false
    end
  end
end
