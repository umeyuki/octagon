class User < ApplicationRecord
  validates :first_name, presence: true, length: { in: 1..32 }
  validates :last_name, presence: true, length: { in: 1..32 }
  validates :nick_name, presence: true, length: { in: 1..32 }
  validates :octagon_id, presence: true, uniqueness: true, length: { is: 8 }
  has_many :user_total_records
  has_many :user_monthly_records
  has_many :user_scores
  has_many :user_advantage_points

  def generate_id
    SecureRandom.urlsafe_base64(6)
  end

end
