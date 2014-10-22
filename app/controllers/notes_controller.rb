class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
  end

  def destroy
  end
end