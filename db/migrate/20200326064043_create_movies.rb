class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :category
      t.datetime :year
      t.string :trailer
      t.string :cover
      t.integer :rating
      t.boolean :active
      t.datetime :publish
      t.string :schedule

      t.timestamps
    end
  end
end
