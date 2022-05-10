class CreateJoinTableMoviesPlatforms < ActiveRecord::Migration[7.0]
  def change
    create_join_table :movies, :platforms do |t|
      t.index [:movie_id, :platform_id]
      t.index [:platform_id, :movie_id]
    end
  end
end
