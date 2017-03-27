# frozen_string_literal: true
class CommentsController < ProtectedController
  before_action :set_comment, only: [:show, :update, :destroy]

  # GET /comments
  def index
    @comments = current_user.comments.all

    render json: @comments
  end

  # GET /comments/1
  def show
    @comment = Comment.find(params[:id])
    render json: @comment
  end

  # POST /comments
  def create
    @comment = current_user.comments.build(comment_params)

    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      head :no_content
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = current_user.comments.find(params[:id])
  end

  private :set_comment

  # Only allow a trusted parameter "white list" through.
  def comment_params
    params.require(:comment).permit(:therapy_id, :title, :content)
  end
  private :comment_params
end
