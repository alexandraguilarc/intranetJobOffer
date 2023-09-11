# == Schema Information
#
# Table name: images
#
#  id             :bigint           not null, primary key
#  url            :text
#  context        :string
#  imageable_type :string
#  imageable_id   :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
