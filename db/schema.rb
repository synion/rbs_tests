# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_220_510_105_923) do
  create_table 'actors', force: :cascade do |t|
    t.string 'first_name', null: false
    t.string 'last_name', null: false
    t.date 'birthdate', null: false
    t.integer 'country_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['country_id'], name: 'index_actors_on_country_id'
  end

  create_table 'categories', force: :cascade do |t|
    t.string 'name', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'categories_movies', id: false, force: :cascade do |t|
    t.integer 'movie_id', null: false
    t.integer 'category_id', null: false
    t.index %w[category_id movie_id], name: 'index_categories_movies_on_category_id_and_movie_id'
    t.index %w[movie_id category_id], name: 'index_categories_movies_on_movie_id_and_category_id'
  end

  create_table 'countries', force: :cascade do |t|
    t.string 'name', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'movies', force: :cascade do |t|
    t.string 'title', null: false
    t.text 'description'
    t.date 'premiere_date'
    t.integer 'country_id', null: false
    t.integer 'duration_in_minutes'
    t.decimal 'rate'
    t.integer 'number_of_votes'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['country_id'], name: 'index_movies_on_country_id'
  end

  create_table 'movies_platforms', id: false, force: :cascade do |t|
    t.integer 'movie_id', null: false
    t.integer 'platform_id', null: false
    t.index %w[movie_id platform_id], name: 'index_movies_platforms_on_movie_id_and_platform_id'
    t.index %w[platform_id movie_id], name: 'index_movies_platforms_on_platform_id_and_movie_id'
  end

  create_table 'platforms', force: :cascade do |t|
    t.string 'name', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'roles', force: :cascade do |t|
    t.string 'name'
    t.integer 'movie_id', null: false
    t.integer 'actor_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['actor_id'], name: 'index_roles_on_actor_id'
    t.index ['movie_id'], name: 'index_roles_on_movie_id'
  end

  add_foreign_key 'actors', 'countries'
  add_foreign_key 'movies', 'countries'
  add_foreign_key 'roles', 'actors'
  add_foreign_key 'roles', 'movies'
end
