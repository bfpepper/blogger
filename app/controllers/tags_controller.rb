class TagsController < ApplicationController

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Tagag.find(params[:id])
    @tag.destroy
    flash.notice = "tag '#{@tag.title}' Deleted!"
    redirect_to tags_path
  end
end
