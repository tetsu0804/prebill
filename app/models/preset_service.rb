# frozen_string_literal: true

class PresetService < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :plan, presence: true
  validates :price, presence: true
end