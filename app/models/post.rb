# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  day        :date
#  image      :string
#  open       :boolean
#  post_type  :string
#  weather    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  has_one :angry_post
  accepts_nested_attributes_for :angry_post

  has_one :happy_post
  accepts_nested_attributes_for :happy_post

  has_one :sad_post
  accepts_nested_attributes_for :sad_post

  def weather_image_url
    case weather
    when "晴れ"
      "http://nijimasuya.com/wp-content/uploads/2016/05/%E6%99%B4%E3%82%8C%EF%BC%93.jpg"
    when "雨"
      "https://tk-camp.com/wp-content/uploads/2017/10/rainy-300x300.png"
    else
      "https://tk-camp.com/wp-content/uploads/2017/10/rainy-300x300.png"
    end
  end
end
