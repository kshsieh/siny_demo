# == Schema Information
#
# Table name: offices
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Office < ActiveRecord::Base
  has_many :owners, as: :ownable
end
