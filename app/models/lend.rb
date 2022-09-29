class Lend < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validate :lent_at_cannot_be_greater_or_equal_to_returned_at,
           :returned_at_cannot_be_greater_than_six_months_after_lent_at,
           :user_cannot_have_more_than_two_books_without_returning

  def lent_at_cannot_be_greater_or_equal_to_returned_at
    return if lent_at.blank? || returned_at.blank?

    if lent_at >= returned_at
      errors.add(:lent_at, "can't be greater or equal to returned_at")
    end
  end

  def returned_at_cannot_be_greater_than_six_months_after_lent_at
    return if lent_at.blank? || returned_at.blank?

    if returned_at > lent_at + 6.months
      errors.add(:returned_at, "can't be greater than 6 months after lent_at")
    end
  end

  def user_cannot_have_more_than_two_books_without_returning
    return if returned_at.present?

    if user.lends.where(returned_at: nil).count >= 2
      errors.add(:user_id, "can't have more than 2 books without returning")
    end
  end
end
