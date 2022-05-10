# frozen_string_literal: true

class CreateActors < ActiveRecord::Migration[7.0]
  def change
    create_table :actors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :birthdate, null: false
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
