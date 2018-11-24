class MypageController < ApplicationController
  def index(n = "0")
    @n = n.to_i
    @post = Post.find_or_initialize_by(day: Date.today - @n)
    if !@post.id
      @post.build_happy_post
      @post.build_sad_post
      @post.build_angry_post
    end
  end
end
