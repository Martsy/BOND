# frozen_string_literal: true

class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.integer :age
      t.string :nationality
      t.string :image_url

      t.timestamps
    end
  end
end
