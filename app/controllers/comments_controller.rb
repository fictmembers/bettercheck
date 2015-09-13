class CommentsController < ApplicationController
  def new	
  	@comment = Comment.new()
  end

  def create
  	@comment = Comment.new(params_req)
    @comment.user = current_user.name

    if session[:place] != nil
      @comment.place_id = session[:place]

    end

  	if @comment.save
  		flash[:success] = "Comment saved!"
  		redirect_to Place.find(session[:place])
      session.delete(:place)
  	else
  		render 'new'
  	end
  end

  private def params_req
  	params.require(:comment).permit(:place_id, :score, :comment)
  end
end
