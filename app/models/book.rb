class Book < ApplicationRecord
  has_many :lends
  
  validates :name, :author, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
