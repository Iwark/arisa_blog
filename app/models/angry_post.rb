# == Schema Information
#
# Table name: angry_posts
#
#  id         :integer          not null, primary key
#  how        :text
#  whom       :text
#  why        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#
# Indexes
#
#  index_angry_posts_on_post_id  (post_id)
#

class AngryPost < ApplicationRecord
  belongs_to :post
end
