class Admin::Page < ActiveRecord::Base
  belongs_to :agency
  belongs_to :template

  scope :by_permalink, lambda { |permalink, agency_id| where(:permalink => permalink, :agency_id => agency_id) }
  scope :by_agency, lambda { |agency_id| where(:agency_id => agency_id) }
  
  liquid_methods :title, :content 
  
end
