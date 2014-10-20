# == Schema Information
#
# Table name: users
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  email        :string(255)
#  phone_number :string(255)
#  age          :integer
#

class User < ActiveRecord::Base
end
