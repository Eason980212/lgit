class CommentsController < ApplicationController
  http_basic_authenticate_with name: "ddhz100", password: "a88170914", only: :destroy
	def new
		
	end
	def create
    	@article = Article.find(params[:article_id])
    	@comment = @article.comments.create(comment_params)
    	redirect_to article_path(@article)
  	end
    def destroy
      @article = Article.find(params[:article_id])
      @comment = @article.comments.find(params[:id])
      @comment.destroy
      flash[:notice] = "You have successfully logged out."
      redirect_to article_path(@article)
    end
 
  private
    def comment_params
     	params.require(:comment).permit(:commenter, :body)
    end
end
