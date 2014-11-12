# == Schema Information
#
# Table name: buildings
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Building < ActiveRecord::Base
  has_many :owners, as: :ownable
end
