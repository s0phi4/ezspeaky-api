# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :therapy, through: :comments
  has_many :comments
end
