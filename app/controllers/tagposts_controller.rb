class TagpostsController < ApplicationController
  before_filter :get_post

  def get_post
    @post = Post.find(params[:post_id])
  end
  def create
    a = params
    logger.debug "Hello #{a}"
    @tagpost = @post.tagPosts.new(tagpost_params)
    respond_to do |format|
      if @tagpost.save
        format.json { render json: @tagpost.tag, status: 200  }
      else
        format.json { render json: @tagpost.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def tagpost_params
    params.require(:tagpost).permit(:post_id, :tag_id)
  end

end
