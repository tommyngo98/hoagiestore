class CommentsController < ApplicationController
	 http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy


	def create
    @hoagie = Hoagie.find(params[:hoagy_id])
    @comment = @hoagie.comments.create(comment_params)
    redirect_to hoagies_path(@hoagie)
  end
 
  def destroy
    @hoagie = Hoagie.find(params[:hoagy_id])
    @comment = @hoagie.comments.find(params[:id])
    @comment.destroy
    redirect_to hoagies_path(@hoagie)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
