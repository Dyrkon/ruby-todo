# frozen_string_literal: true

class TaskList < ApplicationRecord
  has_many :tasks

  validates :name,
            presence: true,
            format: { with: /\A([a-zA-Z\d]( )*[a-zA-Z\d]*)+\z/,
                      message: 'Name must be alphanumeric string between 0 and 64 characters' },
            length: { maximum: 64 }
end
