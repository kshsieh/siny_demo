# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  email                 :string(255)
#  phone_number          :string(255)
#  age                   :integer
#  gender                :string(255)
#  password              :text
#  password_confirmation :text
#

class User < ActiveRecord::Base
  has_many :notes
  has_many :likes
  has_many :liked_posts, through: :likes, source: :post

  def like!(post)
    likes.create(post_id: post.id) 
  end
end
