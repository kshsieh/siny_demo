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

require 'rails_helper'

describe User, type: :model do
  it "has many notes"
end
