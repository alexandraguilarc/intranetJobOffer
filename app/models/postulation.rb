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
class Postulation < ApplicationRecord
  belongs_to :user
  belongs_to :joboffer
end
