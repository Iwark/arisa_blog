# == Schema Information
#
# Table name: sad_posts
#
#  id         :integer          not null, primary key
#  good       :text
#  wanted     :text
#  whatsup    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#
# Indexes
#
#  index_sad_posts_on_post_id  (post_id)
#

class SadPost < ApplicationRecord
  belongs_to :post
end
