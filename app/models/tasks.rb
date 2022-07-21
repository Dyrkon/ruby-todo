# frozen_string_literal: true

class Tasks < ApplicationRecord
  belongs_to :task_lists
end
