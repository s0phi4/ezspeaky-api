# frozen_string_literal: true
class VideoSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :therapy

  def therapy
    object.therapy.id
  end
end
