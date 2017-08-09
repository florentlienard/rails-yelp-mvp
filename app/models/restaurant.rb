class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
  validates :category, allow_blank: false, presence: true, inclusion: {in: ["chinese", "italian", "japanese", "french", "belgian"]}
  has_many :reviews, dependent: :destroy
end
