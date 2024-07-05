# == Schema Information
#
# Table name: users
#
#  id             :bigint           not null, primary key
#  name           :string(255)
#  email          :string(255)
#  campaigns_list :json
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
