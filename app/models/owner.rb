# == Schema Information
#
# Table name: owners
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  ownable_type :string(255)
#  ownable_id   :integer
#

class Owner < ActiveRecord::Base
  belongs_to :ownable, polymorphic: true
end
