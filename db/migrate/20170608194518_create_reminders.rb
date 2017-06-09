# frozen_string_literal: true
class CreateReminders < ActiveRecord::Migration[5.0]
  def change
    create_table :reminders do |t|
      t.string :content, null: false
      t.date :day, null: true
      t.time :when, null: true
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
