# == Schema Information
#
# Table name: notes
#
#  id      :integer          not null, primary key
#  user_id :integer
#  text    :text
#  title   :string(255)
#

class Note < ActiveRecord::Base
  belongs_to :user
end
