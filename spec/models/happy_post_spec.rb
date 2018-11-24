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

require 'rails_helper'

RSpec.describe HappyPost, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
