 class User < ApplicationRecord

  ROLES = %w(user admin system)

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_attached_file :avatar, default_url: 'missing-avatar.png'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates :name, presence: true, length: { in: 3..15 }, uniqueness: true
  validates :role, presence: true, inclusion: { in: ROLES }
  scope :confirmed, -> { where.not(confirmed_at: nil) }

  def after_confirmation
    self.update(role: 'admin') if User.confirmed.size == 1
  end
end
