# frozen_string_literal: true
class TherapySerializer < ActiveModel::Serializer
  attributes :id, :name

  # def videos
  #   object.videos.pluck(id)
  # end
end
