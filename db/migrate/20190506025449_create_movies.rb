# frozen_string_literal: true

class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year_released
      t.string :image_url

      t.timestamps
    end
  end
end
