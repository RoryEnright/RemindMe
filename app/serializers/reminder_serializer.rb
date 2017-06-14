# frozen_string_literal: true
class ReminderSerializer < ActiveModel::Serializer
  attributes :id, :content, :day, :when, :editable

  def editable
    scope == object.user
  end

  def day
    object.day.strftime('%B %d, %Y')
  end

  def when
    object.when.strftime('%I:%M %p')
  end
end
