# frozen_string_literal: true
class CommentSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :user, :therapy
  def user
    object.user.id
  end

  def therapy
    object.therapy.id
  end
end
