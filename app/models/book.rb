class Book < ApplicationRecord
  has_many :lends
  
  validates :name, uniqueness: { case_sensitive: false }
end
