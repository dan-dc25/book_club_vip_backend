class User < ApplicationRecord
    has_many :user_books
    has_many :books, through: :user_books
    has_many :notes

    validates :username, uniqueness: true

    @@current_user_id = nil

    def self.set_current_user(id)
        @@current_user_id = id
    end

    def self.current_user
        if @@current_user_id != nil
            self.all.find(@@current_user_id)
        else
            return "Error"
        end
    end
end
