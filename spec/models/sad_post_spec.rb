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

require 'rails_helper'

RSpec.describe SadPost, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
