class CreateHappyTrees < ActiveRecord::Migration
  def change
    create_table :happy_trees do |t|
      t.string :color
      t.string :brush
      t.boolean :background
      t.text :description

      t.timestamps null: false
    end
  end
end
