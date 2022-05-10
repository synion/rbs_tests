# frozen_string_literal: true

class CreateJoinTableMoviesPlatforms < ActiveRecord::Migration[7.0]
  def change
    create_join_table :movies, :platforms do |t|
      t.index %i[movie_id platform_id]
      t.index %i[platform_id movie_id]
    end
  end
end
