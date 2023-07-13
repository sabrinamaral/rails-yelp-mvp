class Restaurant < ApplicationRecord
  CATEGORIES = %w[Chinese Italian Japanese French Belgian].freeze
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: CATEGORIES,
                                    message: `%{value} is not a valid category` }
  has_many :reviews, dependent: :destroy
end
