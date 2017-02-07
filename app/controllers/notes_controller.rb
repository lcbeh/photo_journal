class NotesController < ApplicationController
  def new
  end

  def index
    @notes = Note.all
  end

  def create
    @note = Note.new(note_params)
    @note.save
    redirect_to @note
  end

  def show
    @note = Note.find(params[:id])
  end

  private

  def note_params
    params.require(:note).permit(:title, :description, :image)
  end
end
