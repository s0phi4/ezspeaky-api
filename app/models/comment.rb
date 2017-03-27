# frozen_string_literal: true
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :therapy

  validates :title, presence: true
  validates :content, presence: true
end
