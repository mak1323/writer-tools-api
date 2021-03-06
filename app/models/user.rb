# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :favorites
  has_many :saved_characters
  has_many :examples
end
