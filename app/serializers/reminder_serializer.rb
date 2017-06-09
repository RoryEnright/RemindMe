# frozen_string_literal: true
class ReminderSerializer < ActiveModel::Serializer
  attributes :id, :content, :day, :when, :editable

  def editable
    scope == object.user
  end
end
