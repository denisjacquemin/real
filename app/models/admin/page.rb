class Admin::Page < ActiveRecord::Base
  belongs_to :agency

  scope :by_permalink, lambda { |permalink, agency_id| where(:permalink => permalink, :agency_id => agency_id) }
end