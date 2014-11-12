# == Schema Information
#
# Table name: restaurants
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Restaurant < ActiveRecord::Base
  has_many :owners, as: :ownable
end
