class Result < ApplicationRecord
  validates :wpm, presence: true, length: { maximum: 4 }

  belongs_to :user
  
  default_scope -> { order(created_at: :desc) }
end
