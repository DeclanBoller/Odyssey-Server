# == Schema Information
#
# Table name: trips
#
#  id          :bigint(8)        not null, primary key
#  origin      :string
#  string      :string
#  destination :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Trip < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :stops
end
