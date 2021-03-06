# frozen_string_literal: true

class Movie < ApplicationRecord
  belongs_to :actor

  validates_presence_of :title
  validates_presence_of :year_released
  validates_presence_of :image_url
end
