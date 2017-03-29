# frozen_string_literal: true
class Therapy < ApplicationRecord
  has_many :users, through: :comments
  has_many :comments
  has_many :videos
  validates :title, :content, presence: true
end
