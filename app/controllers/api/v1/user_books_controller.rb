class Api::V1::UserBooksController < ApplicationController

    def create
        ub = UserBook.new(user_id: params[:user_id], book_id: params[:book_id])
        if ub.save
            book = Book.find(params[:book_id])
            render json: book
        else
            reder json: {error: "Error adding book to user's collection."}
        end
    end

end