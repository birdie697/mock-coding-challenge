class Repo < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  has_many :contributors
end
