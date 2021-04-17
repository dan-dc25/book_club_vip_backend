class Api::V1::NotesController < ApplicationController
    
  def create
      note = Note.create(content: params[:content], user_id: params[:user_id], book_id: params[:book_id])
      if note.save
          note.format_date = note.created_at.strftime("%A, %d %b %Y")
          note.save
          render json: note
      else
          render json: {error: "Error creating note."}
      end
  end

  def destroy
      note_id = params[:id]
      note = Note.find(params[:id])
      note.destroy
      render json: {id: note_id.to_i}        
  end
  
end