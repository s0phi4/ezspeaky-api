# frozen_string_literal: true
class Video < ApplicationRecord
  belongs_to :therapy
  validates :name, :url, presence: true
end
