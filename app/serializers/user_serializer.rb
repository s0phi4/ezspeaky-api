# frozen_string_literal: true
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :comments

    def comments
      object.comments.pluck(:id)
    end
end
