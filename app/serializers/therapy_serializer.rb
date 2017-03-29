# frozen_string_literal: true
class TherapySerializer < ActiveModel::Serializer
  attributes :id, :name, :videos
  def videos
    object.videos.pluck(:id)
  end
end
