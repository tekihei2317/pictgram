class Topic < ApplicationRecord
  belongs_to :user
  has_many :favorites

  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end