# == Schema Information
#
# Table name: joboffers
#
#  id          :bigint           not null, primary key
#  position    :string
#  description :string
#  departament :string
#  when_went   :datetime
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class JobofferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
