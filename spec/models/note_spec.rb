# == Schema Information
#
# Table name: notes
#
#  id      :integer          not null, primary key
#  user_id :integer
#  text    :text
#  title   :string(255)
#

require 'rails_helper'

describe Note, type: :model do
  it "belongs to User"

  it "has text"
end
