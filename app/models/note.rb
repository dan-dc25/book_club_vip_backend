class Note < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :content, length: { minimum: 2 }
end
