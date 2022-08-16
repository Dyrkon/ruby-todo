# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, 
  presence: true, 
  uniqueness: true,
  format: { with: URI::MailTo::EMAIL_REGEXP,
                      message: 'Name must be alphanumeric string between 0 and 64 characters' },
  length: { maximum: 64 }

  validates :password,
  presence: true,
  length: { maximum: 64 }
end
