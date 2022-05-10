# frozen_string_literal: true

class CreateJoinTableMoviesCategories < ActiveRecord::Migration[7.0]
  def change
    create_join_table :movies, :categories do |t|
      t.index %i[movie_id category_id]
      t.index %i[category_id movie_id]
    end
  end
end
