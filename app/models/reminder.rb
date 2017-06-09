# frozen_string_literal: true
class Reminder < ApplicationRecord
  belongs_to :user, inverse_of: :reminders
  # validates :content, :day, :when, :user, presence: true
end
