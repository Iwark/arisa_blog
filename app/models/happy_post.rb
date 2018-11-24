# == Schema Information
#
# Table name: happy_posts
#
#  id         :integer          not null, primary key
#  can        :text
#  play       :text
#  want       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#
# Indexes
#
#  index_happy_posts_on_post_id  (post_id)
#

class HappyPost < ApplicationRecord
  belongs_to :post
end
