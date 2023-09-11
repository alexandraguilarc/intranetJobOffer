# == Schema Information
#
# Table name: postulations
#
#  id          :bigint           not null, primary key
#  user_id     :bigint
#  joboffer_id :bigint
#  message     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class PostulationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
