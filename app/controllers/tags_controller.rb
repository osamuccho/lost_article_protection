class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end


  def new
    @tag = Tag.new
  end

  def create
    Tag.create!(tag_params)
  end


  

private
  def tag_params
    params.require(:tag).permit(:tag_name, :event_id).merge(event_id: params[:event_id])
  end


end