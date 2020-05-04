class User < ApplicationRecord
  extend Enumerize

  HOLIDAY_TYPE_PAID_HOLIDAY = 'holiday_type_paid_holiday'.freeze
  HOLIDAY_TYPE_PAID_HALF_HOLIDAY = 'holiday_type_paid_half_holiday'.freeze

  # enumerize :holiday, in: [HOLIDAY_TYPE_PAID_HOLIDAY, HOLIDAY_TYPE_PAID_HALF_HOLIDAY]


  validate :validate_user

  private
    def validate_user
      if self.name.present?
        if self.email.blank?
          errors.add(:email, 'なんでやねん！！！')
        end
      end
    end
end
