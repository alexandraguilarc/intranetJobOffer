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
class Joboffer < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many :positions
end
