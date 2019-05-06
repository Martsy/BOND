# frozen_string_literal: true

class Actor < ApplicationRecord
  has_many :movies

  validates_presence_of :name
  validates_presence_of :age
  validates_presence_of :nationality
  validates_presence_of :image_url

  def self.average_age
    average(:age)

    def self.nationality_unique
      pluck(:nationality).distinct
    end
  end

  def movie_count
    movies.count
  end

  def self.movies_count
    (:movies).count
  end
end
