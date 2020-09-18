class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  
  validate :user_id, presence: true
  validate :topic_id, presence: true
  validate :content, presence: true
end