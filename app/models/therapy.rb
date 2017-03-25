# frozen_string_literal: true
class Therapy < ApplicationRecord
  has_many :videos
  validates :name, presence: true
end
