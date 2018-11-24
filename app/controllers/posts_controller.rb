class PostsController < ApplicationController
  permits :post_type, :weather, :day, :image, :open,
    happy_post_attributes: [:play, :can, :want],
    sad_post_attributes: [:whatsup, :wanted, :good],
    angry_post_attributes: [:how, :whom, :why]

  def create(post)
    p = Post.new(post)
    p.sad_post = nil unless p.post_type == "sad"
    p.happy_post = nil unless p.post_type == "happy"
    p.angry_post = nil unless p.post_type == "angry"
    p.save
    redirect_to :root
  end
end
