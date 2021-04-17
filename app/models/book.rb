class Book < ApplicationRecord
    has_many :notes
    has_many :user_books
    has_many :users, through: :user_books

    validates :title, presence: true
    validates :authors, presence: true
    validates :img, presence: true
    validates :description, presence: true
end
