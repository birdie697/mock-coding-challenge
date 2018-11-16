class Contributor < ApplicationRecord
  validates :name, presence: true

  belongs_to :repo

end
