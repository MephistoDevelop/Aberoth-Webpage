# frozen_string_literal: true

class Article < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :lastname, presence: true, length: { minimum: 10 }
  validates :age, presence: true, length: { minimum: 1 }
end
