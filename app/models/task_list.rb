# frozen_string_literal: true

class TaskList < ApplicationRecord
  has_many :tasks
end
