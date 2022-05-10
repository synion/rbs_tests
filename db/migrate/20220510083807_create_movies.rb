# frozen_string_literal: true

class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false, unique: true
      t.text :description
      t.date :premiere_date
      t.references :country, null: false, foreign_key: true
      t.integer :duration_in_minutes
      t.decimal :rate
      t.integer :number_of_votes

      t.timestamps
    end
  end
end
