class Lend < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :borrowed_at, :book, :user, presence: true
  validate :borrowed_at_cannot_be_greater_or_equal_to_returned_at,
           :returned_at_cannot_be_greater_than_six_months_after_borrowed_at,
           :user_cannot_have_more_than_two_books_without_returning

  def self.list
    Lend.joins(:book, :user).select("lends.*, books.name as book_name, users.name as user_name")
  end 

  private

  def borrowed_at_cannot_be_greater_or_equal_to_returned_at
    return if borrowed_at.blank? || returned_at.blank?

    if borrowed_at >= returned_at
      errors.add(:borrowed_at, "can't be greater or equal to returned_at")
    end
  end

  def returned_at_cannot_be_greater_than_six_months_after_borrowed_at
    return if borrowed_at.blank? || returned_at.blank?

    if returned_at > borrowed_at + 6.months
      errors.add(:returned_at, "can't be greater than 6 months after borrowed_at")
    end
  end

  def user_cannot_have_more_than_two_books_without_returning
    return if returned_at.present?

    if user.lends.where(returned_at: nil).count >= 2
      errors.add(:user_id, "can't have more than 2 books without returning")
    end
  end
end
