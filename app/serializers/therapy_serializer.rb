# frozen_string_literal: true
class TherapySerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :videos
  def videos
    object.videos.pluck(:id)
  end
end
