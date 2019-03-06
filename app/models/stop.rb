# == Schema Information
#
# Table name: stops
#
#  id         :bigint(8)        not null, primary key
#  location   :string
#  stop_info  :string
#  trip_id    :integer
#  longitude  :integer
#  latitude   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stop < ApplicationRecord
  serialize :stop_info, Array
  belongs_to :trip, :optional => true

  geocoded_by :location
  after_validation :geocode
end
