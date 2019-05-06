# frozen_string_literal: true

require 'rails_helper'

describe Movie, type: :model do
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :year_released }
    it { should validate_presence_of :image_url }
  end

  describe 'relationships' do
    it { should belong_to :actor }
  end
end
