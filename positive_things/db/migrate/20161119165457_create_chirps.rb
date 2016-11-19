class CreateChirps < ActiveRecord::Migration
  def change
    create_table :chirps do |t|
      t.string :title
      t.string :content

      t.timestamps null: false
    end
  end
end
