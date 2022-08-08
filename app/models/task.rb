# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :task_list

  validates :name,
            presence: true,
            format: { with: /\A([a-zA-Z\d]( )*[a-zA-Z\d]*)+\z/,
                      message: 'Name must be alphanumeric string between 0 and 64 characters' },
            length: { maximum: 64 }
  validates :description,
            length: { maximum: 256 }

  validates :task_list_id, presence: true
end
