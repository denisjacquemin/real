class Admin::Template < ActiveRecord::Base
  
  has_many :pages
  
  attr_accessible :agency_id, :content, :title
  
  scope :by_agency, lambda { |agency_id| where(:agency_id => agency_id) }
end
